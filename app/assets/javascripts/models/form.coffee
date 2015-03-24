FormClerk.Form = DS.Model.extend
  name: DS.attr 'string'
  email: DS.attr 'string'
  submitUrl: DS.attr 'string'

FormClerk.Form.FIXTURES = [
 { id: 1, name: 'SomeForm', email: 'some@email.com' }
 { id: 2, name: 'SomeForm', email: 'some@email.com' }
 { id: 3, name: 'SomeForm', email: 'some@email.com' }
]