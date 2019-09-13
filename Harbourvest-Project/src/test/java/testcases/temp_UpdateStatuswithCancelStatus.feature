@UpdateStatuswithCancelStatus
Feature: Update status related action submission with status cancel

  Configuring your site with the sample application:
  1. Import the applicable version of Automated Testing - XX.X.zip application, provided in the Shared Components page, into your Appian environment
  2. Log into Appian Designer view on your Appian environment and import the downloaded application zip
  3. After import is complete, click on the Automated Testing application
  4. Find and click on the AUT DS object to open the Appian Data Store Designer
  5. Verify the entity mappings under Schema Management and then Save & Publish the data store

  Prerequisites for running the test on the configured site above:
  1. Run the appropriate setupCustomPropertiesFor... script
  2. Replace BROWSER with either FIREFOX or CHROME
  3. Replace APPIAN_URL with your Appian site URL, beginning with https:// and including /suite at the end (e.g. https://forum.appian.com/suite)
  4. Replace APPIAN_VERSION with (17.2, 17.3, 17.4, 18.1, 18.2, 18.3 or 18.4)
  5. Replace APPIAN_LOCALE with either "en_US" or "en_GB"
  5. Replace APPIAN_USERNAME with a valid username for Appian URL above
  6. Open src/main/resources/configs/users.properties and add a line for the above username that is of the form username=password (e.g. test.user=password)
  7. Open src/main/resources/configs/variables.properties

  Background: Login to Appian environment
    Given I setup with "CHROME" browser
    When I set appian URL to "https://harbourvesttest.appiancloud.com/suite/portal/login.jsp"
    And I set appian version to "18.4"
    And I set appian locale to "en_US"
    Given I login with username "csaUser1"
    Given I set screenshot path to "C:\\Users\\prakruthil\\git\\HVProject\\Harbourvest-Project\\Screenshots/"
 
   @Test
  Scenario: Fill out Automated Testing Data to update the status of the request with cancel status
    
    #Open client service site  
    Given I wait for "5" seconds
    Given I open "https://harbourvesttest.appiancloud.com/suite/sites/client-service"
    Given I wait for "5" seconds
    
    #Click on client service request site page
    Given I click on site page "CLIENT SERVICE REQUEST"
    Given I wait for "5" seconds
    
    #Select the record to update status
    Given I click on grid "[1]" column "[3]" row "[2]"
    #Given I open "https://harbourvesttest.appiancloud.com/suite/sites/client-service/page/client-service-requests/record/lUBfsMZM-I0--5FqVTNDp5aJ9ZmNSvOCpmbXr_hU_9A1mMudqUiMYDVB-0VO8f_RzndI8vUblG_ScN7k7hhvohKZsMzIeHFyvDhdHoIBqO3p6yGy2ei/view/summary"
    Given I wait for "5" seconds
    
    #Navigate to update status related action, select cancel status and then enter comments for the same
    Given I click on record related action "Update Status"
    Given I wait for "5" seconds
    Given I click on radio option "Cancel"
    Given I wait for "5" seconds
    Given I populate field "Comments" with "Updating Status"
    
    #Select the issue checkbox and then enter the issue description
    Given I click on checkbox option "[1]"
    Given I wait for "5" seconds
    Given I populate field "Issue Description" with "Issue with Client Data"
    Given I wait for "5" seconds
    
    #Verfiy that cancel buttion is present and then click on complete button to submit
    Given I verify button "CANCEL" is present
    Given I click on button "COMPLETE"
    Given I wait for "5" seconds
    Given I click on button "YES"
    Given I wait for "10" seconds
    Given I take screenshot "Cancel Status"
    
    #Logout and then close the browser
    Given I logout
    Given I tear down

