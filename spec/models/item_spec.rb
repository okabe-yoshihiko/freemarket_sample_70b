require 'rails_helper'

describe Item do
  describe '#create' do
    it "nameが空では登録不可" do
      item = build(:item, name: "")
      item.valid?
      expect(item.errors[:name]).to include("を入力してください")
    end
    it "detailが空では登録不可" do
      item = build(:item, detail: "")
      item.valid?
      expect(item.errors[:detail]).to include("を入力してください")
    end
    it "categoryが空では登録不可" do
      item = build(:item, category: "")
      item.valid?
      expect(item.errors[:category]).to include("を入力してください")
    end
    it "priceが空では登録不可" do
      item = build(:item, price: "")
      item.valid?
      expect(item.errors[:price]).to include("を入力してください")
    end
    it "stateが空では登録不可" do
      item = build(:item, seller_id: "")
      item.valid?
      expect(item.errors[:seller_id]).to include("を入力してください")
    end
    it "cityが空では登録不可" do
      item = build(:item, prefecture_id: "")
      item.valid?
      expect(item.errors[:prefecture_id]).to include("を入力してください")
    end
    it "delivery_timeが空では登録不可" do
      item = build(:item, day_id: "")
      item.valid?
      expect(item.errors[:day_id]).to include("を入力してください")
    end
    it "fee_payerが空では登録不可" do
      item = build(:item, postage_id: "")
      item.valid?
      expect(item.errors[:postage_id]).to include("を入力してください")
    end
    it "すべて満たしていれば登録可" do
      item = create(:item)
      expect(item).to be_valid
    end
  end
end