class FormsController < ApplicationController
  def submit
    FormsMailer.submit(request.request_parameters).deliver_now
  end
end