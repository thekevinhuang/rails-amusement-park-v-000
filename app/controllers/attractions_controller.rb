class AttractionsController <ApplicationController

  def index
    @attractions = Attraction.all
    @user= current_user
  end

  def show
    @user = current_user
    @attraction = Attraction.find_by(id: params[:id])
  end

  def ride
    ride = Ride.new

    ride.user = current_user
    ride.attraction = Attraction.find_by(id: params[:attraction_id])
    ride.save
    flash[:message] = ride.take_ride
    redirect_to user_path(current_user)
  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end
end
