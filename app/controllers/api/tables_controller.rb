class Api::TablesController < Api::BaseController
  def create
    @table = Table.new(table_params)

    if !@table.save!
      render json: @table.errors.full_messages, status: 422
    end
  end

  def show
    respond_with Table.find(params[:id])
  end

  def destroy
    @table = Table.find(params[:id])
    return unless @table
    @table.destroy!
  end

  private
  def table_params
    params.require(:table).permit(
      :capacity
    )
  end
end
