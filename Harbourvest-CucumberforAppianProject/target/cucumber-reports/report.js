$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("src/test/java/testcases/temp_RespondRelatedAction.feature");
formatter.feature({
  "name": "Attach Documents to Client Service Request using Related Action-Attach Documents",
  "description": "",
  "keyword": "Feature",
  "tags": [
    {
      "name": "@RespondtoEmail"
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
  "name": "Using Add Notes Related Action, Attach Documents to Client Service Request",
  "description": "",
  "keyword": "Scenario",
  "tags": [
    {
      "name": "@RespondtoEmail"
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
  "name": "I populate field \"Search\" with \"1909-8490\"",
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
  "name": "I click on record related action \"Respond\"",
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
  "name": "I click on checkbox option \"High\"",
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
  "name": "I toggle box \"Email[2]\" visibility",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.toggleBoxVisibility(String)"
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
  "name": "I populate field type \"TEXT\" named \"[1]\" with \"swetar@vuram.com\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.populateFieldWith(String,String,String)"
});
formatter.result({
  "error_message": "com.appiancorp.ps.automatedtest.exception.GenericTestException: message:\u003c\u003cAn error has occurred: Populate Field - [1] - swetar@vuram.com\u003e\u003e\r\n\tat com.appiancorp.ps.automatedtest.exception.ExceptionBuilder.build(ExceptionBuilder.java:78)\r\n\tat com.appiancorp.ps.automatedtest.tempo.interfaces.TempoFieldFactory.populate(TempoFieldFactory.java:89)\r\n\tat com.appiancorp.ps.automatedtest.tempo.interfaces.TempoFieldFactory.populateMultiple(TempoFieldFactory.java:61)\r\n\tat com.appiancorp.ps.automatedtest.tempo.interfaces.TempoFieldFactory.populateMultiple(TempoFieldFactory.java:39)\r\n\tat com.appiancorp.ps.automatedtest.fixture.TempoFixture.populateFieldWith(TempoFixture.java:1155)\r\n\tat com.appiancorp.ps.cucumber.fixtures.CucumberTempoFixture.populateFieldWith(CucumberTempoFixture.java:347)\r\n\tat ✽.I populate field type \"TEXT\" named \"[1]\" with \"swetar@vuram.com\"(src/test/java/testcases/temp_RespondRelatedAction.feature:28)\r\n",
  "status": "failed"
});
formatter.step({
  "name": "I wait for \"5\" seconds",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I populate field type \"TEXT\" named \"[2]\" with \"prakruthil@vuram.com\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.populateFieldWith(String,String,String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I wait for \"5\" seconds",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I populate field type \"TEXT\" named \"[3]\" with \"Enter this comments to check the email subject - 09/12/2019 12:43:48\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.populateFieldWith(String,String,String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I wait for \"5\" seconds",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I populate field type \"PARAGRAPH\" named \"[1]\" with \"Enter this comments to check the email body - 09/12/2019 12:43:48\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.populateFieldWith(String,String,String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I wait for \"5\" seconds",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I populate field type \"FILE_UPLOAD\" named \"Add Attachments\" with \"C:\\Users\\swetar.VURAM.000\\Documents\\C_TESTESTEST_,.)(123\u0026%$!_TESTESTEST DOC2.pdf\"",
  "keyword": "When "
});
formatter.match({
  "location": "CucumberTempoFixture.populateFieldWith(String,String,String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I wait for \"5\" seconds",
  "keyword": "When "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I populate grid \"[1]\" column \"[1]\" row \"[1]\" with \"Document Uploaded\"",
  "keyword": "When "
});
formatter.match({
  "location": "CucumberTempoFixture.populateGridColumnRowWith(String,String,String,String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I click on radio option \"[2]\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnRadioOption(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I wait for \"5\" seconds",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I click on button \"SEND\"",
  "keyword": "Then "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnButton(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I click on button \"YES\"",
  "keyword": "Then "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnButton(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I wait for \"10\" seconds",
  "keyword": "Then "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I click on link \"Documents\"",
  "keyword": "Then "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnLink(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I wait for \"10\" seconds",
  "keyword": "Then "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I populate field \"[2]\" with \"Outgoing Email Attachments\"",
  "keyword": "Then "
});
formatter.match({
  "location": "CucumberTempoFixture.populateFieldWith(String,String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I wait for \"5\" seconds",
  "keyword": "Then "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I verify grid \"[1]\" column \"[1]\" row \"[1]\" contains \"Document Uploaded\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.verifyGridColumnRowContains(String,String,String,String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I wait for \"5\" seconds",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I verify grid \"[1]\" column \"[2]\" row \"[1]\" contains \"Outgoing Email Attachments\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.verifyGridColumnRowContains(String,String,String,String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I wait for \"2\" seconds",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I sort grid \"[1]\" by column \"Documents\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.sortGridByColumn(String,String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I wait for \"2\" seconds",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I sort grid \"[1]\" by column \"Category\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.sortGridByColumn(String,String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I wait for \"5\" seconds",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I sort grid \"[1]\" by column \"Uploaded By\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.sortGridByColumn(String,String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I wait for \"5\" seconds",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I sort grid \"[1]\" by column \"Uploaded On\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.sortGridByColumn(String,String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I wait for \"5\" seconds",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I populate field \"[2]\" with \"Incoming Email Attachments\"",
  "keyword": "Then "
});
formatter.match({
  "location": "CucumberTempoFixture.populateFieldWith(String,String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I wait for \"5\" seconds",
  "keyword": "Then "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I click on button \"CLEAR\"",
  "keyword": "Then "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnButton(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I wait for \"5\" seconds",
  "keyword": "Then "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "skipped"
});
});