require 'watir'

class Toolsqa
	
	def initialize
		@browser = Watir::Browser.new :chrome
	end 
	
	def go_to_page
		@browser.goto 'http://toolsqa.com/automation-practice-form/'
	end
	def find_url
		@browser.url
	end
	def click_partial_link_test 
		go_to_page
		partial_link = @browser.link title: 'Automation Practice Form'
		partial_link.click
	end

	def click_link_test 
		go_to_page
		partial_link = @browser.link title: 'Automation Practice Table'
		partial_link.click
	end
	def first_name_input
		go_to_page
		first_name_input = @browser.text_field name: 'firstname'
		first_name_input.set ("Omar")
		first_name_input.value
	end
	def last_name_input
		go_to_page
		last_name_input = @browser.text_field name: 'lastname'
		last_name_input.set ("Maynard")
		last_name_input.value
	end
	def male_radio_button
		go_to_page
		male_button = @browser.radio id: 'sex-0'
		male_button.set
		male_button.set?
	end
	def female_radio_button
		go_to_page
		female_button = @browser.radio id: 'sex-1'
		female_button.set
		female_button.set?
	end
	def YOE1_radio_button(number)
		go_to_page
		yoe1_button = @browser.radio id: 'exp-0'
		yoe1_button.set
		yoe1_button.set?
	end
	def YOE2_radio_button
		go_to_page
		yoe2_button = @browser.radio id: 'exp-1'
		yoe2_button.set
		yoe2_button.set?
	end
	def YOE3_radio_button
		go_to_page
		yoe3_button = @browser.radio id: 'exp-2'
		yoe3_button.set
		yoe3_button.set?
	end
	def YOE4_radio_button
		go_to_page
		yoe4_button = @browser.radio id: 'exp-3'
		yoe4_button.set
		yoe4_button.set?
	end
	def YOE5_radio_button
		go_to_page
		yoe5_button = @browser.radio id: 'exp-4'
		yoe5_button.set
		yoe5_button.set?
	end
	def YOE6_radio_button
		go_to_page
		yoe6_button = @browser.radio id: 'exp-5'
		yoe6_button.set
		yoe6_button.set?
	end
	def YOE7_radio_button
		go_to_page
		yoe7_button = @browser.radio id: 'exp-6'
		yoe7_button.set
		yoe7_button.set?
	end
	def date_input
		go_to_page
		date_input = @browser.text_field id: 'datepicker'
		date_input.set ("Omar")
		date_input.value
	end
	def file_input
		go_to_page
		file_input = @browser.element :id, 'photo'
		file_input.click
		sleep(6)
		file_input.set('~/Documents/FLVR.jpg')
		sleep(6)
	end
		

end

 work = Toolsqa.new
	work.file_input
 

