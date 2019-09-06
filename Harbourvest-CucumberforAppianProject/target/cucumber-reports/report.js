$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("src/test/java/testcases/temp_AddNotesRelatedAction.feature");
formatter.feature({
  "name": "Add Notes to Client Service Request using Related Action-Add Notes",
  "description": "",
  "keyword": "Feature",
  "tags": [
    {
      "name": "@AddNotes"
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
  "name": "Using Add Notes Related Action,",
  "description": "",
  "keyword": "Scenario",
  "tags": [
    {
      "name": "@AddNotes"
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
  "name": "I populate field \"Search\" with \"1909\"",
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
  "name": "I click on record related action \"Add Notes\"",
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
  "name": "I toggle box \"Enter Notes\" visibility",
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
  "name": "I toggle box \"Enter Notes\" visibility",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.toggleBoxVisibility(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I populate picker field \"Tag People\" with partially matching suggestions for",
  "rows": [
    {
      "cells": [
        "csa"
      ]
    },
    {
      "cells": [
        "test"
      ]
    }
  ],
  "keyword": "When "
});
formatter.match({
  "location": "CucumberTempoFixture.populateFieldWithPartiallyMatchingPickerFieldSuggestion(String,String\u003e)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I populate field \"Notes\" with \"Comments\"",
  "keyword": "When "
});
formatter.match({
  "location": "CucumberTempoFixture.populateFieldWith(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I verify button \"CANCEL\" is present",
  "keyword": "Then "
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
  "name": "I click on link \"Notes/Discussions\"",
  "keyword": "Then "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnLink(String)"
});
formatter.result({
  "status": "passed"
});
});ng)"
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
  "name": "I click on grid \"[1]\" column \"[3]\" row \"[1]\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnGridColumnRow(String,String,String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I wait for \"10\" seconds",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberBaseFixture.waitForSeconds(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I click on link \"Related Actions\"",
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
  "name": "I click on record related action \"Add Notes\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnRecordRelatedAction(String)"
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
  "name": "I toggle box \"Enter Notes\" visibility",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.toggleBoxVisibility(String)"
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
  "name": "I toggle box \"Enter Notes\" visibility",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.toggleBoxVisibility(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I populate picker field \"Tag People\" with partially matching suggestions for",
  "rows": [
    {
      "cells": [
        "csa"
      ]
    },
    {
      "cells": [
        "test"
      ]
    }
  ],
  "keyword": "When "
});
formatter.match({
  "location": "CucumberTempoFixture.populateFieldWithPartiallyMatchingPickerFieldSuggestion(String,String\u003e)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I populate field \"Notes\" with \"Comments\"",
  "keyword": "When "
});
formatter.match({
  "location": "CucumberTempoFixture.populateFieldWith(String,String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I verify verify button \"CANCEL\" is present",
  "keyword": "Then "
});
formatter.match({});
formatter.result({
  "status": "undefined"
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
  "name": "I click on link \"Notes/Discussions\"",
  "keyword": "Then "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnLink(String)"
});
formatter.result({
  "status": "skipped"
});
});