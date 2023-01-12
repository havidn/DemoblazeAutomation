package starter.Pages;
import net.thucydides.core.annotations.DefaultUrl;
import net.thucydides.core.annotations.Managed;
import net.thucydides.core.pages.PageObject;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.time.Duration;

import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.assertThat;

public class CartPage extends PageObject {
    @Managed
    WebDriver driver = getDriver();
    // add to cart
    private final By productInCart = By.className("table-responsive");
    // checkout
    private final By placeOrderButton = By.cssSelector(".btn-success");
    private final By successMessage = By.cssSelector("body > div.sweet-alert.showSweetAlert.visible > h2");
    private final By successName = By.xpath("/html/body/div[10]/p/text()[3]");

    public void addToCart(){
        driver.findElement(By.linkText("Add to cart")).click();
    }

    public void cartPage(){
        driver.findElement(By.id("cartur")).click();
        try {
            Thread.sleep(2000);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }
    public boolean productCart(){
        return driver.findElement(productInCart).isDisplayed();
    }
    // checkout
    public void placeOrder(){
        driver.findElement(placeOrderButton).click();
    }
    public void inputOrder(String name, String country, String city, String card, String month, String year){
        driver.findElement(By.id("name")).sendKeys(name);
        driver.findElement(By.id("country")).sendKeys(country);
        driver.findElement(By.id("city")).sendKeys(city);
        driver.findElement(By.id("card")).sendKeys(card);
        driver.findElement(By.id("month")).sendKeys(month);
        driver.findElement(By.id("year")).sendKeys(year);
    }
    public void purchaseButton(){
        driver.findElement(By.cssSelector("#orderModal .btn-primary")).click();
    }
    public void deleteButton(){
        try {
            Thread.sleep(1000);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
        driver.findElement(By.cssSelector("#tbodyid > tr:nth-child(1) > td:nth-child(4) > a")).click();
    }
    public String getSuccessMessage(){
        return driver.findElement(successMessage).getText();
    }
    public String getSuccessName(){
        return driver.findElement(successName).getText();
    }
}
