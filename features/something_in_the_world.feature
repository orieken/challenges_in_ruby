Feature: Something is in the World

  in order to figure out what Umair is talking
  as Oscar
  I have to create 2 scenarios that make the same object types in the world

  Scenario: I create and validate my dog
    Given I create a Dog
    Then my dog should be in the world
    Then there should be one dog in the world

  Scenario: I create and validate my other dog
    Given I create my other dog
    Then there should be one dog in the world

  @huh
  Scenario: some random dog walks by
    Given I create a Dog
    Then there should be two dogs in the world