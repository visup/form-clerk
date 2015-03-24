class FormsController < ApplicationController
  before_action :authenticate_user!, except: :submit

  def index
    @forms = current_user.forms
  end

  def create
    @form = Form.new(form_params.merge(user: current_user))
    unless @form.save
      render status: :unprocessable_entity
    end
  end

  def submit
    FormsMailer.submit(request.request_parameters).deliver_now
  end

  private

    def form_params
      params.require(:form).permit(:name, :email)
    end
end