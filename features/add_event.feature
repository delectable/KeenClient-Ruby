# Language: en
Feature: AddEvent
  In order to send an event to Keen's servers
  As a developer
  I want to be able to post an event to the Keen Client as a Hash/Dictionary

  Scenario: Send Event directly to Keen
    Given a Keen Client in Direct Send mode
    When I post an event
    Then the response from the server should be good.

  Scenario: Send Multiple Event directly to Keen
    Given a Keen Client in Direct Send mode
    When I post mulitple events
    Then the response from the server should be good for each event
