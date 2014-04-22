'use strict';
var util = require('util');
var path = require('path');
var yeoman = require('yeoman-generator');
var chalk = require('chalk');


var SimpleappGenerator = yeoman.generators.Base.extend({
  init: function () {
    this.pkg = require('../package.json');

    this.on('end', function () {
      if (!this.options['skip-install']) {
        this.installDependencies();
      }
    });
  },

  askFor: function () {
    var done = this.async();

    // have Yeoman greet the user
    this.log(this.yeoman);

    // replace it with a short and sweet description of your generator
    this.log(chalk.magenta('You\'re using the fantastic Simpleapp generator.'));

    var prompts = [{
      name: 'appName',
      message: 'What do you wand to call your app?',
    }];

    this.prompt(prompts, function (props) {
      this.appName = props.appName;

      done();
    }.bind(this));
  },

  app: function () {
    this.mkdir('app');
    this.mkdir('app/assets/images');
    this.mkdir('app/assets/stylesheets');
    this.mkdir('app/assets/javascripts');

    this.write('app/assets/javascripts/application.coffee', '# Main CoffeeScript File');
    this.write('app/assets/stylesheets/application.sass', '// Use @import to link all components');

    this.template('Gruntfile.coffee', 'Gruntfile.coffee');
    this.directory('grunt', 'grunt');
    this.template('index.html', 'app/index.html');

    this.template('_package.json', 'package.json');
    this.template('_bower.json', 'bower.json');
  },

  runtime: function () {
    this.copy('bowerrc', '.bowerrc');
    this.copy('gitignore', '.gitignore');
  },

  projectfiles: function () {
    this.copy('editorconfig', '.editorconfig');
    this.copy('jshintrc', '.jshintrc');
  }
});

module.exports = SimpleappGenerator;
