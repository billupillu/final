# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $(document).on 'change', '#cities_select', (evt) ->
    $.ajax '/priest_profiles/update_cities',
      type: 'GET'
      dataType: 'script'
      data: {
        city_id: $("#cities_select option:selected").val()
      }
      error: (jqXHR, textStatus, errorThrown) ->
        console.log("AJAX Error: #{textStatus}")
      success: (data, textStatus, jqXHR) ->
        console.log("Dynamic country select OK!")
        $('#areas_select').chosen
          allow_single_deselect: true
          no_results_text: 'No results matched'
          width: '200px'


  # enable chosen js
  # $('#areas_select').chosen
  #  allow_single_deselect: true
  #  no_results_text: 'No results matched'
  #  width: '200px'
  
