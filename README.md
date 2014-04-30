# generator-simpleapp [![Build Status](https://secure.travis-ci.org/alchapone/generator-simpleapp.png?branch=master)](https://travis-ci.org/alchapone/generator-simpleapp)


## Features
* CSS Autoprefixing
* Built-in preview server with LiveReload
* Automatically compile CoffeeScript & Sass
* Deploy site to gh-pages

## Getting Started

Make sure you have yo installed: ```npm install -g yo```

Install the generator: ```npm install -g generator-simpleapp```

Run: ```yo simpleapp```

## Usage

```grunt build``` Builds all content of ```app/``` directory into ```dist/```. Compiles coffee and sass files,
concatenates all scripts and stylesheets including third-party dependencies that are managed via ```bower```.
This will create single ```application.js``` and ```application.css``` files with all scripts and styles defined in
```head``` section of index.html file:

    <!-- build:css stylesheets/application.css -->
      <link rel="stylesheet" href="stylesheets/application.css">
    <!-- endbuild -->

    <!-- build:js javascripts/application.js -->
      <script type="text/javascript" src="bower_components/jquery/jquery.js"></script>
      <script type="text/javascript" src="javascripts/application.js"></script>
    <!-- endbuild -->

```grunt serve``` Runs local web-server on ```9000``` port, compiles all changes in coffee and sass files on the fly
and makes development process easy by running livereload automatically in the browser on file save. Also includes
css autoprefixer which automatically handles vendor prefixes.

```grunt deploy``` Runs build task and pushes built files into ```gh-pages``` branch on GitHub.

By default, if you're just calling ```grunt``` grunt runs ```serve``` task.

### Getting To Know Yeoman

Yeoman has a heart of gold. He's a person with feelings and opinions, but he's very easy to work with. If you think he's too opinionated, he can be easily convinced.

If you'd like to get to know Yeoman better and meet some of his friends, [Grunt](http://gruntjs.com) and [Bower](http://bower.io), check out the complete [Getting Started Guide](https://github.com/yeoman/yeoman/wiki/Getting-Started).


## License

MIT
