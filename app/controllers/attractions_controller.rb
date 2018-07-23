class AttractionsController <ApplicationController

  def index
    @attractions = Attraction.all
  end

  def show
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
end
