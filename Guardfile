# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'bundler' do
  watch('Gemfile')
end

# guard 'livereload' do
#   watch(%r{public/.+\.(css|js|html)})
# end

guard 'slim', input_root: 'app/assets/templates', output_root: 'public/templates', slim: { pretty: true } do
  watch(%r'^.+\.slim$')
end

# Guard::Compass
#
# You don't need to configure watchers for guard 'compass' declaration as they generated
# from your Compass configuration file. You might need to define the Compass working directory
# and point to the configuration file depending of your project structure.
#
# Available options:
#
# * working_directory: Define the Compass working directory, relative to the Guardfile directory
# * configuration_file: Path to the Compass configuration file, relative to :project_path
#
# Like usual, the Compass configuration path are relative to the :project_path

# guard 'compass', project_path: 'not_current_dir', configuration_file: 'path/to/my/compass_config.rb'
guard :compass, configuration_file: 'compass.rb'

guard 'coffeescript', input: 'app/assets/scripts', output: 'public/scripts'
