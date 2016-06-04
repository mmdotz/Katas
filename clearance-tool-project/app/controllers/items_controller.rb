class ItemsController < ApplicationController

  def index
    # why is this only returning 1 of each group ?
    group_selection = params[:group_selection]
    if group_selection == ""
      @items = Item.all.order(:id)
    else
      @items = Item.all.group( "#{ group_selection }" )
    end
  end

  def new
    @batch_item = Item.new
    @status_choices = Item.all.map { |i| i.status}.uniq
    @styles = Style.all
    # initalize the session with an empty array then fill array with items
    session[:added_batch_items] ||= []
  end

  def create
    @batch_item = Item.new(item_params)


    respond_to do |format|
      if @batch_item.save
        session[:added_batch_items] << @batch_item
        format.html { redirect_to new_item_path, notice: 'Batch Item was entered. Please clearance as needed.' }
      else
        format.html { render :new }
      end
    end
  end

  private

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:size, :color, :status, :price_sold, :sold_at, :style_id, :clearance_batch_id)
  end

end
