$(document).ready ->
  $(ajax-contact).submit (e) ->
    name = document.getElementById('name')
    email = document.getElementById('email')
    message = document.getElementById('message')
    if !name.value or !email.value or !message.value
      alert('Please check your entries');
      return false
    else
      $.ajax
        method: 'POST'
        url: '//formspree.io/sumanthgouru@gmail.com'
        data: $('#contact-form').serialize()
        datatype: 'json'
      e.preventDefault()
      $(this).get(0).reset()
      alert('Message sent')