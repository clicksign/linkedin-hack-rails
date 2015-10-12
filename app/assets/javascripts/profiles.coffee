# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'ready page:load', ->
  $("#email_options").change ->
    if $("#email_options").val() != "Select option"
      $("#profile_email").val($("#email_options").val())
