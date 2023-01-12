package starter.StepDefinitions;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import starter.Pages.HomePage;
import starter.Pages.LoginMenu;

import static org.junit.Assert.*;
public class LoginStepDef {
    HomePage homePage;
    LoginMenu loginMenu;
    @Given("User already on home page")
    public void userAlreadyOnPage() {
        homePage.open();
    }
    @When("User login with Username {string} and Password {string}")
    public void userInputUsernameAndPassword(String user, String pass) {
        homePage.clickLoginMenu();
        loginMenu.inputLogin(user,pass);
        loginMenu.clickLoginButton();
    }
    @When("User login with Username {int} and Password {string}")
    public void userInputIntUsernameAndPassword(int user, String pass) {
        String users = Integer.toString(user);
        homePage.clickLoginMenu();
        loginMenu.inputLogin(users,pass);
        loginMenu.clickLoginButton();
    }
    @When("User login with Username {string} and Password {int}")
    public void userInputUsernameAndIntPassword(String user, int pass) {
        String passs = Integer.toString(pass);
        homePage.clickLoginMenu();
        loginMenu.inputLogin(user,passs);
        loginMenu.clickLoginButton();
    }
    @Then("User redirected to home page with account {string}")
    public void userRedirectedToHomePageWithAccount(String user) {
                try {
            Thread.sleep(5000);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
        assertEquals("Welcome "+user,homePage.accountName());
    }


}
