// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//=require semantic-ui
import '@doabit/semantic-ui-sass'
import '@doabit/semantic-ui-sass/src/scss/semantic-ui.scss'
import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
require("packs/common")
require("semantic-ui-sass")
require("semantic-ui")

Rails.start()
Turbolinks.start()
ActiveStorage.start()

$(document).on("turbolinks:load", () => $(".ui.dropdown").dropdown());

import "controllers"
