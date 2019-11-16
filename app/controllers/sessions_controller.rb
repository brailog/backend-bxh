class SessionsController < ApplicationController
  def create
    user = Company.where(email: params[:email]).first

    if user && user.valid_password?(params[:password])
      render json: { data: user.as_json(only: [:email, :authentication_token]), type: "Company" }, status: :created
    else
      head(:unauthorized)
    end
  end

  def destroy
  end
end
