class SessionsController < ApplicationController
  def create
    binding.pry
    auth_token = params[:auth_token]
    user = User.find_by(uid: params[:uid])
    expiry= params[:expiry]
    render json: {ok: true, uid: user.uid, auth_token: auth_token}, status: :ok
  end

  def destroy
  end
end
