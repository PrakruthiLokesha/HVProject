$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("src/test/java/testcases/temp_SendBackTaskAssignedtoFunctionalTeam.feature");
formatter.feature({
  "name": "Send back the task to CSA Team User which assigned to Functional Team-Treasury",
  "description": "",
  "keyword": "Feature",
  "tags": [
    {
      "name": "@SendBackFunctionalTeamTask"
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
  "name": "I login with username \"treasuryUser1\"",
  "keyword": "Then "
});
formatter.match({
  "location": "CucumberBaseFixture.loginWithUsername(String)"
});
formatter.result({
  "status": "passed"
});
formatter.scenario({
  "name": "Accept the task assigned to Functional Team and then Send Back the task",
  "description": "",
  "keyword": "Scenario",
  "tags": [
    {
      "name": "@SendBackFunctionalTeamTask"
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
  "name": "I click on link \"Add\"",
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
  "name": "I populate field \"Filter Set Name\" with \"Test the Filter- 09/12/2019 21:44:30\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.populateFieldWith(String,String)"
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
  "name": "I populate field \"Type\" with \"Capital Calls\"",
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
  "name": "I click on link \"Today[2]\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnLink(String)"
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
  "name": "I click on link \"Save\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnLink(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I click on button \"My Group Tasks\"",
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
  "name": "I wait for \"4\" seconds",
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
  "name": "I wait for \"4\" seconds",
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
  "name": "I wait for \"4\" seconds",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I click on button \"ACCEPT\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnButton(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for \"4\" seconds",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I populate field type \"PARAGRAPH\" named \"[1]\" with \"Enter this Comments while sending back - 09/12/2019 21:44:30\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.populateFieldWith(String,String,String)"
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
  "name": "I populate field type \"FILE_UPLOAD\" named \"[1]\" with \"C:\\Users\\swetar.VURAM.000\\Documents\\C_TESTESTEST_,.)(123\u0026%$!_TESTESTEST DOC2.pdf\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.populateFieldWith(String,String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for \"7\" seconds",
  "keyword": "When "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I click on button \"SEND BACK\"",
  "keyword": "Then "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnButton(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I click on button \"YES\"",
  "keyword": "Then "
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
  "name": "I populate field \"Type\" with \"Capital Calls\"",
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
  "name": "I sort grid \"[1]\" by column \"Request Id\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.sortGridByColumn(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for \"4\" seconds",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I sort grid \"[1]\" by column \"Request Id\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.sortGridByColumn(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for \"4\" seconds",
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
  "name": "I click on link \"Fulfillment Details\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnLink(String)"
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
  "name": "I sort grid \"[1]\" by column \"Completed On\"",
  "keyword": "When "
});
formatter.match({
  "location": "CucumberTempoFixture.sortGridByColumn(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for \"10\" seconds",
  "keyword": "Then "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I verify grid \"[1]\" column \"[11]\" row \"[1]\" contains \"Sent for Revision\"",
  "keyword": "Then "
});
formatter.match({
  "location": "CucumberTempoFixture.verifyGridColumnRowContains(String,String,String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for \"10\" seconds",
  "keyword": "Then "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I click on grid \"[1]\" column \"[12]\" row \"[1]\"",
  "keyword": "Then "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnGridColumnRow(String,String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I toggle box \"[2]\" visibility",
  "keyword": "Then "
});
formatter.match({
  "location": "CucumberTempoFixture.toggleBoxVisibility(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for \"3\" seconds",
  "keyword": "Then "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I toggle box \"[2]\" visibility",
  "keyword": "Then "
});
formatter.match({
  "location": "CucumberTempoFixture.toggleBoxVisibility(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for \"3\" seconds",
  "keyword": "Then "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I verify grid \"[2]\" column \"[8]\" row \"[2]\" contains \"Completed\"",
  "keyword": "Then "
});
formatter.match({
  "location": "CucumberTempoFixture.verifyGridColumnRowContains(String,String,String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for \"2\" seconds",
  "keyword": "Then "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I click on grid \"[2]\" column \"[9]\" row \"[2]\"",
  "keyword": "Then "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnGridColumnRow(String,String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for \"3\" seconds",
  "keyword": "Then "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I verify grid \"[2]\" column \"[9]\" row \"[2]\" contains \"Enter this Comments while sending back - 09/12/2019 21:44:30\"",
  "keyword": "Then "
});
formatter.match({
  "location": "CucumberTempoFixture.verifyGridColumnRowContains(String,String,String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for \"3\" seconds",
  "keyword": "Then "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I sort grid \"[2]\" by column \"Task Name\"",
  "keyword": "Then "
});
formatter.match({
  "location": "CucumberTempoFixture.sortGridByColumn(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for \"3\" seconds",
  "keyword": "Then "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I sort grid \"[2]\" by column \"Initial Assignment\"",
  "keyword": "Then "
});
formatter.match({
  "location": "CucumberTempoFixture.sortGridByColumn(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for \"3\" seconds",
  "keyword": "Then "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I sort grid \"[2]\" by column \"Assigned On\"",
  "keyword": "Then "
});
formatter.match({
  "location": "CucumberTempoFixture.sortGridByColumn(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for \"3\" seconds",
  "keyword": "Then "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I sort grid \"[2]\" by column \"Currently Assigned To\"",
  "keyword": "Then "
});
formatter.match({
  "location": "CucumberTempoFixture.sortGridByColumn(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for \"3\" seconds",
  "keyword": "Then "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I sort grid \"[2]\" by column \"Owner Assigned On\"",
  "keyword": "Then "
});
formatter.match({
  "location": "CucumberTempoFixture.sortGridByColumn(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for \"3\" seconds",
  "keyword": "Then "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I sort grid \"[2]\" by column \"Completed By\"",
  "keyword": "Then "
});
formatter.match({
  "location": "CucumberTempoFixture.sortGridByColumn(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for \"3\" seconds",
  "keyword": "Then "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I sort grid \"[2]\" by column \"Completed On\"",
  "keyword": "Then "
});
formatter.match({
  "location": "CucumberTempoFixture.sortGridByColumn(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for \"3\" seconds",
  "keyword": "Then "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I sort grid \"[2]\" by column \"Status\"",
  "keyword": "Then "
});
formatter.match({
  "location": "CucumberTempoFixture.sortGridByColumn(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for \"3\" seconds",
  "keyword": "Then "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I sort grid \"[2]\" by column \"Comments\"",
  "keyword": "Then "
});
formatter.match({
  "location": "CucumberTempoFixture.sortGridByColumn(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for \"3\" seconds",
  "keyword": "Then "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I logout",
  "keyword": "Then "
});
formatter.match({
  "location": "CucumberTempoFixture.logout()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I tear down",
  "keyword": "Then "
});
formatter.match({
  "location": "CucumberBaseFixture.tearDown()"
});
formatter.result({
  "status": "passed"
});
});