Feature: Pulling widgets out of WidgetCollector

  In order to get the names of all the widgets created during a scenario
  as a widget user
  I would like a WidgetCollector to have all widgets that have been created

  Scenario: There is one widget in the WidgetCollector
    Given I create a widget
    Then the WidgetCollector should have my widget available