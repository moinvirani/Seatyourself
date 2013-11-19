require 'spec_helper'

describe "Restaurants" do
  let!(:restaurant) { FactoryGirl.create(:restaurant)}
  let!(:reservation) {FactoryGirl.build(:reservation, restaurant: restaurant)}
  
  describe "GET /restaurants" do

    describe "Restaurant" do
      it "should availibility when empty" do
        expect(Restaurant.availibility?).to be_true
      end
    end

    it "should require a capacity" do
      expect(Restaurant.new).to be_invalid
    end

    it "should have no availibility if capacity is zero" do
      restaurant.capacity = 0
      expect(Restaurant.new.availibility?).to be_false
    end

    it "should have no availibility when over or equal to capacity" do
     reservation = FactoryGirl.create(:reservation, people: 100, restaurant: reservation)
     expect(restaurant.availibility?).to be_false
    end

    it "should work with multiple reservations" do
      
    end

    it "should accept reservations for 7pm when full for 6pm" do
      FactoryGirl.create(:reservation, restaurant: restaurant, 
        start_time: sixpm, people:30)
    end
  end
end
