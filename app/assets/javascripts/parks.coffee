window.Slots = 
  init: ->
    @initToolTip()
    setInterval => 
      @getSlotsInfo()
    , 60000

  initToolTip: ->
    $('.js_slot_item').tooltip({
      placement: 'auto top',
      trigger: 'hover',
      html: true
    });

  getSlotsInfo: ->
    $.ajax
      url: window.location.href
      type: "GET"
      dataType: "json"
      success: (response)=>
        $('#slots_list').replaceWith(response.html)
        @initToolTip()

window.Parks = 
  init: ->
    setInterval => 
      @getParksinfo()
    , 60000
  getParksinfo: ->
    $.ajax
      url: window.location.href
      type: "GET"
      dataType: "json"
      success: (response)=>
        $('#parks_list').replaceWith(response.html)
