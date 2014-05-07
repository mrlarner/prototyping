Prototypical prototyping
===========

Minimal toolchain for prototyping ux with slim, compass, coffeescript, and angular

## Requirements

* ruby 2.1.1 (use rbenv https://github.com/sstephenson/rbenv)
* bundler (```gem install bundler``` when rbenv is setup
* bower (```npm install -g bower``` will require nodejs ```brew install nodejs```)

## Get started

To scaffold this repo and get to it

```$ curl http://protogo.qand.co/$project_name | sh```

For example, if you want to call your project ```super-duck-breaks```

```$ curl http://protogo.qand.co/super-duck-breaks | sh```

Once the command completes, ```$ cd super-duck-breaks```, and add a git remote if one exists. Otherwise, open in your favorite editor and get hacking.

## File organization

Root index file is located in public/index.html. This isn't controlled with slim, and is meant to be a simple container for your angular project.

Assets are located in `app/assets/{scripts,stylesheets,templates}` and compile to the same directories within `public/{scripts,stylesheets,templates}`

## Scripts

Scripts are written in coffeescript and the project assumes Angular.

## Styles

Styles are written in in sass/compass. Add sass plugins to `Gemfile`. Config is located in `compass.rb`.

## Templates

Templates are written in slim.
