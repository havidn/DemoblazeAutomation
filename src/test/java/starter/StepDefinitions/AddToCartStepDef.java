package starter.StepDefinitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.openqa.selenium.WebDriver;
import starter.Pages.CartPage;
import starter.Pages.HomePage;
import starter.Pages.LoginMenu;

import static org.junit.Assert.*;

import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.assertThat;

public class AddToCartStepDef {
    HomePage homePage;
    LoginMenu loginMenu;
    CartPage cartPage;
    @Given("User already login")
    public void userAlreadyLogin() {
        homePage.open();
        homePage.clickLoginMenu();
        loginMenu.inputLogin("havid", "havid");
        loginMenu.clickLoginButton();

        try {
            Thread.sleep(1000);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }

    @When("User choose product {string}")
    public void userChooseProduct(String product) {
        homePage.getProduct(product);
        cartPage.addToCart();
        try {
            Thread.sleep(5000);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }
    @When("User choose product {string} by choose categories {string} first")
    public void userChooseProductByChooseCategoriesFirst(String product, String categories) {
        homePage.chooseCategories(categories);
        homePage.getProduct(product);
        cartPage.addToCart();
        try {
            Thread.sleep(5000);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }
    @And("Product {string} added to cart page")
    public void productAddedToCartPage(String product) {
        cartPage.cartPage();
        try {
            Thread.sleep(5000);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
        assertTrue(product,cartPage.productCart());
    }
    @And("User click delete button")
    public void userClickDeleteButton() {
        cartPage.cartPage();
        cartPage.deleteButton();
    }
    @Then("Product {string} is deleted from cart")
    public void productIsDeletedFromCart(String product) {
        try {
            Thread.sleep(1000);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
        assertFalse(product,cartPage.productCart());
    }
}
