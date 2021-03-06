class EmployeeMigrationGenerator < Rails::Generator::Base 
  def manifest
    record do |m|
      # m.directory "lib"
      # m.template 'README', "README"
      m.migration_template 'migration.rb', 'db/migrate' 
    end
  end

  def file_name
    "create_employee_management"
  end
end
