module.exports = (grunt) =>

  require('load-grunt-config')(grunt)

  grunt.registerTask 'compile', ['sass:dist','coffee:dist']
