// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

import "controllers"
import "bootstrap"

import "stylesheets/application"
import { initMapbox } from '../plugins/init_mapbox';


// require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


Rails.start()
Turbolinks.start()
ActiveStorage.start()

function updateQuestionZero(value){
  document.getElementById('question_0').innerText = value
}

console.log("test")
document.addEventListener('turbolinks:load', () => {
  console.log("load")
  initMapbox();
})
