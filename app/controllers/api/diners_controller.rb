class Api::DinersController < Api::BaseController
  def index
    respond_with Diner.all
  end

  def show
    respond_with Diner.find(params[:id])
  end

  def create
    @diner = Diner.new(diner_params)

    if !@diner.save!
      render json: @diner.errors.full_messages, status: 422
    end
  end

  def destroy
    @diner = Diner.find(params[:id])
    return unless @diner
    @diner.destroy!
  end

  def test
    @diner = Diner.where({ table_id: nil })
    respond_with @diner
  end

  private
  def diner_params
    params.require(:diner).permit(
      :name,
      :phone_number,
      :size,
      :table_id
    )
  end
end
