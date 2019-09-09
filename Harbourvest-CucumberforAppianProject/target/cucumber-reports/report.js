$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("src/test/java/testcases/temp_ReplyOnAddedNotesByTaggedUser_My DiscussionsunderTasksTab.feature");
formatter.feature({
  "name": "Reply to Notes/Discussions By tagged User",
  "description": "",
  "keyword": "Feature",
  "tags": [
    {
      "name": "@ReplyOnAddedNotesByTaggedUserusingTasksTab"
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
  "name": "Reply on added notes/discussion",
  "description": "",
  "keyword": "Scenario",
  "tags": [
    {
      "name": "@ReplyOnAddedNotesByTaggedUserusingTasksTab"
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
  "name": "I click on button \"MY DISCUSSIONS\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnButton(String)"
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
  "name": "I populate field \"Request Id\" with \"8259\"",
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
  "name": "I click on grid \"[1]\" column \"[10]\" row \"[4]\"",
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
  "name": "I populate field \"Notes\" with \"Enter this notes when user reply on added notes-09/09/2019 20:13:47\"",
  "keyword": "When "
});
formatter.match({
  "location": "CucumberTempoFixture.populateFieldWith(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for \"2\" seconds",
  "keyword": "When "
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
  "name": "I click on button \"SUBMIT\"",
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
  "name": "I click on grid \"[1]\" column \"[9]\" row \"[4]\"",
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
  "name": "I toggle box \"Discussion History\" visibility",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.toggleBoxVisibility(String)"
});
formatter.result({
  "error_message": "com.appiancorp.ps.automatedtest.exception.TimeoutTestException: message:\u003c\u003cTimeout period reached: Box\u003e\u003e\r\n\tat com.appiancorp.ps.automatedtest.exception.ExceptionBuilder.build(ExceptionBuilder.java:35)\r\n\tat com.appiancorp.ps.automatedtest.tempo.interfaces.TempoBoxToggle.waitFor(TempoBoxToggle.java:51)\r\n\tat com.appiancorp.ps.automatedtest.fixture.TempoFixture.toggleBoxVisibility(TempoFixture.java:1243)\r\n\tat com.appiancorp.ps.cucumber.fixtures.CucumberTempoFixture.toggleBoxVisibility(CucumberTempoFixture.java:362)\r\n\tat ✽.I toggle box \"Discussion History\" visibility(src/test/java/testcases/temp_ReplyOnAddedNotesByTaggedUser_My DiscussionsunderTasksTab.feature:36)\r\n",
  "status": "failed"
});
formatter.step({
  "name": "I wait for \"3\" seconds",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I toggle box \"Discussion History\" visibility",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.toggleBoxVisibility(String)"
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
  "name": "I populate field \"Search Notes[2]\" with \"Enter this notes when user reply on added notes-09/09/2019 20:13:47\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.populateFieldWith(String,String)"
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
  "name": "I click on button \"CLEAR FILTERS[2]\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnButton(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I populate field \"Sort By\" with \"Older First\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.populateFieldWith(String,String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I wait for \"3\" seconds",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I populate field \"Sort By\" with \"Newest First\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.populateFieldWith(String,String)"
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
  "name": "I click on link \"+ Reply\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnLink(String)"
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
  "name": "I populate field \"Notes\" with \"Enter this notes when user reply on added notes-09/09/2019 20:13:47\"",
  "keyword": "When "
});
formatter.match({
  "location": "CucumberTempoFixture.populateFieldWith(String,String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I wait for \"2\" seconds",
  "keyword": "When "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I verify button \"CANCEL\" is present",
  "keyword": "When "
});
formatter.match({
  "location": "CucumberTempoFixture.verifyButtonIsPresent(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I click on button \"SUBMIT\"",
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