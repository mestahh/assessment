Feature: A number as an integer should be converted into a string representation

	Background: I visit the main page
	
		Given I visit the main page

	Scenario: The entered number should be converted into a string
	
		When I enter 1234567 into the input field
		And press the submit button
		Then I should see one million two hundred and thirtyfour thousand five hundred and sixtyseven
		
	Scenario: given a String as an input, an error message should appear
	
		When I enter a string into the input field
		And press the submit button
		Then I should see I can not convert a string!