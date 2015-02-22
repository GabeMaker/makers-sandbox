Feature:
	To play the Game
	As a player
	I want to choose rock, paper or scissors
	
	Background:
		Given I have already registered

	Scenario: Winning with Rock 
		Given opponent randomly picks "Scissors"
		When I see "Pick one:"
		And I push the "Rock" button
		Then I should see "Congratulations Gabe, you win"