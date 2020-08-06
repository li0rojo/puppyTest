package StepDefinition;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

public class petshop {
    private WebDriver driver;

    public void Open_the_browser_on_puppies() throws Throwable
    {
        System.out.println("This Step open the Firefox and launch the application.");
        System.setProperty("webdriver.gecko.driver", "C://Selenium_Jars//geckodriver.exe");
        driver = new FirefoxDriver();
        driver.manage().window().maximize();
        driver.get("http://puppies.herokuapp.com/");
    }

    @Then("^Select puppies from \"view details\"$")
    public void Select_puppies_from_"view details"() throws Throwable
    {
        WebElement homeLog = driver.findElement(By.xpath("//div[2]//div[1]//div[4]//form[1]//div[1]//input[1]"));
        homeLog.clic();
    }

    @And("^click on \"adopt me\"$")
    public void click_on_"adopt_me" () throws Throwable
    {
        WebElement AdoptME = driver.findElement(By.xpath("//input[@class='rounded_button']"));
        AdoptME.clic();
    }

}
