# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  $(".instructions").hide()
  $(".sign_up_button").show()
  $(".sign_in_button").hide()

  document.getElementById("myBody").style.display = ""

  $(".sign_up_button").click (event) ->
  $(".instructions").fadeToggle()
  $(".sign_up_button").hide()
  $(".sign_in_button").show()
  event.preventDefault()
