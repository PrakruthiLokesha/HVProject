@1.2.3cAcknowledgeAndCloseReviewCommentsFromFTTask
  Feature: Acknowledge and close tyhe Review Comments from Functional Team Task 

  Background: Login to LH Test environment
    Given I setup with "$$$CHROME$$$" browser
    When I set appian URL to "$$$HVTestUrl$$$"
    And I set appian version to "$$$Appver$$$"
    And I set appian locale to "$$$en_US$$$"
    Then I login with username "$$$CsaUser$$$"
  
Scenario: Acknowledge and close tyhe Review Comments from Functional Team Task 
    # Add a new filter set and save
Given I open "$$$CSUrl$$$"
Given I wait for "8" seconds 
Given I clear field "Select Filter Set(s)"

#Click on the Review Comments from Functional Team
Given I wait for "8" seconds
Given I sort grid "[1]" by column "Assigned On"
    Given I wait for "4" seconds
    Given I sort grid "[1]" by column "Assigned On"
    Given I wait for "4" seconds
    Given I click on grid "[1]" column "[3]" row "[1]"
Given I wait for "8" seconds

#Navigate to Request Details tab and verify the Request details and functional team details
  Given I wait for "5" seconds
 When I click on button "REQUEST DETAILS"
 Given I wait for "5" seconds
 Given I verify field "Priority" contains "$$$Priority$$$"
 Given I wait for "5" seconds
 Given I verify field "Request Type(s)" contains "$$$RequestType(s)$$$"
 Given I wait for "5" seconds
 Given I verify field "Description" contains "$$$Description$$$"
  Given I wait for "6" seconds
Given I verify grid "[2]" column "[1]" row "[1]" contains "$$$FunctionalTeam1$$$"
Given I wait for "4" seconds
Given I verify grid "[2]" column "[3]" row "[1]" contains "$$$FTComments$$$"
 Given I wait for "3" seconds
 Given I verify grid "[2]" column "[6]" row "[1]" contains "$$$Duedate$$$"
 Given I wait for "3" seconds
 Given I verify grid "[2]" column "[11]" row "[1]" contains "Sent for Revision" 
 Given I click on grid "[2]" column "[12]" row "[1]"
 Given I wait for "5" seconds
 Given I verify grid "[3]" column "[1]" row "[1]" contains "Review Comments from Compliance Team"
  Given I wait for "5" seconds
 Given I verify grid "[3]" column "[9]" row "[2]" contains "$$$CSARCComments$$$"
  Given I wait for "5" seconds
 Given I click on link "Close"
 Given I wait for "6" seconds 

#Navigate to Provide Comments tab
Given I click on button "PROVIDE COMMENTS"
Given I wait for "5" seconds
   
   #Acknowledge and close the task
   Given I populate field type "PARAGRAPH" named "[1]" with "$$$CSARCComments$$$"
   Given I wait for "5" seconds
   Given I populate field type "FILE_UPLOAD" named "[1]" with "$$$docPath$$$"
   Given I wait for "7" seconds
   When I wait for "3" seconds
   When I click on button "$$$ACKNOWLEDGE&CLOSE$$$"
  When I wait for "3" seconds
When I click on button "$$$confButtonYes$$$"
Then I wait for "8" seconds
   
   #Verify the Status of Request in Client Service Records
Given I wait for "5" seconds
   Given I click on site page "$$$Records$$$"
   Given I wait for "5" seconds
Given I clear field "Select Filter Set(s)"
Given I wait for "5" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "5" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "5" seconds
   Given I verify grid "[1]" column "[10]" row "[1]" contains "$$$Status6$$$"
   When I wait for "5" seconds
   Given I click on grid "[1]" column "[3]" row "[1]"
   Given I wait for "4" seconds
   When I click on link "Fulfillment Details"
   
    #Navigate to Fulfillment details dashbaord of Client Service Request
 Given I click on grid "[1]" column "[3]" row "[1]"
 Given I wait for "4" seconds
 When I click on link "Fulfillment Details"
 Given I verify grid "[1]" column "[1]" row "[1]" contains "$$$FunctionalTeam1$$$"
Given I wait for "4" seconds
Given I verify grid "[1]" column "[3]" row "[1]" contains "$$$FTComments$$$"
 Given I wait for "3" seconds
 Given I verify grid "[1]" column "[6]" row "[1]" contains "$$$Duedate$$$"
 Given I wait for "3" seconds
 Given I verify grid "[1]" column "[11]" row "[1]" contains "Completed"
 Given I wait for "3" seconds
 Given I click on grid "[1]" column "[12]" row "[1]"
 Given I wait for "6" seconds
 Given I verify grid "[2]" column "[1]" row "[1]" contains "Review Comments from Compliance Team"
 Given I wait for "4" seconds
 Given I verify grid "[2]" column "[9]" row "[1]" contains "$$$CSARCComments$$$"
  Given I click on link "Close[1]"
 Given I wait for "5" seconds
 Given I click on link "Close"
 Given I wait for "5" seconds
 
 # Observe in Audit History
 Given I click on link "Audit History"
 Given I wait for "4" seconds
 Given I sort grid "[1]" by column "Received On"
    Given I wait for "4" seconds
    Given I sort grid "[1]" by column "Received On"
    Given I wait for "4" seconds
Given I verify grid "[1]" column "[1]" row "[2]" contains "Review Comments from Compliance Team"
Given I wait for "4" seconds
Given I verify grid "[1]" column "[9]" row "[2]" contains "$$$CSARCComments$$$"
Given I wait for "4" seconds
Given I verify grid "[1]" column "[1]" row "[1]" contains "Close Request"
Then I logout
    Then I tear down

     