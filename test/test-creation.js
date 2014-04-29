/*global describe, beforeEach, it */
'use strict';
var path = require('path');
var helpers = require('yeoman-generator').test;

describe('simpleapp generator', function () {
  beforeEach(function (done) {
    helpers.testDirectory(path.join(__dirname, 'temp'), function (err) {
      if (err) {
        return done(err);
      }

      this.app = helpers.createGenerator('simpleapp:app', [
        '../../app'
      ]);
      done();
    }.bind(this));
  });

  it('creates expected files', function (done) {
    var expected = [
      // add files you expect to exist here.
      '.bowerrc',
      '.jshintrc',
      '.editorconfig',
      '.gitignore',
      'bower.json',
      'package.json',
      'Gruntfile.coffee',
      'app/index.html',
      'app/javascripts/application.coffee',
      'app/stylesheets/application.sass',
      'grunt/aliases.yml',
      'grunt/autoprefixer.coffee',
      'grunt/clean.coffee',
      'grunt/coffee.coffee',
      'grunt/connect.coffee',
      'grunt/copy.coffee',
      'grunt/gh-pages.coffee',
      'grunt/sass.coffee',
      'grunt/usemin.coffee',
      'grunt/useminPrepare.coffee',
      'grunt/watch.coffee'
    ];

    helpers.mockPrompt(this.app, {
      'appName': true
    });
    this.app.options['skip-install'] = true;
    this.app.run({}, function () {
      helpers.assertFile(expected);
      done();
    });
  });
});
