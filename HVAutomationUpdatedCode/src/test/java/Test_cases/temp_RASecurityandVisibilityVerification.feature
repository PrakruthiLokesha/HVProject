@SecurityandVisibilityCheckforRelatedActions
Feature: Security and visibility of related actions using functional team member

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
    When I set appian URL to "$$$HVUrl$$$"
    And I set appian version to "$$$AppVer$$$"
    And I set appian locale to "en_US"
    Given I login with username "$$$treasuryUser1$$$"
 
    Scenario: Security and visibility of related actions
    
    #Open client service site  
    Given I wait for "5" seconds
    Given I open "$$$CSAURL$$$"
    Given I wait for "5" seconds
    
    #Click on client service request site page
    Given I click on site page "$$$ClientServiceRequest$$$"
    Given I wait for "5" seconds
    
    #Select the record to navigate inside it
    Given I click on grid "[1]" column "[3]" row "[2]"
    Given I wait for "5" seconds
    
    #Navigate to record nad validate which all the related action are available
    Given I verify record related action "$$$LINK/UNLINKREQUESTS$$$" is not present
    Given I wait for "5" seconds
    Given I verify record related action "$$$UpdateStatus$$$" is not present
    Given I wait for "5" seconds
    Given I verify record related action "$$$Respond$$$" is not present
    Given I wait for "5" seconds
    Given I verify record related action "$$$ADDRECURRENCE$$$" is not present
    Given I wait for "5" seconds
    Given I verify record related action "$$$REOPENREQUEST$$$" is not present
    Given I wait for "5" seconds
    Given I verify record related action "$$$MANAGETEAMS$$$" is not present
    Given I wait for "5" seconds
    Given I verify record related action "$$$EDITREQUEST$$$" is not present
    Given I wait for "5" seconds
    Given I verify record related action "$$$AddNotes$$$" is present
    Given I wait for "5" seconds
    Given I verify record related action "$$$AttachDocuments$$$" is present
    Given I wait for "5" seconds
    
    #Logout and then close the browser
    Given I logout
    Given I tear down 
    

