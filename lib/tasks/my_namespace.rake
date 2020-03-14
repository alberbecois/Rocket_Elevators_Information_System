namespace :my_namespace do
  desc 'Send out batch messages'
  task send_messages: :environment do
    rake export:transfer
  end
end


