before_action :authenticate_user!

# GET /users/1
def show
  @user = User.find(params[:id])

  render json: @user
end
end