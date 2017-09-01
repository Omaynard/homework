Feature: Withdraw fixed money 

	Scenario Outline: Withdraw fixed money 
		Given I have <Balance> in my account 
		When I choose to withdraw the fixed amount of <Withdraw>
		Then I should receive <Received> cash
		And the balance of my account should be <Remaining>

		Examples: 
			| Balance | Withdraw | Received | Remaining |
			| 500	  | 200	     | 200	    | 300		|
			| 600	  | 400	     | 400	    | 200 		|
			| 100	  | 100	     | 100	    | 100		|

