Feature: Talent bank application

Scenario: Talent bank application
Given I am at talent bank page
When I select a job vacancy
And I click in button "Candidatar nesta vaga"
Then I must be at login page
