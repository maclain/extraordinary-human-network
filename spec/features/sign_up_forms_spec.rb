require 'spec_helper'

describe "Landing Page" do

	it "Check home page routing" do
		visit root_path
			
		expect(page).to have_content 'Welcome to the Extraordinary Human Network'
	end	
end