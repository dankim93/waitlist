class Api::TablesController < Api::BaseController
  def index
    respond_with Table.all
  end

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

  def available # sends available tables order by capacity
    tables = Table.all
    diners = Diner.where.not({ table_id: nil })
    @available_tables = []
    tables.each do |table|
      flag = false
      diners.each do |diner|
        if diner[:table_id] == table[:id]
          flag = true
          break
        end
      end

      @available_tables.push(table) if flag == false
    end

    @available_tables.sort { |a, b| a[:capacity] <=> b[:capacity] }
    respond_with @available_tables
  end

  private
  def table_params
    params.require(:table).permit(
      :capacity
    )
  end
end
