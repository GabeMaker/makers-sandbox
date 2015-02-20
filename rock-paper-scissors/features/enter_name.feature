Feature: Entering a name
	To play RPS
	As a web user
	I want to enter my name

	Scenario: Entering a name
		Given I am on the homepage
		When I enter "Gabe" in the "name" field
		Then I should see "Hi Gabe - let's play Rock, Paper, Scissors!"