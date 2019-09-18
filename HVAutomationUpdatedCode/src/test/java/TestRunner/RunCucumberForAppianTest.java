package TestRunner;

import org.junit.runner.RunWith;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions(features = "src/test/java/Test_cases", glue = {
    "com.appiancorp.ps.cucumber"}, plugin = {"pretty"}, tags = "@LinkRequest" )
public class RunCucumberForAppianTest {
}