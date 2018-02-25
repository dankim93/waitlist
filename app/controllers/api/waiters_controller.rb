class Api::WaitersController < Api::BaseController
  def index
    # @waiters = Waiter.all
    #
    # render :index
    respond_with Waiter.all
  end

  def show
    # @waiter = Waiter.find(params[:id])
    respond_with Waiter.find(params[:id])
  end

  def create
    @waiter = Waiter.new(waiter_params)

    if @waiter.save!
      # render :show
    else
      render json: @waiter.errors.full_messages, status: 422
    end
  end

  def destroy
    @waiter = Waiter.find(params[:id])
    return unless @waiter
    @waiter.destroy!
    # render :show
  end

  private
  def waiter_params
    params.require(:waiter).permit(
      :name,
      :phone_number,
      :size
    )
  end
end
