jQuery ($) ->
  $(document).ready ->
    if $('.duplicatable_form').length

      nestedForm = $('.duplicatable_form').last().clone()