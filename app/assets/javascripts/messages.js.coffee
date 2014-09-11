# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
  $(".simple_form").on "ajax:success", (data) ->
    $("#messages").text '短信已经发送'
    $(".form-group").hide()