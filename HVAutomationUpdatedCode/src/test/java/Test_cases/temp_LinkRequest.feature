@LinkRequest
Feature: Update status related action submission with status cancel

  Background: Login to LH Test environment
Given I setup with "CHROME" browser
When I set appian URL to "https://harbourvesttest.appiancloud.com/suite/portal/login.jsp"
And I set appian version to "19.2"
And I set appian locale to "en_US"
Then I login with username "csaUser1"
  

Scenario: Link the request Initiated
Given I open "https://harbourvesttest.appiancloud.com/suite/sites/client-service"
Given I wait for "8" seconds 
Given I click on site page "CLIENT SERVICE REQUESTS"
Given I wait for "8" seconds
Given I clear field "Select Filter Set(s)"
       
   #Click on the task
Given I wait for "5" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "4" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "6" seconds
Given I click on grid "[1]" column "[3]" row "[1]"
Given I wait for "10" seconds
    
#Navigate to link request related action, verify the pagination and sorting of Request details grid
Given I click on link "Related Actions"
Given I wait for "6" seconds
Given I click on link "Link/Unlink Requests"
Given I wait for "10" seconds
Given I click on grid "[1]" column "[1]" row "[1]"
Given I click on grid "[1]" column "[1]" row "[1]"
Given I click on grid "[1]" column "[2]" row "[1]"
Given I click on grid "[1]" column "[2]" row "[1]"
Given I click on grid "[1]" column "[3]" row "[1]"
Given I click on grid "[1]" column "[3]" row "[1]"
Given I click on grid "[1]" column "[4]" row "[1]"
Given I click on grid "[1]" column "[4]" row "[1]"
Given I click on grid "[1]" column "[5]" row "[1]"
Given I click on grid "[1]" column "[5]" row "[1]"
Given I click on grid "[1]" column "[6]" row "[1]"
Given I click on grid "[1]" column "[6]" row "[1]"
Given I click on grid "[1]" column "[7]" row "[1]"
Given I click on grid "[1]" column "[7]" row "[1]"
Given I wait for "5" seconds
Given I click on grid "[1]" navigation "next"
Given I click on grid "[1]" navigation "last"
Given I click on grid "[1]" navigation "previous"
Given I click on grid "[1]" navigation "first"
Given I wait for "5" seconds
    
#Click on link request, check sorting in newly linked requests and remove the row from the grid
Given I click on grid "[1]" column "[10]" row "[2]"
Given I wait for "5" seconds
Given I click on grid "[2]" column "[1]" row "[1]"
Given I click on grid "[2]" column "[1]" row "[1]"
Given I click on grid "[2]" column "[2]" row "[1]"
Given I click on grid "[2]" column "[2]" row "[1]"
Given I click on grid "[2]" column "[3]" row "[1]"
Given I click on grid "[2]" column "[3]" row "[1]"
Given I click on grid "[2]" column "[4]" row "[1]"
Given I click on grid "[2]" column "[4]" row "[1]"
Given I click on grid "[2]" column "[5]" row "[1]"
Given I click on grid "[2]" column "[5]" row "[1]"
Given I click on grid "[2]" column "[6]" row "[1]"
Given I click on grid "[2]" column "[6]" row "[1]"
Given I click on grid "[2]" column "[7]" row "[1]"
Given I click on grid "[2]" column "[7]" row "[1]"
Given I wait for "5" seconds
Given I click on grid "[2]" column "[10]" row "[2]"
Given I wait for "5" seconds

#Search for required request id, request type and request owner
Given I populate field "Request ID" with "8642"
Given I wait for "2" seconds
Given I populate field "Request Type" with "Compliance"
Given I wait for "2" seconds
Given I populate field "Request Owner" with "CSA User 1"
Given I wait for "5" seconds

#Click on link request
Given I click on grid "[1]" column "[10]" row "[1]"
Given I wait for "5" seconds

#Verfiy that cancel buttion is present and then click on complete button to submit
Given I verify button "CANCEL" is present
Given I wait for "5" seconds
Given I click on button "COMPLETE"
Given I wait for "5" seconds
Given I click on button "Yes"
Given I wait for "10" seconds

#I verify the status in Records
    Given I click on site page "CLIENT SERVICE REQUESTS"
    Given I wait for "5" seconds
    Given I clear field "Select Filter Set(s)"
    Given I wait for "6" seconds
    Given I sort grid "[1]" by column "Request Id"
    Given I wait for "5" seconds
    Given I sort grid "[1]" by column "Request Id"
    Given I wait for "5" seconds
    Given I verify grid "[1]" column "[10]" row "[1]" contains "Pending Functional Team Response" 
    
 #Navigate to summary dashboard and verify the Request details and functional team details
 Given I click on grid "[1]" column "[3]" row "[1]"
 Given I wait for "4" seconds
 
 #Navigate to Emails dashboard and verify
 Given I click on link "Link Requests"
  Given I wait for "6" seconds

    
    #Logout and then close the browser
    Given I logout
    Given I tear down

