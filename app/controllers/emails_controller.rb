class EmailsController < ApplicationController
  def index
    @email = Email.new
  end
  def create
    @email = Email.create(email_params)
      if @email.valid?
        flash[:success] = "Thanks! You'll be the first to know when we launch our site!"
        redirect_to root_path
      elsif @email.invalid?
        flash[:error] = "<strong>Could not save</strong>"
        redirect_to root_path
      end
  end
  
  private
  
  def email_params
    params.require(:email).permit(:address)
  end
end
