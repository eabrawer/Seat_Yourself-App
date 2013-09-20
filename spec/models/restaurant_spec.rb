require "spec_helper"

describe Restaurant do 

	let(:restaurant) do Restaurant.new(:name => "pie", :address => "123 fake st") end

	it "should be valid" do
		expect(restaurant).to be_valid
	end


	it "should validate presence of name" do
		restaurant.name = nil
		expect(restaurant).not_to be_valid
	end

end