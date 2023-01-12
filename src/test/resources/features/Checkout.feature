Feature: checkout
  @positive
  Scenario Outline: Checkout with all valid credential
    Given User already login
    When User add product "<product>" to cart
    And User create order with Name "<Name>", Country "<Country>", City "<City>", Credit card <card>, Month <Month>, Year <Year>
    Then Pop up massage "Thank you for your purchase!"
    Examples:
      |product          |Name|Country|City|card|Month|Year|
      |Samsung galaxy s6|Name|Country|City|213 |12   |234 |
  @negative
  Scenario Outline: Checkout without Name
    Given User already login
    When User add product "<product>" to cart
    And User create order with Name "<Name>", Country "<Country>", City "<City>", Credit card <card>, Month <Month>, Year <Year>
    Then Should pop up message "Please fill out Name and Creditcard."
    Examples:
      |product          |Name |Country|City|card |Month|Year |
      |Samsung galaxy s6|     |Country|City|213  |12   |234  |
  @negative
  Scenario Outline: Checkout without Country
    Given User already login
    When User add product "<product>" to cart
    And User create order with Name "<Name>", Country "<Country>", City "<City>", Credit card <card>, Month <Month>, Year <Year>
    Then Pop up massage "Please fill out name, country, city, Credit card, month, and year."
    Examples:
      |product          |Name|Country |City|card |Month|Year |
      |Samsung galaxy s6|Name|        |City|213  |12   |234  |
  @negative
  Scenario Outline: Checkout without City
    Given User already login
    When User add product "<product>" to cart
    And User create order with Name "<Name>", Country "<Country>", City "<City>", Credit card <card>, Month <Month>, Year <Year>
    Then Pop up massage "Please fill out name, country, city, Credit card, month, and year."
    Examples:
      |product          |Name|Country|City|card |Month|Year |
      |Samsung galaxy s6|Name|Country|    |213  |12   |234  |
  @negative
  Scenario Outline: Checkout without Credit card
    Given User already login
    When User add product "<product>" to cart
    And User create order with Name "<Name>", Country "<Country>", City "<City>", Month <Month>, Year <Year>
    Then Should pop up message "Please fill out Name and Creditcard."
    Examples:
      |product          |Name|Country|City|Month|Year |
      |Samsung galaxy s6|Name|Country|City|12   |234  |
  @negative
  Scenario Outline: Checkout without Month
    Given User already login
    When User add product "<product>" to cart
    And User create order with Name "<Name>", Country "<Country>", City "<City>", Credit card <card>, Year <Year>
    Then Pop up massage "Please fill out name, country, city, Credit card, month, and year."
    Examples:
      |product          |Name|Country|City|card |Year |
      |Samsung galaxy s6|Name|Country|City|213  |234  |
  @negative
  Scenario Outline: Checkout without Year
    Given User already login
    When User add product "<product>" to cart
    And User create order with Name "<Name>", Country "<Country>", City "<City>", Credit card <card>, Month <Month>
    Then Pop up massage "Please fill out name, country, city, Credit card, month, and year."
    Examples:
      |product          |Name|Country|City|card |Month|
      |Samsung galaxy s6|Name|Country|City|213  |12   |
  @negative
  Scenario Outline: Checkout with empty data
    Given User already login
    When User add product "<product>" to cart
    And User create order with empty data
    Then Should pop up message "Please fill out name, country, city, Credit card, month, and year."
    Examples:
      |product          |
      |Samsung galaxy s6|
  @negative
  Scenario Outline: Checkout with empty product
    Given User already login
    When User create order with Name "<Name>", Country "<Country>", City "<City>", Credit card <card>, Month <Month>, Year <Year>
    Then Pop up massage "Please chose product"
    Examples:
      |Name|Country|City|card |Month|Year |
      |Name|Country|City|213  |12   |234  |