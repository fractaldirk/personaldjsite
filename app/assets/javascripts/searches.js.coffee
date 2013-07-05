# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  $(".description_info").hide()

  # document.getElementById("myBody").style.display = ""

  $(".display_more_info").click (event) ->
    $(".description_info").fadeToggle()
    event.preventDefault()
