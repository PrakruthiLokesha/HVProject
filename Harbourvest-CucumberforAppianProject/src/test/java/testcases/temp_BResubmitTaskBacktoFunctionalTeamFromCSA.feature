@ResubmitTaskBacktoFunctionalTeamFromCSA
Feature: Re-submit/Send Back the task to Functional Team 

  Background: Login to Appian environment
   Given I setup with "CHROME" browser
    When I set appian URL to "https://harbourvesttest.appiancloud.com/suite/portal/login.jsp"
    And I set appian version to "19.2"
    And I set appian locale to "en_US"
    Then I login with username "csaUser1"
  
   Scenario: Re-submit/Send Back the task to Functional Team
   
   #Save the filter set based on Initiated Request
   Given I open "https://harbourvesttest.appiancloud.com/suite/sites/client-service"
   Given I wait for "2" seconds
   Given I click on link "Add"
   Given I populate field "Filter Set Name" with "Test the Filter- 09/12/2019 21:44:30"
   #Given I wait for "3" seconds
   #Given I populate field "Search" with "1909-8503"
    Given I wait for "5" seconds
   Given I click on link "Today[2]"
   Given I wait for "5" seconds
   Given I populate field "Type" with "Capital Calls"
   Given I wait for "5" seconds
   Given I click on link "Save"
   
   #Click on the Send back task i.e Review Comments from Functional Team 
   Given I wait for "5" seconds
   Given I sort grid "[1]" by column "Assigned On" 
   Given I wait for "4" seconds
   Given I sort grid "[1]" by column "Assigned On" 
   Given I wait for "4" seconds
   Given I click on grid "[1]" column "[3]" row "[1]"
   Given I wait for "4" seconds
   
   #Acknowledge the task without resopnding back to client
   Given I populate field type "PARAGRAPH" named "[1]" with "Enter this Comments while sending back - 09/12/2019 21:44:30"
   Given I wait for "5" seconds
   Given I populate field type "FILE_UPLOAD" named "[1]" with "C:\Users\swetar.VURAM.000\Documents\C_TESTESTEST_,.)(123&%$!_TESTESTEST DOC2.pdf"
   When I wait for "3" seconds
   When I click on button "SEND TO TREASURY TEAM"
   When I click on button "YES"
   Then I wait for "5" seconds
   
  #Navigate to Records and Check for Fullfilment details dashboard
   Given I click on site page "CLIENT SERVICE REQUESTS"
   Given I wait for "5" seconds
   Given I populate field "Search" with "1909-8503"
   Given I wait for "5" seconds
   Given I clear field "Status"
   Given I wait for "5" seconds
   Given I populate field "Status" with "Pending Functional Team Response"
   Given I wait for "5" seconds 
   Given I populate field "Type" with "Capital Calls"
   Given I wait for "5" seconds
   Given I sort grid "[1]" by column "[3]"
   Given I wait for "5" seconds
   Given I sort grid "[1]" by column "[3]"
   Given I wait for "5" seconds
   Given I verify grid "[1]" column "[6]" row "[1]" contains "Capital Calls"
   Given I wait for "4" seconds
   Given I verify grid "[1]" column "[10]" row "[1]" contains "Pending Functional Team Response"
   Given I wait for "5" seconds
   Given I click on grid "[1]" column "[3]" row "[1]"
   Given I wait for "10" seconds
   Given I click on link "Fulfillment Details"
   Given I wait for "10" seconds
   Given I toggle box "Request Fulfillment Details" visibility
   Given I wait for "2" seconds
   Given I toggle box "Request Fulfillment Details" visibility
   Given I wait for "5" seconds
   Given I verify grid "[1]" column "[11]" row "[1]" contains "Pending Response"
   Given I wait for "5" seconds
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
   Then I logout
   Then I tear down

