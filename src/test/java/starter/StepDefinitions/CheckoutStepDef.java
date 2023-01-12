package starter.StepDefinitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import starter.Pages.CartPage;
import starter.Pages.HomePage;

import static org.junit.Assert.assertEquals;

public class CheckoutStepDef {
    HomePage homePage;
    CartPage cartPage;

    @When("User add product {string} to cart")
    public void userAddProductToCart(String product) {
        homePage.getProduct(product);
        try {
            Thread.sleep(3000);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
        cartPage.addToCart();
        try {
            Thread.sleep(3000);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
        homePage.popUpMessage("Product added.");
    }
    @And("User click on Place order button")
    public void userClickOnPlaceOrderButton() {
        cartPage.placeOrder();
    }

    @And("User input Name {string}, Country {string}, City {string}, Credit card {int}, Month {int}, Year {int}")
    public void userInputNameCountryCityCreditCardMonthYear(String name, String country, String city, int card, int month, int year) {
        String cards = Integer.toString(card);
        String months = Integer.toString(month);
        String years = Integer.toString(year);
        cartPage.inputOrder(name, country, city, cards, months, years);
    }

    @And("User click Purchase button")
    public void userClickPurchaseButton() {
        cartPage.purchaseButton();
    }

    @Then("Pop up massage {string}")
    public void popUpMassageWithNameAndCardNumber(String message) {
        try {
            Thread.sleep(2000);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
        assertEquals(message,cartPage.getSuccessMessage());
    }

    @And("User create order with Name {string}, Country {string}, City {string}, Credit card {int}, Month {int}, Year {int}")
    public void userCreateOrderWithNameCountryCityCreditCardMonthYear(String name, String country, String city, int card, int month, int year) {
        String cards = Integer.toString(card);
        String months = Integer.toString(month);
        String years = Integer.toString(year);
        cartPage.cartPage();
        cartPage.placeOrder();
        cartPage.inputOrder(name, country, city, cards, months, years);
        cartPage.purchaseButton();
    }
    @And("User create order with Name {string}, Country {string}, City {string}, Month {int}, Year {int}")
    public void userCreateOrderWithNameCountryCityMonthYear(String name, String country, String city, int month, int year) {
        String cards = "";
        String months = Integer.toString(month);
        String years = Integer.toString(year);
        cartPage.cartPage();
        cartPage.placeOrder();
        cartPage.inputOrder(name, country, city, cards, months, years);
        cartPage.purchaseButton();
    }

    @And("User create order with Name {string}, Country {string}, City {string}, Credit card {int}, Year {int}")
    public void userCreateOrderWithNameCountryCityCreditCardCardYearYear(String name, String country, String city, int card, int year) {
        String cards = Integer.toString(card);
        String months = "";
        String years = Integer.toString(year);
        cartPage.cartPage();
        cartPage.placeOrder();
        cartPage.inputOrder(name, country, city, cards, months, years);
        cartPage.purchaseButton();
    }

    @And("User create order with Name {string}, Country {string}, City {string}, Credit card {int}, Month {int}")
    public void userCreateOrderWithNameCountryCityCreditCardCardMonthMonth(String name, String country, String city, int card, int month) {
        String cards = Integer.toString(card);
        String months = Integer.toString(month);
        String years = "";
        cartPage.cartPage();
        cartPage.placeOrder();
        cartPage.inputOrder(name, country, city, cards, months, years);
        cartPage.purchaseButton();
    }

    @And("User create order with empty data")
    public void userCreateOrderWithEmptyData() {
        String name= "", country= "", city= "", cards= "", months= "", years = "";
        cartPage.cartPage();
        cartPage.placeOrder();
        cartPage.inputOrder(name, country, city, cards, months, years);
        cartPage.purchaseButton();
    }


}
