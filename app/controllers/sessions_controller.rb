class SessionsController < ApplicationController
  def company
    user = Company.where(email: params[:email]).first

    if user && user.valid_password?(params[:password])
      render json: { data: user.as_json(only: [:email, :authentication_token, :id, :name]) }, status: :created
    else
      render json: { data: "Wrong password or email" }, status: :unauthorized
    end
  end

  def bughunter
    user = Hunter.where(email: params[:email]).first

    if user && user.valid_password?(params[:password])
      render json: { data: user.as_json(only: [:email, :authentication_token, :id, :name]) }, status: :created
    else
      render json: { data: "Wrong password or email" }, status: :unauthorized
    end
  end

  def admin
    user = Admin.where(email: params[:email]).first

    if user && user.valid_password?(params[:password])
      render json: { data: user.as_json(only: [:email, :authentication_token, :id, :name]) }, status: :created
    else
      render json: { data: "Wrong password or email" }, status: :unauthorized
    end
  end
end
