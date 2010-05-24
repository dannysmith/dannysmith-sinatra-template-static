# Danny Smith Base Template

This is a simple base template for creating static sites using HAML/SASS and Sinatra. I got fed up with redoing a bunch of stuff each time I started a site so threw this together.

It's intended to be a step on from my [sinatra-template](http://github.com/dannysmith/dannysmith-sinatra-template), and a step down from [sinatra-template](http://github.com/zapnap/sinatra-template). It's designed for creating sites where each page is styled completely from scratch, much like the [Peepcode blog](http://blog.peepcode.com/archives).

## Features

There are a bunch of directories in the root:

* /features - contains [Cucumber](http://wiki.github.com/aslakhellesoy/cucumber/) Features & associated stuff.
* /planning - contains any notes and artwork etc.
* /public - contains files, images, fonts and javascripts directories. I'd hope these are self-explanatory.
* /script - contains a [console](http://barkingiguana.com/2009/01/25/scriptconsole-for-your-application/), handy to have.
* /views - contains _404.haml, layout.haml and any other pages for the site.
* /views/sass - Contains generic stylesheets below and a directory for each page.

## Generic Stylesheets

I like to abstract a lot of stuff from stylesheets and split them up. The generic ones are as follows:

* _colors.sass - Contains generic mixins for adjusting the base colours for each page.
* _fontfaces.sass - Contains any @font-face import stuff. I usually use typekit though.
* _layout.sass - Contains mixins from the [1kbgrid-sass](http://github.com/dannysmith/1kbgrid-sass)
* _reset.sass - Contains a stripped down HTML5 reset stylesheet.
* _styles.sass - Contains any generic visual mixins.
* _typography.sass - Contains generic mixins & classes, and sets up some type-related scales etc.

TODO: Rework `_typography.sass` to automate H1-H6 creation and allow a variable `$h1size` to define where to start on the scale.

## Per-page Stylesheets

For each page, for instance `aboutme.haml`, there is a folder names `aboutme` in the sass directory. This contains:

* _colors.sass - Code to set the page colour variables and add display-based Sass rules.
* _layout.sass - Code to set the page variables for the baseline & grid, and add layout styles.
* aboutme-styles.sass - This pulls together all of the stylesheets in the right order. You shouldn't modify this really.

## The Layout

The layout file sets up meta stuff, links to RSS feeds, imports stylesheets and javascripts and what-not.

The page-specific stylesheet is rendered as `PAGENAME/styles.css` and is the only stylesheet imported in production, to reduce HTTP requests.

There are conditional includes of the [HTML5 Shiv](http://code.google.com/p/html5shiv/), the [IE 6 Universal Stylesheet](http://code.google.com/p/universal-ie6-css/) along with the latest version of jQuery.

If we're in Development mode, [Brosho](http://usejquery.com/posts/8/brosho-design-in-the-browser-jquery-plugin) and [Gridlayouts](http://gridlayouts.com/) are imported and set up, too.

##Status

At the moment, This is just meant for me to use. I imagine in the end, I'll spend a bit more time working on it and making it more customisable etc.

## TODO

* Add Colour Manipulation Mixins & variables
* Sort out the 404 page with a decent default layout & markup.
* Add a way to handle errors other than 404 in production.
* Look for ways to refactor and reduce code and complexity using Sassscript and/or ruby.

## Author

By [Danny Smith](http://dasmith.co.uk).