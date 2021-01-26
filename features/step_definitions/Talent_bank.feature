Feature: Talent bank application

Scenario: Talent bank application
Given I am at talent bank page
When I select a job vacancy
And I click in button "Candidatar nesta vaga"
Then I must be at login page

Scenario: Login after Talent bank application
Given I did a talent bank application
When I login with "email" "ruan.e.carvalho@hotmail.com"
And I login with "password" "solides123456"
And I click in button "Logar"
Then I must be at personal data application screen

Scenario: Do a talent bank application when I'm logged in
Given I am logged in
And I am at talent bank page
When I select a job vacancy
And I click in button "Candidatar nesta vaga"
Then I must be at personal data application screen
