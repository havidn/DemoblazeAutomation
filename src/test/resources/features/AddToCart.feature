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
  @negative
  Scenario Outline: Add product to cart without login
    Given User already on home page
    When User choose product "<product>"
    Then Should pop up message "Product added."
    And Product "<product>" added to cart page
    Examples:
      |product|
      |Iphone 6 32gb|
  @positive
  Scenario Outline: Add product to cart with choose categories
    Given User already login
    When User choose product "<product>" by choose categories "<categories>" first
    Then Should pop up message "Product added."
    And Product "<product>" added to cart page
    Examples:
      |product|categories|
      |Iphone 6 32gb|Phones|
  @positive
  Scenario Outline: Delete product from cart
    Given User already login
    When User add product "<product>" to cart
    And User click delete button
    Then Product "<product>" is deleted from cart
    Examples:
      |product|
      |Nokia lumia 1520|