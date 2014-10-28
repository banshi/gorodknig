jQuery ->
  $("form#new_admin").bind "ajax:success", (e, data, status, xhr) ->
    console.log 'in bind'
    console.log data
    if data.success
      # $('#sign_in').modal('hide')
      # $('#sign_in_button').hide()
      # $('#submit_comment').slideToggle(1000, "easeOutBack" )
      console.log data
    else
      console.log 'before gritter add'
      $.gritter.add({ title: 'Admin Authentication', text: data.message, image: '/assets/error.png'})
      # alert('failure!')