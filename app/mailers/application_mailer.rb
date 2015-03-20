class ApplicationMailer < ActionMailer::Base
  default from: Settings.default_from
  layout 'mailer'
end