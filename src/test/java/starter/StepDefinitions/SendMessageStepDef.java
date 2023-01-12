package starter.StepDefinitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import starter.Pages.HomePage;
import starter.Pages.MessageMenu;

import static org.hamcrest.CoreMatchers.is;

public class SendMessageStepDef {
    MessageMenu messageMenu;
    HomePage homePage;
    @When("User send message with Contact Email {string}, Contact Name {string}, Message {string}")
    public void userSendMessageWithContactEmailContactNameMessage(String email, String name, String message) {
        messageMenu.clickContactMenu();
        messageMenu.inputMessage(email, name, message);
        messageMenu.setSendMessageButton();
    }
    @When("User send message with Contact Email {int}, Contact Name {string}, Message {string}")
    public void userSendMessageWithContactIntEmailContactNameMessage(int email, String name, String message) {
        String emails = Integer.toString(email);
        messageMenu.clickContactMenu();
        messageMenu.inputMessage(emails, name, message);
        messageMenu.setSendMessageButton();
    }
    @When("User send message with Contact Email {string}, Contact Name {int}, Message {string}")
    public void userSendMessageWithContactEmailContactIntNameMessage(String email, int name, String message) {
        String names = Integer.toString(name);
        messageMenu.clickContactMenu();
        messageMenu.inputMessage(email, names, message);
        messageMenu.setSendMessageButton();
    }
    @When("User send message with Contact Email {string}, Contact Name {string}, Message {int}")
    public void userSendMessageWithContactEmailContactNameIntMessage(String email, String name, int message) {
        String messages = Integer.toString(message);
        messageMenu.clickContactMenu();
        messageMenu.inputMessage(email, name, messages);
        messageMenu.setSendMessageButton();
    }
    @Then("Should pop up message {string}")
    public void shouldPopUpMessage(String popUp) {
        homePage.popUpMessage(popUp);
    }



}
