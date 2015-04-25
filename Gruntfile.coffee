module.exports = (grunt)->
  grunt.initConfig
    cucmberjs:
      Edith:
      files: src: ['test/behavior/users/edith']
         options:
           steps: 'test/behavior/steps'

   grunt.npmTasks = [ "grunt-cucumber" ]

   grunt.loadNpmTasks npmTask for npmTask in grunt.npmTasks

   grunt.registerTask "test", [ "cucumberjs:Edith" ]
   grunt.registerTask "default", ["test"]