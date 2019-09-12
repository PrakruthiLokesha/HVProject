@SendBackFunctionalTeamTask
Feature: Send back the task to CSA Team User which assigned to Functional Team-Treasury 

  Background: Login to Appian environment
   Given I setup with "CHROME" browser
    When I set appian URL to "https://harbourvesttest.appiancloud.com/suite/portal/login.jsp"
    And I set appian version to "19.2"
    And I set appian locale to "en_US"
    Then I login with username "treasuryUser1"
  
   Scenario: Accept the task assigned to Functional Team and then Send Back the task
   Given I open "https://harbourvesttest.appiancloud.com/suite/sites/client-service"
   Given I wait for "2" seconds
   Given I click on link "Add"
   Given I wait for "2" seconds
   Given I populate field "Filter Set Name" with "Test the Filter- 09/12/2019 21:44:30"
   Given I wait for "3" seconds
   #Given I populate field "Search" with "1909-8503"
   #Given I wait for "3" seconds
   Given I populate field "Type" with "Capital Calls"
   Given I wait for "5" seconds
   Given I click on link "Today[2]"
   Given I wait for "3" seconds
   Given I click on link "Save"
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
   Given I populate field type "PARAGRAPH" named "[1]" with "Enter this Comments while sending back - 09/12/2019 21:44:30"
   Given I wait for "5" seconds
   Given I populate field type "FILE_UPLOAD" named "[1]" with "C:\Users\swetar.VURAM.000\Documents\C_TESTESTEST_,.)(123&%$!_TESTESTEST DOC2.pdf"
   When I wait for "7" seconds
   Then I click on button "SEND BACK"
   Then I click on button "YES"
   Then I wait for "5" seconds
   
    #Navigate to Records and Check for Fullfilment details dashboard
   Given I click on site page "CLIENT SERVICE REQUESTS"
   #Given I populate field "Search" with "1909-8503"
   #Given I wait for "5" seconds
   Given I clear field "Status"
   Given I wait for "5" seconds
   #Given I populate field "Status" with "Closed"
   #Given I wait for "5" seconds
   Given I populate field "Type" with "Capital Calls"
   Given I wait for "5" seconds
   Given I sort grid "[1]" by column "Request Id"
   Given I wait for "4" seconds
   Given I sort grid "[1]" by column "Request Id"
   Given I wait for "4" seconds
   Given I click on grid "[1]" column "[3]" row "[1]"
   Given I wait for "10" seconds
   Given I click on link "Fulfillment Details"
   Given I wait for "3" seconds
   When I sort grid "[1]" by column "Completed On"
   Then I wait for "10" seconds
   Then I verify grid "[1]" column "[11]" row "[1]" contains "Sent for Revision"
   Then I wait for "10" seconds
   Then I click on grid "[1]" column "[12]" row "[1]"
   Then I toggle box "[2]" visibility
   Then I wait for "3" seconds
   Then I toggle box "[2]" visibility
   Then I wait for "3" seconds
   Then I verify grid "[2]" column "[8]" row "[2]" contains "Completed"
   Then I wait for "2" seconds
   Then I click on grid "[2]" column "[9]" row "[2]"
   Then I wait for "3" seconds
   Then I verify grid "[2]" column "[9]" row "[2]" contains "Enter this Comments while sending back - 09/12/2019 21:44:30"
   Then I wait for "3" seconds
   Then I sort grid "[2]" by column "Task Name"
   Then I wait for "3" seconds
   Then I sort grid "[2]" by column "Initial Assignment"
   Then I wait for "3" seconds
   Then I sort grid "[2]" by column "Assigned On"
   Then I wait for "3" seconds
   Then I sort grid "[2]" by column "Currently Assigned To"
   Then I wait for "3" seconds
   Then I sort grid "[2]" by column "Owner Assigned On"
   Then I wait for "3" seconds
   Then I sort grid "[2]" by column "Completed By"
   Then I wait for "3" seconds
   Then I sort grid "[2]" by column "Completed On"
   Then I wait for "3" seconds
   Then I sort grid "[2]" by column "Status"
   Then I wait for "3" seconds
   Then I sort grid "[2]" by column "Comments"
   Then I wait for "3" seconds
   Then I logout
   Then I tear down
            

