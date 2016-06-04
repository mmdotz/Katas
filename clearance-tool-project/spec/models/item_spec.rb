require 'rails_helper'

describe Item do
  describe "#perform_clearance!" do

    let(:wholesale_price) { 100 }
    let(:item) { FactoryGirl.create(:item, style: FactoryGirl.create(:style, wholesale_price: wholesale_price)) }
    before do
      item.clearance!
      item.reload
    end

    it "should mark the item status as clearanced" do
      expect(item.status).to eq("clearanced")
    end

    it "should set the price_sold as 75% of the wholesale_price" do
      expect(item.price_sold).to eq(BigDecimal.new(wholesale_price) * BigDecimal.new("0.75"))
    end
  end

  describe "#perform_set_final_price!" do

    let(:price_sold) { 1 }
    let(:type) {"dresses"}
    let(:item) { FactoryGirl.create(:item, style: FactoryGirl.create(:style, price_sold: price_sold)}
    before do
      item.set_final_price
      item.reload
    end

    it "should reset the item sold price to the minimum price allowed" do
      expect(item.price_sold).to eq(5)
    end

  end
end
