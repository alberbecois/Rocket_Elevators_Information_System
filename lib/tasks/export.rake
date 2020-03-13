require 'pg'
namespace :export do

    desc "export to postgresql"
    task transfer: :environment do

        connection = PG::Connection.open(host: "localhost", port: 5432, dbname: "postgres", user: "dbpostgresql", password: "123456789")
        puts "#{connection}: Connection established"

        connection.exec("TRUNCATE fact_elevators RESTART IDENTITY")

        connection.prepare('to_fact_elevators', "INSERT INTO \"fact_elevators\" (Serial_Number, Comissioning_Date, Building_Id, Customer_Id, Building_City) VALUES ($1,$2,$3,$4,$5)")
        Elevator.all.each do |elevator|
            a = elevator.serial_number
            b = elevator.start_date
            c = elevator.column.battery.building.id
            d = elevator.column.battery.building.customer.id
            e = elevator.column.battery.building.address.city
            connection.exec_prepared('to_fact_elevators', [a,b,c,d,e])
        end

        connection.exec("TRUNCATE dimcustomers RESTART IDENTITY")

        connection.prepare('to_dimcustomers', "INSERT INTO \"dimcustomers\" (Creation_Date, Company_Name, Full_Name_Contact, Email, Nb_elevator, Customer_City) VALUES($1,$2,$3,$4,$5,$6)")
        Customer.all.each do |customer|
            nb_elevators = 0
            customer.buildings.all.each do |building|
               
                building.batteries.all.each do |battery|
                    
                    battery.columns.all.each do |column|
                      
                      nb_elevators += column.elevators.count
                           
                    end
                end
            end
            connection.exec_prepared('to_dimcustomers', [customer.created_at, customer.business, customer.contact_full_name, customer.email, nb_elevators, customer.address.city])
        end
    end
end