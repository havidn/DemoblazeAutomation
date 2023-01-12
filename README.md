# Demoblaze

<!-- ABOUT THE PROJECT -->
## About The Project

</div>
Here is my project using Serenity Cucumber to Automate UI testing on  https://www.demoblaze.com/. I also implement gherkin languange as main feature of this test. So it's quite easy to understand what to test and how the test work. 


### Built With

* [Java 1.8](https://www.oracle.com/java/technologies/downloads/)
* [Intellij IDEA]()
* [Maven]()




<!-- GETTING STARTED -->
## Getting Started

To get a local copy up and running follow these simple example steps.


### Installation

#### Method 1: Trough terminal (Maven Should be Installed)

Clone the repo
   ```sh
   git clone https://github.com/havidn/DemoblazeAutomation.git
   ```
Run Maven command
   ```sh
   mvn clean verify
   ```

<!-- USAGE EXAMPLES -->
## Usage

```sh
Feature: Add To Cart
  @positive
  Scenario Outline: Add product to cart without choose categories
    Given User already login
    When User choose product "<product>"
    Then Should pop up message "Product added."
    And Product "<product>" added to cart page
    Examples:
    |product|
    |Iphone 6 32gb|
    |MacBook air  |
```
  

<!-- CONTACT -->
## Contact
Havid Nursahgandi - [LinkedIn](https://www.linkedin.com/in/havid-nursahgandi/) - havidnursahgandi@gmail.com

