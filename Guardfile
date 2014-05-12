# A sample Guardfile
# More info at https://github.com/guard/guard#readme

# watch for gemfile changes and install them via bundler
guard 'bundler' do
  watch('Gemfile')
end

group :assets do
  guard "slim", input: "app/assets/templates/", output: "public/templates/" do
    watch(%r{^app/.+(\.slim)$})
  end

  guard :compass, configuration_file: 'compass.rb', project_path: 'app/assets', compile_on_start: true

  guard 'coffeescript', input: 'app/assets/scripts', output: 'public/scripts'

  guard 'livereload' do
    watch(%r{public/.+\.(css|js|html)})
  end

  guard :bower do
    watch('bower.json')
  end

  guard :shell do
    # move new images to root
    watch(%r{app/assets/images/.*}) do |m|
      `cp -r app/assets/images public/`
    end

    # move new fonts to root
    watch(%r{app/assets/fonts/.*}) do |m|
      `cp -r app/assets/fonts public/`
    end

    # move index template to root from templates
    watch(%r{public/templates/index.html}) do |m|
      `mv public/templates/index.html public/index.html`
    end
  end
end



guard 'shell' do
  callback(:start_begin) do
    `open http://localhost:9090`
  end
end
