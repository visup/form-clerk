class FormsMailer < ApplicationMailer

  def submit(parameters)
    @parameters = parameters

    mail to: Settings.destinations, subject: '[FormClerk] New form submission'
  end
end