require './config/environment'

if ActiveRecord::Base.connection.migration_contest.needs_mirgration?
  raise "Migrations are pending. Run 'rake db:migrate' to resolve this issue."
end

run ApplicationController 
