# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'bundler' do
  watch('Gemfile')
end

group :assets do
  guard 'slim', input_root: 'app/assets/templates', output_root: 'public/templates', slim: { pretty: true } do
    watch(%r'^.+\.slim$')
  end

  guard :compass, configuration_file: 'compass.rb'

  guard 'coffeescript', input: 'app/assets/scripts', output: 'public/scripts'

  guard 'livereload' do
    watch(%r{public/.+\.(css|js|html)})
  end

  guard :bower do
    watch('bower.json')
  end
end



guard 'shell' do
  callback(:start_begin) do
    `touch app/assets/scripts/main.coffee`
    `touch app/assets/stylesheets/main.sass`
    `touch app/templates/hello.slim`
    `open http://localhost:9090`
  end
end


