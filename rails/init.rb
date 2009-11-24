# Include hook code here
#require 'employee'
ActionController::Base.send(:include, Employee)

%w{ models controllers helpers }.each do |dir|
  path = File.join(File.dirname(__FILE__), 'app', dir)
  $LOAD_PATH << path
  ActiveSupport::Dependencies.load_paths << path
  ActiveSupport::Dependencies.load_once_paths.delete(path)
end

ActionController::Base.append_view_path(File.join(directory, "lib/app", "views"))
