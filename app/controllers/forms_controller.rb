class FormsController < ApplicationController
  before_action :authenticate_user!, except: :submit
  before_action :set_form, only: [:show, :update]

  def index
    @forms = current_user.forms
  end

  def show
  end

  def create
    @form = Form.new(form_params.merge(user: current_user))
    unless @form.save
      render status: :unprocessable_entity
    end
  end

  def update
    if @form.update form_params
      render :show
    else
      render json: @form.errors, status: :unprocessable_entity
    end
  end

  def submit
    FormsMailer.submit(request.request_parameters).deliver_now
  end

  private

    def form_params
      params.require(:form).permit(:name, :email)
    end

    def set_form
      @form = Form.find params[:id]
    end
end