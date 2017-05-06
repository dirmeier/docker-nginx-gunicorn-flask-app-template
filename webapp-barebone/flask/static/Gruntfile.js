module.exports = function (grunt) {
    grunt.initConfig({
        pkg: grunt.file.readJSON("package.json"),
        concat: {
            options: {
                separator: ";"
            },
            dist: {
                src: ["js/init.js"],
                dest: "dist/init.js"
            }
        },
        uglify: {
            options: {
                banner: "/*! <%= pkg.name %> <%= grunt.template.today(\"yyyy-mm-dd\") %> */\n"
            },
            build: {
                src: "dist/init.js",
                dest: "dist/init.min.js"
            }
        },
        jshint: {
            all: ["js/*.js"],
            options: JSON.parse(require("fs").readFileSync("./.jshintrc"))
        }
    });
    grunt.loadNpmTasks("grunt-contrib-concat");
    grunt.loadNpmTasks("grunt-contrib-jshint");
    grunt.loadNpmTasks("grunt-contrib-uglify");
    grunt.registerTask("default", ["concat", "uglify"]);
    grunt.registerTask("travis", ["jshint"]);
};
