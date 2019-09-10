$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("src/test/java/testcases/temp_ManageTeamRelatedAction-NeedtoAdd_AdditionalTeams.feature");
formatter.feature({
  "name": "Add Another Functional Team using Manage Teams Related Action- Need to give proper index",
  "description": "",
  "keyword": "Feature",
  "tags": [
    {
      "name": "@ManageTeams-AddNewTeams"
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
  "name": "I set appian version to \"19.2\"",
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
  "keyword": "Then "
});
formatter.match({
  "location": "CucumberBaseFixture.loginWithUsername(String)"
});
formatter.result({
  "status": "passed"
});
formatter.scenario({
  "name": "Using Manage Teams Related Action, Add other Functional Teams",
  "description": "",
  "keyword": "Scenario",
  "tags": [
    {
      "name": "@ManageTeams-AddNewTeams"
    }
  ]
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
  "name": "I click on site page \"CLIENT SERVICE REQUESTS\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberSitesFixture.clickOnSitePage(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I populate field \"Search\" with \"1909-8476\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.populateFieldWith(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for \"2\" seconds",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I clear field \"Status\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.clearField(String)"
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
  "name": "I click on grid \"[1]\" column \"[3]\" row \"[1]\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnGridColumnRow(String,String,String)"
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
  "name": "I click on link \"Related Actions\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnLink(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for \"2\" seconds",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I click on record related action \"Manage Teams\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnRecordRelatedAction(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for \"2\" seconds",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I click on link \"Add Functional Team\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnLink(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for \"2\" seconds",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I populate grid \"[1]\" column \"[1]\" row \"[2]\" with partially matching picker field suggestions for \"Tax\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.populateGridColumnRowWithPartiallyMatchingPickerFieldSuggestion(String,String,String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for \"3\" seconds",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I populate grid \"[1]\" column \"[4]\" row \"[2]\" with \" Enter this comments to check the comments field - 09/10/2019 16:42:23\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.populateGridColumnRowWith(String,String,String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for \"3\" seconds",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I verify grid \"[1]\" column \"[5]\" row \"[2]\" contains \"Added\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.verifyGridColumnRowContains(String,String,String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for \"3\" seconds",
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
  "keyword": "When "
});
formatter.match({
  "location": "CucumberTempoFixture.verifyButtonIsPresent(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for \"3\" seconds",
  "keyword": "When "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I click on button \"COMPLETE\"",
  "keyword": "When "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnButton(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I click on button \"YES\"",
  "keyword": "When "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnButton(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for \"5\" seconds",
  "keyword": "Then "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I click on link \"Fulfillment Details\"",
  "keyword": "Then "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnLink(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for \"5\" seconds",
  "keyword": "Then "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I toggle box \"Request Fulfillment Details\" visibility",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.toggleBoxVisibility(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for \"2\" seconds",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I toggle box \"Request Fulfillment Details\" visibility",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.toggleBoxVisibility(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for \"2\" seconds",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I sort grid \"[1]\" by column \"Functional Team\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.sortGridByColumn(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for \"3\" seconds",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I sort grid \"[1]\" by column \"Recommended Person\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.sortGridByColumn(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for \"3\" seconds",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I sort grid \"[1]\" by column \"Comments\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.sortGridByColumn(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for \"3\" seconds",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I sort grid \"[1]\" by column \"Assigned By\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.sortGridByColumn(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for \"3\" seconds",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I sort grid \"[1]\" by column \"Assigned On\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.sortGridByColumn(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for \"3\" seconds",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I sort grid \"[1]\" by column \"Due Date\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.sortGridByColumn(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for \"3\" seconds",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I sort grid \"[1]\" by column \"Request Owner\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.sortGridByColumn(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for \"3\" seconds",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I sort grid \"[1]\" by column \"Task Owner\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.sortGridByColumn(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for \"3\" seconds",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I sort grid \"[1]\" by column \"Status\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.sortGridByColumn(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for \"3\" seconds",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I click on grid \"[1]\" column \"[12]\" row \"[1]\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnGridColumnRow(String,String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for \"3\" seconds",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I toggle box \"[2]\" visibility",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.toggleBoxVisibility(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for \"3\" seconds",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I toggle box \"[2]\" visibility",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.toggleBoxVisibility(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I sort grid \"[2]\" by column \"Task Name\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.sortGridByColumn(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for \"3\" seconds",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I sort grid \"[2]\" by column \"Initial Assignment\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.sortGridByColumn(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for \"3\" seconds",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I sort grid \"[2]\" by column \"Assigned On\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.sortGridByColumn(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for \"3\" seconds",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I sort grid \"[2]\" by column \"Currently Assigned To\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.sortGridByColumn(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for \"3\" seconds",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I sort grid \"[2]\" by column \"Owner Assigned On\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.sortGridByColumn(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for \"3\" seconds",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I sort grid \"[2]\" by column \"Completed By\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.sortGridByColumn(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for \"3\" seconds",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I sort grid \"[2]\" by column \"Completed On\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.sortGridByColumn(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for \"3\" seconds",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I sort grid \"[2]\" by column \"Status\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.sortGridByColumn(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for \"3\" seconds",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I sort grid \"[2]\" by column \"Comments\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.sortGridByColumn(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for \"3\" seconds",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I click on link \"Close\"",
  "keyword": "Then "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnLink(String)"
});
formatter.result({
  "status": "passed"
});
});