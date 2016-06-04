class ClearanceBatchesController < ApplicationController

  def index
    @clearance_batches  = ClearanceBatch.all
  end

  def create
    # tried to add an action to process the batch added in the session but couldn't get it to work
    # if params[:csv_batch_file].present?
    #   clearancing_status = ClearancingService.new.process_file(params[:csv_batch_file].tempfile)
    # else
    #   clearancing_status = ClearancingService.new.process_file(session[:added_batch_items])
    # end
    clearancing_status = ClearancingService.new.process_file(params[:csv_batch_file].tempfile)

    clearance_batch    = clearancing_status.clearance_batch
    alert_messages     = []
    if clearance_batch.persisted?
      flash[:notice]  = "#{clearance_batch.items.count} items clearanced in batch #{clearance_batch.id}"
    else
      alert_messages << "No new clearance batch was added"
    end
    if clearancing_status.errors.any?
      alert_messages << "#{clearancing_status.errors.count} item ids raised errors and were not clearanced"
      clearancing_status.errors.each {|error| alert_messages << error }
    end
    report(clearance_batch)
    flash[:alert] = alert_messages.join("<br/>") if alert_messages.any?
    redirect_to action: :index
  end

  private

  def report(batch)
    if batch.persisted?
        batch_items = Item.where(batch.id == clearance_batch_id)
        path = "/vendor_reports/#{clearance_batch_id}.txt"
        content = batch_items.each do |item|
          item.id
          item.color
          item.size
        end
      File.open(path, 'w') {|f| f.write(content) }
    end
  end
end
