// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
import "core-js/stable"
import "regenerator-runtime/runtime"

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()

import 'bootstrap'
import 'application.scss'

require("chartkick")
// require("moment")
// require("moment-timezone-with-data")
// require("tempusdominus-bootstrap-4")


// Reference images with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
const images = require.context('../images', true)
const imagePath = (name) => images(name, true)