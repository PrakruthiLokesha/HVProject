package TestRunner;

import org.junit.runner.RunWith;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions(features = "src/test/java/testcases", glue = {
    "com.appiancorp.ps.cucumber"}, plugin = {"pretty", "json:target/cucumber-reports/Cucumber.json","junit:target/cucumber-reports/Cucumber.xml","html:target/cucumber-reports"}, tags = "@AddNotes ,@Attachment")
public class RunCucumberForAppianTest {
}
