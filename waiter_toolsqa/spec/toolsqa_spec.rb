require 'spec_helper'
require_relative '../toolsqa.rb'

describe Toolsqa do 

	before(:all) do 
		@qa = Toolsqa.new
		@qa.go_to_page
	end

	# it "should go to the toolsqa page " do
	#  expect(@qa.find_url).to eq 'http://toolsqa.com/automation-practice-form/' 
	# end
	# it "should go to the  Automation Practice table when (link test) clicked" do
	# 	@qa.click_link_test
	# 	expect(@qa.find_url).to eq 'http://toolsqa.com/automation-practice-table/' 
	# end

	# it "should enter text in the first name text field" do 
	# 	@qa.first_name_input
	# 	expect(@qa.first_name_input).to eq 'Omar'
	# end
	 # it "should enter text in the last name text field" do 
	 # 	@qa.last_name_input
	 # 	expect(@qa.last_name_input).to eq 'Maynard'
	 # end
	# it "should press the female radio button " do 
	# 	@qa.female_radio_button
	#  	expect(@qa.female_radio_button).to be true
	# end
	# it "should press the yoe1 radio button " do 
	# 	
	#  	expect(@qa.YOE1_radio_button).to be true
	# end
	# it "should press the yoe2 radio button " do 
	# 	
	#  	expect(@qa.YOE2_radio_button).to be true
	# end
	# it "should press the yoe3 radio button " do 
	# 	
	#  	expect(@qa.YOE3_radio_button).to be true
	# end
	# it "should press the yoe4 radio button " do 
	#  	expect(@qa.YOE4_radio_button).to be true
	# end
	# it "should press the yoe5 radio button " do 
	#  	expect(@qa.YOE5_radio_button).to be true
	# end
	# it "should press the yoe6 radio button " do 
	#  	expect(@qa.YOE6_radio_button).to be true
	# end
	# it "should press the yoe6 radio button " do 
	#  	expect(@qa.YOE7_radio_button).to be true
	# end
	# it "should enter text in the date text field" do 
	# 	expect(@qa.date_input).to eq 'Omar'
	# end 




end