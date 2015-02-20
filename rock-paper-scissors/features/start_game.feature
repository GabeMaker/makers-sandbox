Feature:
	To play the Game
	As a player
	I want to choose rock, paper or scissors
	
	Background:
		Given I am on the homepage
		When I enter "Gabe" in the "name" field
		Then I should see "Hi Gabe - let's play Rock, Paper, Scissors!"

	Scenario: Choosing Rock When opponent picks Paper
		When I see "Pick one:"
		And I push the "Rock" button
		Then I should see "Sorry Gabe, you lose"




