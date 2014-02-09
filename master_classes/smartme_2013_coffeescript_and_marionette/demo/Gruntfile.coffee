# Generated on 2014-02-08 using generator-marionette-express 0.1.2
"use strict"
module.exports = (grunt) ->
  require("time-grunt") grunt
  require("load-grunt-tasks") grunt
  grunt.initConfig
    config:
      app: "client"
      server: "server"
      dist: "dist"

    watch:
      coffee:
        files: ["<%= config.app %>/scripts/**/*.{coffee,litcoffee,coffee.md}"]
        tasks: ["coffee:dist"]

      coffeeServer:
        files: ["<%= config.server %>/**/*.{coffee,litcoffee,coffee.md}"]
        tasks: ["coffee:server"]

      coffeeTest:
        files: ["test/spec/**/*.{coffee,litcoffee,coffee.md}"]
        tasks: ["coffee:test"]

      compass:
        files: ["<%= config.app %>/styles/**/*.{scss,sass}"]
        tasks: [
          "compass:server"
          "autoprefixer"
        ]

      styles:
        files: ["<%= config.app %>/styles/**/*.css"]
        tasks: [
          "copy:styles"
          "autoprefixer"
        ]

      livereload:
        options:
          livereload: true

        files: [
          "<%= config.app %>/*.html"
          ".tmp/styles/{,*/}*.css"
          "{.tmp,<%= config.app %>}/scripts/{,*/}*.js"
          "<%= config.app %>/images/{,*/}*.{gif,jpeg,jpg,png,svg,webp}"
        ]

      express:
        options:
          nospawn: true

        files: ["<%= config.server %>/app.js"]
        tasks: ["express:server"]

      jst:
        files: ["<%= config.app %>/scripts/templates/**/*.ejs"]
        tasks: ["jst"]

      handlebars:
        files: ["<%= config.app %>/scripts/templates/**/*.hbs"]
        tasks: ["handlebars"]

    connect:
      options:
        port: 3000
        hostname: "localhost"
      test:
        options:
          base: [
            ".tmp"
            "test"
            "<%= config.app %>"
          ]

    express:
      options:
        port: 3000

      dist:
        options:
          script: "<%= config.dist %>/<%= config.server %>/app.js"

      server:
        options:
          script: "<%= config.server %>/app.js"

    jst:
      options:
        amd: true

      compile:
        files:
          ".tmp/scripts/templates-jst.js": ["<%= config.app %>/scripts/templates/{,*/}*.ejs"]

    handlebars:
      options:
        amd: true
        handlebarsModule: 'handlebars.runtime'
        processName: (filename) ->
          filename.replace(/^client\/scripts\/templates\//, "").replace(/\.hbs$/, "")

      compile:
        files:
          ".tmp/scripts/templates-hbs.js": ["<%= config.app %>/scripts/templates/{,*/}*.hbs"]

    clean:
      dist:
        files: [
          dot: true
          src: [
            ".tmp"
            "<%= config.dist %>/*"
            "!<%= config.dist %>/.git*"
          ]
        ]

      server: ".tmp"

    jshint:
      options:
        jshintrc: ".jshintrc"
        reporter: require("jshint-stylish")

      all: [
        "Gruntfile.js"
        "<% config.app %>/scripts/{,*/}*.js"
        "!<%= config.app %>/scripts/vendor/*"
      ]

    mocha:
      all:
        options:
          run: true
          urls: ["http://<%= connect.test.options.hostname %>:<%= connect.test.options.port %>/index.html"]

    coffee:
      dist:
        files: [
          expand: true
          cwd: "<%= config.app %>/scripts"
          src: "**/*.{coffee,litcoffee,coffee.md}"
          dest: ".tmp/scripts"
          ext: ".js"
        ]

      server:
        files: [
          expand: true
          cwd: "<%= config.server %>"
          src: "**/*.{coffee,litcoffee,coffee.md}"
          dest: "<%= config.server %>"
          ext: ".js"
        ]

      test:
        files: [
          expand: true
          cwd: "test/spec"
          src: "**/*.{coffee,litcoffee,coffee.md}"
          dest: ".tmp/spec"
          ext: ".js"
        ]

    compass:
      options:
        sassDir: "<%= config.app %>/styles"
        cssDir: ".tmp/styles"
        generatedImagesDir: ".tmp/images/generated"
        imagesDir: "<%= config.app %>/images"
        javascriptsDir: "<%= config.app %>/scripts"
        fontsDir: "<%= config.app %>/fonts"
        importPath: "<%= config.app %>/components"
        httpImagesPath: "/images"
        httpGeneratedImagesPath: "/images/generated"
        httpFontsPath: "/fonts"
        relativeAssets: false
        assetCacheBuster: false

      dist:
        options:
          generatedImagesDir: "<%= config.dist %>/<%= config.app %>/images/generated"

      server:
        options:
          debugInfo: true

    autoprefixer:
      options:
        browsers: ["last 1 version"]

      dist:
        files: [
          expand: true
          cwd: ".tmp/styles/"
          src: "{,*/}*.css"
          dest: ".tmp/styles/"
        ]

    requirejs:
      dist:
        options:
          preserveLicenseComments: false
          useStrict: true
          wrap: true

          almond: true
          replaceRequireScript: [{
            files: ['<%= config.dist %>/<%= config.app %>/index.html']
            module: 'main'
            modulePath: '/scripts/main-build'
          }]
          include: ['main']
          insertRequire: ['main']
          baseUrl: ".tmp/scripts"
          mainConfigFile: ".tmp/scripts/main.js"
          out: "<%= config.dist %>/<%= config.app %>/scripts/main-build.js"
          optimize: "uglify"

    rev:
      dist:
        files:
          src: [
            "<%= config.dist %>/<%= config.app %>/scripts/{,*/}*.js"
            "<%= config.dist %>/<%= config.app %>/styles/{,*/}*.css"
            "<%= config.dist %>/<%= config.app %>/images/{,*/}*.{gif,jpeg,jpg,png,webp}"
            "<%= config.dist %>/<%= config.app %>/fonts/{,*/}*.*"
          ]

    useminPrepare:
      options:
        dest: "<%= config.dist %>/<%= config.app %>"

      html: "<%= config.app %>/index.html"

    usemin:
      options:
        assetsDirs: ["<%= config.dist %>/<%= config.app %>"]

      html: ["<%= config.dist %>/<%= config.app %>/{,*/}*.html"]
      css: ["<%= config.dist %>/<%= config.app %>/styles/{,*/}*.css"]

    imagemin:
      dist:
        files: [
          expand: true
          cwd: "<%= config.app %>/images"
          src: "{,*/}*.{gif,jpeg,jpg,png}"
          dest: "<%= config.dist %>/<%= config.app %>/images"
        ]

    svgmin:
      dist:
        files: [
          expand: true
          cwd: "<%= config.app %>/images"
          src: "{,*/}*.svg"
          dest: "<%= config.dist %>/<%= config.app %>/images"
        ]

    htmlmin:
      dist:
        files: [
          expand: true
          cwd: "<%= config.app %>"
          src: "*.html"
          dest: "<%= config.dist %>/<%= config.app %>"
        ]

    copy:
      tmp:
        files: [
          expand: true
          dot: true
          cwd: "<%= config.app %>"
          dest: ".tmp"
          src: ["scripts/{,*/}*.js"]
        ]

      dist:
        files: [
          {
            expand: true
            dot: true
            cwd: "<%= config.app %>"
            dest: "<%= config.dist %>/<%= config.app %>"
            src: [
              "*.{ico,png,txt}"
              "images/{,*/}*.{webp,gif}"
              "fonts/{,*/}*.*"
              "components/sass-bootstrap/fonts/*.*"
            ]
          }
          {
            expand: true
            cwd: "<%= config.server %>"
            dest: "<%= config.dist %>/<%= config.server %>"
            src: ["app.js"]
          }
        ]

      styles:
        expand: true
        dot: true
        cwd: "<%= config.app %>/styles"
        dest: ".tmp/styles/"
        src: "{,*/}*.css"

    symlink:
      tmp:
        expand: true
        cwd: "<%= config.app %>/components"
        dest: ".tmp/components"
        src: ["*"]
        filter: "isDirectory"

    modernizr:
      dist:
        devFile: "<%= config.app %>/components/modernizr/modernizr.js"
        outputFile: "<%= config.dist %>/<%= config.app %>/components/modernizr/modernizr.js"
        files:
          src: [
            "<%= config.dist %>/<%= config.app %>/scripts/{,*/}*.js"
            "<%= config.dist %>/<%= config.app %>/styles/{,*/}*.css"
            "!<%= config.dist %>/<%= config.app %>/scripts/vendor/*"
          ]
        uglify: true

    concurrent:
      server: [
        "compass"
        "coffee:dist"
        "coffee:server"
        "copy:styles"
      ]
      test: [
        "coffee"
        "copy:styles"
      ]
      dist: [
        "coffee"
        "compass"
        "copy:styles"
        "imagemin"
        "svgmin"
        "htmlmin"
      ]

    bower:
      options:
        exclude: ["modernizr"]

      all:
        rjsConfig: "<%= config.app %>/.tmp/main.js"

  # tasks
  grunt.registerTask "serve", (target) ->
    if target is "dist"
      return grunt.task.run([
        "build"
        "express:dist"
        "watch"
      ])
    grunt.task.run [
      "clean:server"
      "jst"
      "handlebars"
      "concurrent:server"
      "autoprefixer"
      "express:server"
      "watch"
    ]

  grunt.registerTask "test", [
    "clean:server"
    "jst"
    "handlebars"
    "concurrent:test"
    "autoprefixer"
    "connect:test"
    "mocha"
  ]
  grunt.registerTask "build", [
    "clean:dist"
    "jst"
    "handlebars"
    "useminPrepare"
    "concurrent:dist"
    "autoprefixer"
    "copy:tmp"
    "symlink:tmp"
    "requirejs"
    "concat"
    "cssmin"
    "uglify"
    "modernizr"
    "copy:dist"
    "rev"
    "usemin"
  ]
  grunt.registerTask "default", [
    "jshint"
    "test"
    "build"
  ]