require 'pg'
namespace :export do

    desc "export to postgresql"
    task transfer: :environment do

        connection = PG::Connection.open(host: "localhost", port: 5432, dbname: "postgres", user: "dbpostgresql", password: "123456789")
        puts "#{connection}: Connection established"

        connection.exec("TRUNCATE factquotes RESTART IDENTITY")

        connection.prepare('to_fact_quotes', "INSERT INTO \"factquotes\" (quote_id, created_at, business_name, email, cabs_needed) VALUES ($1,$2,$3,$4,$5)")
        Quote.all.each do |quote|
            connection.exec_prepared('to_fact_quotes', [quote.id, quote.created_at, quote.business, quote.email, quote.nb_cages])
        end

        connection.exec("TRUNCATE factcontact RESTART IDENTITY")

        connection.prepare('to_fact_contact', "INSERT INTO \"factcontact\" (contact_id, created_date, business_name, contact_email, project_name) VALUES ($1,$2,$3,$4,$5)")
        Lead.all.each do |lead|
            connection.exec_prepared('to_fact_contact', [lead.id, lead.created_at, lead.business, lead.email, lead.project_name])
        end

        connection.exec("TRUNCATE factelevator RESTART IDENTITY")

        connection.prepare('to_fact_elevators', "INSERT INTO \"factelevator\" (serial_number, created_date, building_id, customer_id, city) VALUES ($1,$2,$3,$4,$5)")
        Elevator.all.each do |elevator|
            a = elevator.serial_number
            b = elevator.start_date
            c = elevator.column.battery.building.id
            d = elevator.column.battery.building.customer.id
            e = elevator.column.battery.building.address.city
            connection.exec_prepared('to_fact_elevators', [a,b,c,d,e])
        end

        connection.exec("TRUNCATE dimcustomers RESTART IDENTITY")

        connection.prepare('to_dimcustomers', "INSERT INTO \"dimcustomers\" (created, business_name, contact_name, contact_email, elev_count, city) VALUES($1,$2,$3,$4,$5,$6)")
        Customer.all.each do |customer|
            nb_elevators = 0
            customer.buildings.all.each do |building|
                building.batteries.all.each do |battery|
                    battery.columns.all.each do |column|
                      nb_elevators += column.elevators.count
                           
                    end
                end
            end
            connection.exec_prepared('to_dimcustomers', [customer.created_at, customer.business, customer.contact_full_name, customer.contact_email, nb_elevators, customer.address.city])
        end
    end
end