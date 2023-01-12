package starter.Pages;

import net.thucydides.core.annotations.DefaultUrl;
import net.thucydides.core.annotations.Managed;
import net.thucydides.core.pages.PageObject;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.assertThat;

@DefaultUrl("https://www.demoblaze.com/")
public class HomePage extends PageObject {
    @Managed
    WebDriver driver = getDriver();
    // login
    private final By loginMenu = By.id("login2");
    private final By pageHeader = By.xpath("//*[@id=\"nameofuser\"]");

    // Register
    private final By registerMenu = By.id("signin2");
    private final By registerUsername = By.id("sign-username");
    private final By registerPassword = By.id("sign-password");
    private final By registerButton = By.xpath("//*[@id=\"signInModal\"]/div/div/div[3]/button[2]");
    public void clickRegisterMenu(){
        driver.findElement(registerMenu).click();
    }
    public void inputRegisterUsername(String username,String password){
        driver.findElement(registerUsername).sendKeys(username);
        driver.findElement(registerPassword).sendKeys(password);

    }
    public void inputRegisterPassword(){
    }
    public void clickRegisterButton(){
        driver.findElement(registerButton).click();
    }


    // login
    public void clickLoginMenu(){
        driver.findElement(loginMenu).click();
    }
    public String accountName(){
        return driver.findElement(pageHeader).getText();
    }


    // message
    public void popUpMessage(String popUp){
        assertThat(driver.switchTo().alert().getText(), is(popUp));
        try {
            Thread.sleep(1000);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
        driver.switchTo().alert().accept();
    }
    // add to cart
    public void chooseCategories(String categories){
        driver.findElement(By.linkText(categories)).click();
    }
    public void getProduct(String product){
      String test = driver.findElement(By.xpath("//*[@id=\"tbodyid\"]")).getText();
      if(test.contains(product)) {
          driver.findElement(By.linkText(product)).click();
      }else {
          driver.findElement(By.id("next2")).click();
          driver.findElement(By.linkText(product)).click();
      }
    }

}
