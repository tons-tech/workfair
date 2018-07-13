class UsersController < ApplicationController
  before_action :authenticate_user, only: [:profile]

  def sign_up
    user = User.find_by(email: params[:email])

    if user
      msg = {
          "status": "error",
          "comment": "you already signed up"
      }
      msg.to_json
      render :json => msg
    else
      user = User.new(
          email: params[:email],
          name: params[:name],
          password: params[:password],
          company_name: params[:company_name]
      )
      if user.save
        puts "user.saved"
      else
        puts "error"
      end
      msg = {
          "status": "success",
          "comment": "success fully sign up"
      }
      msg.to_json
      render :json => msg
    end
  end

  def profile
    puts 'yeahhh'
    render :json => {"msg": "success"}
  end

  def test
    render :json => {"message": "success"}
  end
end
