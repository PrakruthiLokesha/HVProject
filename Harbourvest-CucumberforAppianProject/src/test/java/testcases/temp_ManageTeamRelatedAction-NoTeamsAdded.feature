@ManageTeams-AddNewTeamsWhen_thereisnofunctionalteamadded
Feature: Add New Functional Teams using Manage Teams Related Action

  Background: Login to Appian environment
   Given I setup with "CHROME" browser
    When I set appian URL to "https://harbourvesttest.appiancloud.com/suite/portal/login.jsp"
    And I set appian version to "19.2"
    And I set appian locale to "en_US"
    Then I login with username "csaUser1"
  
   Scenario: Using Manage Teams Related Action, Add Functional Teams
  
   Given I open "https://harbourvesttest.appiancloud.com/suite/sites/client-service"
    Given I wait for "10" seconds
    Given I click on site page "CLIENT SERVICE REQUESTS"
    Given I populate field "Search" with "1909-8490"
    Given I wait for "2" seconds
     Given I clear field "Status"
    Given I wait for "5" seconds
    Given I click on grid "[1]" column "[3]" row "[1]"
    Given I wait for "10" seconds
    Given I click on link "Related Actions"
    Given I wait for "2" seconds
    Given I click on record related action "Manage Teams"
    Given I wait for "2" seconds
    Given I click on link "Add Functional Team"
    Given I wait for "2" seconds
    
    #Below will select Treasury Team
    Given I populate grid "[1]" column "[1]" row "[1]" with partially matching picker field suggestions for "Tre"
    Given I wait for "3" seconds
    Given I populate grid "[1]" column "[4]" row "[1]" with " Enter this comments to check the comments field - 09/11/2019 19:58:43"
    Given I wait for "3" seconds
    Given I verify grid "[1]" column "[5]" row "[1]" contains "Added"
    Given I wait for "3" seconds
    When I verify button "CANCEL" is present
	  When I wait for "3" seconds
	  When I click on button "COMPLETE"
	  When I click on button "YES"
	  Then I wait for "5" seconds
    Then I click on link "Fulfillment Details"
	  Then I wait for "5" seconds
	  
    #Check the added teams updated in Request Fulfillment Details grid under Request Fulfillment Dashbaord
   
    Given I toggle box "Request Fulfillment Details" visibility
    Given I wait for "2" seconds
    Given I toggle box "Request Fulfillment Details" visibility
    Given I wait for "2" seconds
    Given I sort grid "[1]" by column "Functional Team"
    Given I wait for "3" seconds
    Given I sort grid "[1]" by column "Recommended Person"
    Given I wait for "3" seconds
    Given I sort grid "[1]" by column "Comments"
    Given I wait for "3" seconds
    Given I sort grid "[1]" by column "Assigned By"
    Given I wait for "3" seconds
    Given I sort grid "[1]" by column "Assigned On"
    Given I wait for "3" seconds
    Given I sort grid "[1]" by column "Due Date"
    Given I wait for "3" seconds
    Given I sort grid "[1]" by column "Request Owner"
    Given I wait for "3" seconds
    Given I sort grid "[1]" by column "Task Owner"
    Given I wait for "3" seconds
    Given I sort grid "[1]" by column "Status"
    Given I wait for "3" seconds
    
    #Click to view review history
    Given I click on grid "[1]" column "[12]" row "[1]"
    Given I wait for "3" seconds
    Given I toggle box "[2]" visibility
    Given I wait for "3" seconds
    Given I toggle box "[2]" visibility
     Given I sort grid "[2]" by column "Task Name"
    Given I wait for "3" seconds
    Given I sort grid "[2]" by column "Initial Assignment"
    Given I wait for "3" seconds
    Given I sort grid "[2]" by column "Assigned On"
    Given I wait for "3" seconds
    Given I sort grid "[2]" by column "Currently Assigned To"
    Given I wait for "3" seconds
    Given I sort grid "[2]" by column "Owner Assigned On"
    Given I wait for "3" seconds
    Given I sort grid "[2]" by column "Completed By"
    Given I wait for "3" seconds
    Given I sort grid "[2]" by column "Completed On"
    Given I wait for "3" seconds
    Given I sort grid "[2]" by column "Status"
    Given I wait for "3" seconds
    Given I sort grid "[2]" by column "Comments"
    Given I wait for "3" seconds
    Then I click on link "Close"
    
   
    
   

