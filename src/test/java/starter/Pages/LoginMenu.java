package starter.Pages;

import net.thucydides.core.annotations.DefaultUrl;
import net.thucydides.core.annotations.Managed;
import net.thucydides.core.pages.PageObject;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.assertThat;

public class LoginMenu extends PageObject{
    @Managed
    WebDriver driver = getDriver();

    private final By usernameField = By.id("loginusername");
    private final By passwordField = By.id("loginpassword");
    private final By loginButton = By.xpath("//*[@id=\"logInModal\"]/div/div/div[3]/button[2]");
    public void inputLogin(String username,String password){
        driver.findElement(usernameField).sendKeys(username);
        try {
            Thread.sleep(2000);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
        driver.findElement(passwordField).sendKeys(password);

    }
    public void clickLoginButton(){
        driver.findElement(loginButton).click();
        try {
            Thread.sleep(3000);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }
}
