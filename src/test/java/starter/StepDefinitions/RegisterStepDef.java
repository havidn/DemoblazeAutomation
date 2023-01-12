package starter.StepDefinitions;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import starter.Pages.HomePage;
import static org.junit.Assert.*;

public class RegisterStepDef {
    HomePage homePage;
    @When("User register with Username {string} and Password {string}")
    public void userRegisterWithUsernameAndPassword(String username, String password) {
        homePage.clickRegisterMenu();
        homePage.inputRegisterUsername(username, password);
        homePage.clickRegisterButton();
        try {
            Thread.sleep(1000);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }
}
