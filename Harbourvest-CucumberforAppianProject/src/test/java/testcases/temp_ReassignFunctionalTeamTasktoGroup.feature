@ReassignFunctionalTeamTaskBacktoGroup
Feature: Submit the task assigned to Functional Team-Treasury 

  Background: Login to Appian environment
   Given I setup with "CHROME" browser
    When I set appian URL to "https://harbourvesttest.appiancloud.com/suite/portal/login.jsp"
    And I set appian version to "19.2"
    And I set appian locale to "en_US"
    Then I login with username "treasuryUser1"
  
   Scenario: Accept he task assigned to Functional Team and then Submit the task
  
   Given I open "https://harbourvesttest.appiancloud.com/suite/sites/client-service"
   Given I wait for "2" seconds
   
   #Set the filter to accept the task
   Given I click on link "Add"
   Given I populate field "Filter Set Name" with "Test the Filter- 09/12/2019 22:01:22"
   Given I populate field "Type" with "Capital Calls"
   Given I wait for "5" seconds
   Given I click on link "Today[2]"
   Given I wait for "5" seconds
   Given I click on link "Save"
   Given I wait for "5" seconds
   Given I click on link "Set Default"
   
   #Navigate to Tasks and click on Functional Team Task
   Given I click on button "My Group Tasks"
   Given I wait for "5" seconds
   Given I sort grid "[1]" by column "Assigned On" 
   Given I wait for "4" seconds
   Given I sort grid "[1]" by column "Assigned On" 
   Given I wait for "4" seconds
   Given I click on grid "[1]" column "[3]" row "[1]"
   Given I wait for "4" seconds
   
   #Accept the task and Navigate between the tabs available in task and click on links available under Emails
   Given I click on button "ACCEPT"
   Given I wait for "4" seconds
   
   #Enter the Reassign Comments and reassign to group
   Given I populate field type "PARAGRAPH" named "[1]" with "Enter this Comments to reassign the task - 09/12/2019 22:01:22"
   Given I wait for "5" seconds
   When I click on button "RE-ASSIGN TO GROUP"
   When I click on button "YES"
   Then I wait for "5" seconds
   
   #Again Reassiging to Perticular user
   Given I click on button "My Group Tasks"
   Given I wait for "5" seconds
   Given I sort grid "[1]" by column "Assigned On" 
   Given I wait for "4" seconds
   Given I sort grid "[1]" by column "Assigned On" 
   Given I wait for "4" seconds
   Given I click on grid "[1]" column "[3]" row "[1]"
   Given I wait for "4" seconds
   Given I click on button "ACCEPT"
   Given I wait for "4" seconds
   When I populate picker field "[2]" with partially matching suggestions for "test"
   When I wait for "5" seconds
   When I click on button "RE-ASSIGN"
   When I click on button "YES"
   Then I wait for "3" seconds
   Then I logout
   Then I tear down
  

