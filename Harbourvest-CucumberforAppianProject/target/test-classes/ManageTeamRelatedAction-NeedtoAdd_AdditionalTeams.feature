@ManageTeams-AddNewTeams
Feature: Add Another Functional Team using Manage Teams Related Action- Need to give proper index

  Background: Login to Appian environment
   Given I setup with "$$$Browser$$$" browser
    When I set appian URL to "$$$URL_HV$$$"
    And I set appian version to "$$$AppVer$$$"
    And I set appian locale to "$$$AppLoc$$$"
    Then I login with username "$$$csaUser1$$$"
  
   Scenario: Using Manage Teams Related Action, Add other Functional Teams
  
   Given I open "$$$URL_ClientService$$$"
    Given I wait for "10" seconds
    Given I click on site page "CLIENT SERVICE REQUESTS"
    #Given I populate field "Search" with "$$$RequestID$$$"
    #Given I wait for "2" seconds
     Given I clear field "Status"
    Given I wait for "5" seconds
     Given I populate field "Type" with "$$$RequestType$$$"
   Given I wait for "5" seconds
   Given I sort grid "[1]" by column "Request Id"
   Given I wait for "4" seconds
   Given I sort grid "[1]" by column "Request Id"
   Given I wait for "4" seconds
    Given I click on grid "[1]" column "[3]" row "[1]"
    Given I wait for "10" seconds
    Given I click on link "Related Actions"
    Given I wait for "2" seconds
    Given I click on record related action "Manage Teams"
    Given I wait for "2" seconds
    Given I click on link "Add Functional Team"
    Given I wait for "2" seconds
    
    #Below will select Tax Team
    Given I populate grid "[1]" column "[1]" row "[2]" with partially matching picker field suggestions for "Tax"
    Given I wait for "3" seconds
    Given I populate grid "[1]" column "[4]" row "[2]" with "$$$Comments$$$"
    Given I wait for "3" seconds
    Given I verify grid "[1]" column "[5]" row "[2]" contains "Added"
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
  