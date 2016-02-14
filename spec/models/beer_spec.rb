require 'rails_helper'

RSpec.describe Beer, type: :model do

describe "should not be saved" do
    it "without a name" do
      style = FactoryGirl.create(:style)
      @beer = Beer.create :style => style
    end

    it "without a style" do
      @beer = Beer.create :name => "olut"
    end

    after :each do
      expect(@beer.valid?).to be(false)
      expect(Beer.count).to eq(0)
    end
 end
  
  it "is the one with highest rating if several rated" do
      create_beer_with_rating(user, 10)
      best = create_beer_with_rating(user, 25)
      create_beer_with_rating(user, 7)

      expect(user.favorite_beer).to eq(best)
    end
	
end