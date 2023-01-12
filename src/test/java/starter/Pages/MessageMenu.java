package starter.Pages;
import net.thucydides.core.annotations.DefaultUrl;
import net.thucydides.core.annotations.Managed;
import net.thucydides.core.pages.PageObject;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.assertThat;

public class MessageMenu extends PageObject{
    @Managed
    WebDriver driver = getDriver();
    private final By contactEmail = By.id("recipient-email");
    private final By contactName = By.id("recipient-name");
    private final By messageText = By.id("message-text");
    private final By sendMessageButton = By.cssSelector("#exampleModal .btn-primary");
    public void clickContactMenu(){
        driver.findElement(By.linkText("Contact")).click();
    }
    public void inputMessage(String email,String name,String message){
        driver.findElement(contactEmail).sendKeys(email);
        driver.findElement(contactName).sendKeys(name);
        driver.findElement(messageText).sendKeys(message);
    }
    public void setSendMessageButton(){
        driver.findElement(sendMessageButton).click();
    }


}
