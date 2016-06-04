class Item < ActiveRecord::Base

  CLEARANCE_PRICE_PERCENTAGE  = BigDecimal.new("0.75")

  belongs_to :style
  belongs_to :clearance_batch
  before_save :set_final_price!

  scope :sellable, -> { where(status: 'sellable') }

  def clearance!
    update_attributes!(status: 'clearanced',
                       price_sold: style.wholesale_price * CLEARANCE_PRICE_PERCENTAGE)
  end

  def set_final_price!
    if status == "clearanced"
      if (price_sold.to_i < 5) && (style.type.downcase == "pants" || style.type.downcase == "dress")
        update_attributes!(price_sold: 5)
      elsif price_sold.to_i < 2
        update_attributes!(price_sold: 2)
      end
    end
  end

  def self.to_csv
    attributes = %w(item color size)
    CSV.generate(headers: true) do |csv|
      csv << attributes
      all.each do |item|
        csv << item.attributes.values_at(*attributes)
      end
    end
  end

end
