json.extract! form, :id, :name, :email
json.submit_url submit_form_url(id: form.code)