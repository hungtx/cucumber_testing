Feature: Signing in

Scenario: Unsuccessful signin
    When I sign in with valid credentials
    Then I see an invalid login message
    
Scenario: Visitor can not signin
	Given I do not exist as a user
    When I sign in with a wrong email
    When I sign in with a wrong password
    Then I see an invalid login message
    
Scenario: User signin sucessfully
	Given I am logged in
    Then I should be signed in