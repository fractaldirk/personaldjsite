# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  $(".search_club_name").show()
  $(".search_location").hide()

  # document.getElementById("myBody").style.display = ""

  $(".switch_to_location").click (event) ->
    $(".search_club_name").hide()
    $(".search_location").fadeToggle()
    event.preventDefault()

  $(".switch_to_club_name").click (event) ->
    $(".search_location").hide()
    $(".search_club_name").fadeToggle()
    event.preventDefault()
