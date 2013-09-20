require 'spec_helper'

describe RestaurantsController do
	describe "index" do 
		it "should return all products" do
			res1, res2 = FactoryGirl.create(:restaurant), FactoryGirl.create(:restaurant)
			get :index
			expect(assigns(:restaurants)).to match_array([res1, res2])
		end
	end
end

# the assigns refers to a instance variable of that name 