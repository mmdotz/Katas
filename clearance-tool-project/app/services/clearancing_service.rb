require 'csv'
require 'ostruct'
require 'pry'
class ClearancingService

  def process_file(uploaded_file)
    clearancing_status      = create_clearancing_status
      CSV.foreach(uploaded_file, headers: false) do |row|
        potential_item_id = row[0].to_i
        clearancing_error = what_is_the_clearancing_error?(potential_item_id)
        if clearancing_error
          clearancing_status.errors << clearancing_error
        else
          clearancing_status.item_ids_to_clearance << potential_item_id
        end
      end
    # if uploaded_file.is_a?(CSV)
    #   CSV.foreach(uploaded_file, headers: false) do |row|
    #     potential_item_id = row[0].to_i
    #     clearancing_error = what_is_the_clearancing_error?(potential_item_id)
    #     if clearancing_error
    #       clearancing_status.errors << clearancing_error
    #     else
    #       clearancing_status.item_ids_to_clearance << potential_item_id
    #     end
    #   end
    # else
    #   # iterate over array of hashes and dump each in the array for clearance
    #   uploaded_file.each do |hash|
    #     value = hash.values[0]
    #     clearancing_status.item_ids_to_clearance << value.to_i
    #   end
    # end
    clearance_items!(clearancing_status)
  end




private

  def clearance_items!(clearancing_status)
    if clearancing_status.item_ids_to_clearance.any?
      Item.transaction do
        clearancing_status.clearance_batch.save!
        clearancing_status.item_ids_to_clearance.each do |item_id|
          item = Item.find(item_id)
          item.clearance!
          clearancing_status.clearance_batch.items << item
        end
      end
    end
    clearancing_status # returns the OpenStruct object
  end

  def what_is_the_clearancing_error?(potential_item_id)
    if potential_item_id.blank? || potential_item_id == 0 || !potential_item_id.is_a?(Integer)
      return "Item id #{potential_item_id} is not valid"
    end
    if Item.where(id: potential_item_id).none?
      return "Item id #{potential_item_id} could not be found"
    end
    if Item.sellable.where(id: potential_item_id).none?
      return "Item id #{potential_item_id} could not be clearanced"
    end

    return nil

  end

  def create_clearancing_status  # not saving an id for ClearanceBatch object - why?
    OpenStruct.new(
      clearance_batch: ClearanceBatch.new,
      item_ids_to_clearance: [],
      errors: [])
  end

end
