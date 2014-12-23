jQuery ->
  $('#sortable-blocks').sortable(
    axis: 'y'
    items: '.block'
    cursor: 'move'


    update: (e, ui) ->
      position = ui.item.index()
      $.ajax(
        type: 'POST'
        url: '/emails/update_row_order'
        dataType: 'json'
        data: { row_order_position: position }
      )
  )