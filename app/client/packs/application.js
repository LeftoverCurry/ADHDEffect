// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

// Rails components.
require("@rails/ujs").start();
require("turbolinks").start();
require("@rails/activestorage").start();

// Package dependancies
import "bootstrap";
require("chartkick");
require("select2");

// Import images from /images, allows use of 'image_pack_tag.'
const images = require.context("../images", true);
const imagePath = (name) => images(name, true);

// Import stylesheets
import "./application.scss";

// Import JS component files
require("../javascript/form");
// Global JS variables
window.$ = jQuery;
window.jQuery = jQuery;
