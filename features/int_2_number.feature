Feature: A number as an integer should be converted into a string representation

	Scenario: The entered number should be converted into a string
	
		Given I visit the main page
		When I enter 1234567 into the input field
		And press the submit button
		Then I should see one million two hundred and thirtyfour thousand five hundred and sixtyseven