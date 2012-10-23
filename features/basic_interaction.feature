Feature: Visiting the Site

  in order to see the examples in Derp-Bear
  as a visitor of the site
  I want to visit the home page

  This is a growing feature basically all I want to do is have a simple index of all the examples I have so far
  It should have some basic information like the language, date, opensource tool used, and a blurb of what was done


  Scenario: visit the site
    Given I visit the site
    Then I should see the home page title

