require 'rails_helper'

describe Card do
  describe '#new' do

    it 'is valid' do
      user = create(:user)
      card = build(:card, user_id: user.id)
      card.valid?
      expect(card).to be_valid
    end

    it 'is invalid without card_id' do
      user = create(:user)
      card = build(:card, user_id: user.id, card_id: "")
      card.valid?
      expect(card.errors[:card_id]).to include("can't be blank")
    end

    it 'is invalid without customer_id' do
      user = create(:user)
      card = build(:card, user_id: user.id, customer_id: "")
      card.valid?
      expect(card.errors[:customer_id]).to include("can't be blank")
    end
   
  end
end