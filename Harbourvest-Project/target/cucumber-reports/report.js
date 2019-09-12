$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("src/test/java/testcases/temp_UpdateStatuswithCloseStatus.feature");
formatter.feature({
  "name": "Update status related action submission with status cancel",
  "description": "  Configuring your site with the sample application:\n  1. Import the applicable version of Automated Testing - XX.X.zip application, provided in the Shared Components page, into your Appian environment\n  2. Log into Appian Designer view on your Appian environment and import the downloaded application zip\n  3. After import is complete, click on the Automated Testing application\n  4. Find and click on the AUT DS object to open the Appian Data Store Designer\n  5. Verify the entity mappings under Schema Management and then Save \u0026 Publish the data store\n\n  Prerequisites for running the test on the configured site above:\n  1. Run the appropriate setupCustomPropertiesFor... script\n  2. Replace BROWSER with either FIREFOX or CHROME\n  3. Replace APPIAN_URL with your Appian site URL, beginning with https:// and including /suite at the end (e.g. https://forum.appian.com/suite)\n  4. Replace APPIAN_VERSION with (17.2, 17.3, 17.4, 18.1, 18.2, 18.3 or 18.4)\n  5. Replace APPIAN_LOCALE with either \"en_US\" or \"en_GB\"\n  5. Replace APPIAN_USERNAME with a valid username for Appian URL above\n  6. Open src/main/resources/configs/users.properties and add a line for the above username that is of the form username\u003dpassword (e.g. test.user\u003dpassword)\n  7. Open src/main/resources/configs/variables.properties",
  "keyword": "Feature",
  "tags": [
    {
      "name": "@UpdateStatuswithCloseStatus"
    }
  ]
});
formatter.background({
  "name": "Login to Appian environment",
  "description": "",
  "keyword": "Background"
});
formatter.step({
  "name": "I setup with \"CHROME\" browser",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberBaseFixture.setupWithBrowser(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I set appian URL to \"https://harbourvesttest.appiancloud.com/suite/portal/login.jsp\"",
  "keyword": "When "
});
formatter.match({
  "location": "CucumberBaseFixture.setAppianUrlTo(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I set appian version to \"18.4\"",
  "keyword": "And "
});
formatter.match({
  "location": "CucumberBaseFixture.setAppianVersionTo(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I set appian locale to \"en_US\"",
  "keyword": "And "
});
formatter.match({
  "location": "CucumberBaseFixture.setAppianLocaleTo(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I login with username \"csaUser1\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberBaseFixture.loginWithUsername(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I set screenshot path to \"C:\\\\Users\\\\prakruthil\\\\git\\\\HVProject\\\\Harbourvest-Project\\\\Screenshots/\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberBaseFixture.setScreenshotPathTo(String)"
});
formatter.result({
  "status": "passed"
});
formatter.scenario({
  "name": "Fill out Automated Testing Data to update the status of the request with close status",
  "description": "",
  "keyword": "Scenario",
  "tags": [
    {
      "name": "@UpdateStatuswithCloseStatus"
    },
    {
      "name": "@Test"
    }
  ]
});
formatter.step({
  "name": "I wait for \"5\" seconds",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I open \"https://harbourvesttest.appiancloud.com/suite/sites/client-service\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberBaseFixture.open(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for \"5\" seconds",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I click on site page \"CLIENT SERVICE REQUEST\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberSitesFixture.clickOnSitePage(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for \"5\" seconds",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I click on grid \"[1]\" column \"[3]\" row \"[2]\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnGridColumnRow(String,String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for \"5\" seconds",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I click on record related action \"Update Status\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnRecordRelatedAction(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for \"5\" seconds",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I click on radio option \"Close\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnRadioOption(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for \"5\" seconds",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I populate field \"Comments\" with \"Updating Status\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.populateFieldWith(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I click on checkbox option \"[1]\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnCheckboxOption(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for \"5\" seconds",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I populate field \"Issue Description\" with \"Issue with Client Data\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.populateFieldWith(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for \"5\" seconds",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I verify button \"CANCEL\" is present",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.verifyButtonIsPresent(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I click on button \"CLOSE\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnButton(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for \"5\" seconds",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I click on button \"YES\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnButton(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for \"10\" seconds",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I verify record related action \"Update Status\" is not present",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.verifyRecordRelatedActionIsNotPresent(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for \"5\" seconds",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I verify record related action \"ADD RECURRENCE\" is present",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.verifyRecordRelatedActionIsPresent(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for \"5\" seconds",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I verify record related action \"REOPEN REQUEST\" is present",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.verifyRecordRelatedActionIsPresent(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for \"10\" seconds",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I take screenshot \"Close Status\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberBaseFixture.takeScreenshot(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I logout",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.logout()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I tear down",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberBaseFixture.tearDown()"
});
formatter.result({
  "status": "passed"
});
});