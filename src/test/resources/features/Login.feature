Feature: Login
  @positive
  Scenario Outline: Login user with all valid data
    Given User already on home page
    When User login with Username "<username>" and Password "<password>"
    Then User redirected to home page with account "<username>"
    Examples:
    |username|password|
    |havid   |havid   |
    |testinghavid|havid   |
  @negative
  Scenario Outline: Login user with unregistered data
    Given User already on home page
    When User login with Username "<username>" and Password "<password>"
    Then Should pop up message "User does not exist."
    Examples:
      |username|password|
      |havidin |havid   |
  @negative
  Scenario Outline: Login user with all empty data
    Given User already on home page
    When User login with Username "<username>" and Password "<password>"
    Then Should pop up message "Please fill out Username and Password."
    Examples:
      |username|password|
      |        |        |
  @positive
  Scenario Outline: Login user with full numeric username
    Given User already on home page
    When User login with Username <username> and Password "<password>"
    Then User redirected to home page with account "<username>"
    Examples:
      |username|password|
      |12345   |havid   |
  @positive
  Scenario Outline: Login user with full special char username
    Given User already on home page
    When User login with Username "<username>" and Password "<password>"
    Then User redirected to home page with account "<username>"
    Examples:
      |username|password|
      |!@!#@$  |havid   |
  @positive
  Scenario Outline: Login user with long char username
    Given User already on home page
    When User login with Username "<username>" and Password "<password>"
    Then User redirected to home page with account "<username>"
    Examples:
      |password|username|
      |havid   |jangancobadibacantarmalahpusingsendirikanjadikasihandirilumendingdiskipajadehtakutnyamalahjadipusingdirilusendirikanmalahjadimasalahhooomalahngeyeltetepajadibacadasarsusahdibilanginkanpusingjadinyalugimanarasanyaudahpusingbelumklobelumyabaguslahtapigakadagunanyajugasihinilubacawkwkwkjangancobadibacantarmalahpusingsendirikanjadikasihandirilumendingdiskipajadehtakutnyamalahjadipusingdirilusendirikanmalahjadimasalahhooomalahngeyeltetepajadibacadasarsusahdibilanginkanpusingjadinyalugimanarasanyaudahpusingbelumklobelumyabaguslahtapigakadagunanyajugasihinilubacawkwkwkjangancobadibacantarmalahpusingsendirikanjadikasihandirilumendingdiskipajadehtakutnyamalahjadipusingdirilusendirikanmalahjadimasalahhooomalahngeyeltetepajadibacadasarsusahdibilanginkanpusingjadinyalugimanarasanyaudahpusingbelumklobelumyabaguslahtapigakadagunanyajugasihinilubacawkwkwk|
  @negative
  Scenario Outline: Login user with empty username
    Given User already on home page
    When User login with Username "<username>" and Password "<password>"
    Then Should pop up message "Please fill out Username and Password."
    Examples:
      |username|password|
      |        |havid   |
  @positive
  Scenario Outline: Login user with full numeric password
    Given User already on home page
    When User login with Username "<username>" and Password <password>
    Then User redirected to home page with account "<username>"
    Examples:
      |username|password|
      |havid   |123124  |
  @positive
  Scenario Outline: Login user with full special char password
    Given User already on home page
    When User login with Username "<username>" and Password "<password>"
    Then User redirected to home page with account "<username>"
    Examples:
      |username|password|
      |havid   |!@!#@$  |
  @positive
  Scenario Outline: Login user with long char password
    Given User already on home page
    When User login with Username "<username>" and Password "<password>"
    Then User redirected to home page with account "<username>"
    Examples:
      |username|password|
      |havidnurs   |jangancobadibacantarmalahpusingsendirikanjadikasihandirilumendingdiskipajadehtakutnyamalahjadipusingdirilusendirikanmalahjadimasalahhooomalahngeyeltetepajadibacadasarsusahdibilanginkanpusingjadinyalugimanarasanyaudahpusingbelumklobelumyabaguslahtapigakadagunanyajugasihinilubacawkwkwkjangancobadibacantarmalahpusingsendirikanjadikasihandirilumendingdiskipajadehtakutnyamalahjadipusingdirilusendirikanmalahjadimasalahhooomalahngeyeltetepajadibacadasarsusahdibilanginkanpusingjadinyalugimanarasanyaudahpusingbelumklobelumyabaguslahtapigakadagunanyajugasihinilubacawkwkwkjangancobadibacantarmalahpusingsendirikanjadikasihandirilumendingdiskipajadehtakutnyamalahjadipusingdirilusendirikanmalahjadimasalahhooomalahngeyeltetepajadibacadasarsusahdibilanginkanpusingjadinyalugimanarasanyaudahpusingbelumklobelumyabaguslahtapigakadagunanyajugasihinilubacawkwkwk|
  @negative
  Scenario Outline: Login user with empty password
    Given User already on home page
    When User login with Username "<username>" and Password "<password>"
    Then Should pop up message "Please fill out Username and Password."
    Examples:
      |username|password|
      |havid   |        |