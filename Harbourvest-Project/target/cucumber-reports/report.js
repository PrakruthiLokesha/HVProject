$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("src/test/java/testcases/temp_LinkRequest.feature");
formatter.feature({
  "name": "Update status related action submission with status cancel",
  "description": "  Configuring your site with the sample application:\n  1. Import the applicable version of Automated Testing - XX.X.zip application, provided in the Shared Components page, into your Appian environment\n  2. Log into Appian Designer view on your Appian environment and import the downloaded application zip\n  3. After import is complete, click on the Automated Testing application\n  4. Find and click on the AUT DS object to open the Appian Data Store Designer\n  5. Verify the entity mappings under Schema Management and then Save \u0026 Publish the data store\n\n  Prerequisites for running the test on the configured site above:\n  1. Run the appropriate setupCustomPropertiesFor... script\n  2. Replace BROWSER with either FIREFOX or CHROME\n  3. Replace APPIAN_URL with your Appian site URL, beginning with https:// and including /suite at the end (e.g. https://forum.appian.com/suite)\n  4. Replace APPIAN_VERSION with (17.2, 17.3, 17.4, 18.1, 18.2, 18.3 or 18.4)\n  5. Replace APPIAN_LOCALE with either \"en_US\" or \"en_GB\"\n  5. Replace APPIAN_USERNAME with a valid username for Appian URL above\n  6. Open src/main/resources/configs/users.properties and add a line for the above username that is of the form username\u003dpassword (e.g. test.user\u003dpassword)\n  7. Open src/main/resources/configs/variables.properties",
  "keyword": "Feature",
  "tags": [
    {
      "name": "@LinkRequest"
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
formatter.scenario({
  "name": "Fill out Automated Testing Data to update the status of the request with cancel status",
  "description": "",
  "keyword": "Scenario",
  "tags": [
    {
      "name": "@LinkRequest"
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
  "name": "I click on record related action \"LINK/UNLINK REQUESTS\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnRecordRelatedAction(String)"
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
  "name": "I click on grid \"[1]\" column \"[1]\" row \"[1]\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnGridColumnRow(String,String,String)"
});
formatter.result({
  "error_message": "org.openqa.selenium.TimeoutException: Expected condition failed: waiting for invisibility of [[[[ChromeDriver: chrome on XP (ae9eb487ae6f2b1558ea01bf5d9f7f25)] -\u003e xpath: ((//table[contains(@class, \u0027---table\u0027)])[1])/tbody/tr[1]/td[1]]] -\u003e xpath: .//img|.//a] (tried for 10 second(s) with 500 MILLISECONDS interval)\nBuild info: version: \u0027unknown\u0027, revision: \u0027unknown\u0027, time: \u0027unknown\u0027\nSystem info: host: \u0027VURAM-2016-0122\u0027, ip: \u0027192.168.6.61\u0027, os.name: \u0027Windows 10\u0027, os.arch: \u0027amd64\u0027, os.version: \u002710.0\u0027, java.version: \u00271.8.0_161\u0027\nDriver info: org.openqa.selenium.chrome.ChromeDriver\nCapabilities [{mobileEmulationEnabled\u003dfalse, hasTouchScreen\u003dfalse, platform\u003dXP, acceptSslCerts\u003dfalse, goog:chromeOptions\u003d{debuggerAddress\u003dlocalhost:64780}, acceptInsecureCerts\u003dfalse, webStorageEnabled\u003dtrue, browserName\u003dchrome, takesScreenshot\u003dtrue, javascriptEnabled\u003dtrue, setWindowRect\u003dtrue, unexpectedAlertBehaviour\u003d, applicationCacheEnabled\u003dfalse, rotatable\u003dfalse, networkConnectionEnabled\u003dfalse, chrome\u003d{chromedriverVersion\u003d2.43.600210 (68dcf5eebde37173d4027fa8635e332711d2874a), userDataDir\u003dC:\\Users\\PRAKRU~2\\AppData\\Local\\Temp\\scoped_dir18060_17072}, takesHeapSnapshot\u003dtrue, pageLoadStrategy\u003dnormal, databaseEnabled\u003dfalse, handlesAlerts\u003dtrue, version\u003d76.0.3809.132, browserConnectionEnabled\u003dfalse, nativeEvents\u003dtrue, locationContextEnabled\u003dtrue, cssSelectorsEnabled\u003dtrue}]\nSession ID: ae9eb487ae6f2b1558ea01bf5d9f7f25\r\n\tat org.openqa.selenium.support.ui.WebDriverWait.timeoutException(WebDriverWait.java:80)\r\n\tat org.openqa.selenium.support.ui.FluentWait.until(FluentWait.java:232)\r\n\tat com.appiancorp.ps.automatedtest.tempo.interfaces.TempoGridCell.click(TempoGridCell.java:182)\r\n\tat com.appiancorp.ps.automatedtest.fixture.TempoFixture.clickOnGridColumnRow(TempoFixture.java:1588)\r\n\tat com.appiancorp.ps.cucumber.fixtures.CucumberTempoFixture.clickOnGridColumnRow(CucumberTempoFixture.java:480)\r\n\tat ✽.I click on grid \"[1]\" column \"[1]\" row \"[1]\"(src/test/java/testcases/temp_LinkRequest.feature:46)\r\n",
  "status": "failed"
});
formatter.step({
  "name": "I click on grid \"[1]\" column \"[1]\" row \"[1]\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnGridColumnRow(String,String,String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I click on grid \"[1]\" column \"[2]\" row \"[1]\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnGridColumnRow(String,String,String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I click on grid \"[1]\" column \"[2]\" row \"[1]\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnGridColumnRow(String,String,String)"
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
  "name": "I click on grid \"[1]\" column \"[4]\" row \"[1]\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnGridColumnRow(String,String,String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I click on grid \"[1]\" column \"[4]\" row \"[1]\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnGridColumnRow(String,String,String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I click on grid \"[1]\" column \"[5]\" row \"[1]\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnGridColumnRow(String,String,String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I click on grid \"[1]\" column \"[5]\" row \"[1]\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnGridColumnRow(String,String,String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I click on grid \"[1]\" column \"[6]\" row \"[1]\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnGridColumnRow(String,String,String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I click on grid \"[1]\" column \"[6]\" row \"[1]\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnGridColumnRow(String,String,String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I click on grid \"[1]\" column \"[7]\" row \"[1]\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnGridColumnRow(String,String,String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I click on grid \"[1]\" column \"[7]\" row \"[1]\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnGridColumnRow(String,String,String)"
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
  "name": "I click on grid \"[1]\" navigation \"next\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnGridNavigation(String,String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I click on grid \"[1]\" navigation \"last\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnGridNavigation(String,String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I click on grid \"[1]\" navigation \"previous\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnGridNavigation(String,String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I click on grid \"[1]\" navigation \"first\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnGridNavigation(String,String)"
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
  "name": "I click on grid \"[1]\" column \"[10]\" row \"[2]\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnGridColumnRow(String,String,String)"
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
  "name": "I click on grid \"[2]\" column \"[1]\" row \"[1]\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnGridColumnRow(String,String,String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I click on grid \"[2]\" column \"[1]\" row \"[1]\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnGridColumnRow(String,String,String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I click on grid \"[2]\" column \"[2]\" row \"[1]\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnGridColumnRow(String,String,String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I click on grid \"[2]\" column \"[2]\" row \"[1]\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnGridColumnRow(String,String,String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I click on grid \"[2]\" column \"[3]\" row \"[1]\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnGridColumnRow(String,String,String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I click on grid \"[2]\" column \"[3]\" row \"[1]\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnGridColumnRow(String,String,String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I click on grid \"[2]\" column \"[4]\" row \"[1]\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnGridColumnRow(String,String,String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I click on grid \"[2]\" column \"[4]\" row \"[1]\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnGridColumnRow(String,String,String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I click on grid \"[2]\" column \"[5]\" row \"[1]\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnGridColumnRow(String,String,String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I click on grid \"[2]\" column \"[5]\" row \"[1]\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnGridColumnRow(String,String,String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I click on grid \"[2]\" column \"[6]\" row \"[1]\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnGridColumnRow(String,String,String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I click on grid \"[2]\" column \"[6]\" row \"[1]\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnGridColumnRow(String,String,String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I click on grid \"[2]\" column \"[7]\" row \"[1]\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnGridColumnRow(String,String,String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I click on grid \"[2]\" column \"[7]\" row \"[1]\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnGridColumnRow(String,String,String)"
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
  "name": "I click on grid \"[2]\" column \"[10]\" row \"[2]\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnGridColumnRow(String,String,String)"
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
  "name": "I populate field \"Request ID\" with \"1904-1600\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.populateFieldWith(String,String)"
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
  "name": "I populate field \"Request Type\" with \"Cash Flow\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.populateFieldWith(String,String)"
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
  "name": "I populate field \"Request Owner\" with \"csaUser1\"",
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
  "name": "I click on grid \"[1]\" column \"[10]\" row \"[2]\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnGridColumnRow(String,String,String)"
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
  "name": "I verify button \"CANCEL\" is present",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.verifyButtonIsPresent(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I click on button \"COMPLETE\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnButton(String)"
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
  "name": "I click on button \"YES\"",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.clickOnButton(String)"
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
  "name": "I logout",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberTempoFixture.logout()"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I tear down",
  "keyword": "Given "
});
formatter.match({
  "location": "CucumberBaseFixture.tearDown()"
});
formatter.result({
  "status": "skipped"
});
});