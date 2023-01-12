Feature: Register New User
  @positive
  Scenario Outline: Register user with all valid data
    Given User already on home page
    When User register with Username "<username>" and Password "<password>"
    Then Should pop up message "Sign up successful."
    Examples:
      |username|password|
      |havidun |password|
    @negative
  Scenario Outline: Register user with registered data
    Given User already on home page
    When User register with Username "<username>" and Password "<password>"
    Then Should pop up message "This user already exist."
    Examples:
      |username|password|
      |havidun |password|
    @negative
  Scenario Outline: Register user with all empty data
    Given User already on home page
    When User register with Username "<username>" and Password "<password>"
    Then Should pop up message "Please fill out Username and Password."
    Examples:
      |username|password|
      |havidun |password|
  @positive
  Scenario Outline: Register user with full numeric username
    Given User already on home page
    When User register with Username "<username>" and Password "<password>"
    Then Should pop up message "Sign up successful."
    Examples:
      |username|password|
      |12345   |havid   |
  @positive
  Scenario Outline: Register user with full special char username
    Given User already on home page
    When User register with Username "<username>" and Password "<password>"
    Then Should pop up message "Sign up successful."
    Examples:
      |username|password|
      |!@!#@$  |havid   |
  @positive
  Scenario Outline: Register user with long char username
    Given User already on home page
    When User register with Username "<username>" and Password "<password>"
    Then Should pop up message "Sign up successful."
    Examples:
      |password|username|
      |havid   |jangancobadibacantarmalahpusingsendirikanjadikasihandirilumendingdiskipajadehtakutnyamalahjadipusingdirilusendirikanmalahjadimasalahhooomalahngeyeltetepajadibacadasarsusahdibilanginkanpusingjadinyalugimanarasanyaudahpusingbelumklobelumyabaguslahtapigakadagunanyajugasihinilubacawkwkwkjangancobadibacantarmalahpusingsendirikanjadikasihandirilumendingdiskipajadehtakutnyamalahjadipusingdirilusendirikanmalahjadimasalahhooomalahngeyeltetepajadibacadasarsusahdibilanginkanpusingjadinyalugimanarasanyaudahpusingbelumklobelumyabaguslahtapigakadagunanyajugasihinilubacawkwkwkjangancobadibacantarmalahpusingsendirikanjadikasihandirilumendingdiskipajadehtakutnyamalahjadipusingdirilusendirikanmalahjadimasalahhooomalahngeyeltetepajadibacadasarsusahdibilanginkanpusingjadinyalugimanarasanyaudahpusingbelumklobelumyabaguslahtapigakadagunanyajugasihinilubacawkwkwk|
  @negative
  Scenario Outline: Register user with empty username
    Given User already on home page
    When User register with Username "<username>" and Password "<password>"
    Then Should pop up message "Please fill out Username and Password."
    Examples:
      |username|password|
      |        |havid |
  @positive
  Scenario Outline: Register user with full numeric password
    Given User already on home page
    When User register with Username "<username>" and Password "<password>"
    Then Should pop up message "Sign up successful."
    Examples:
      |username|password|
      |havidn  |123124  |
  @positive
  Scenario Outline: Register user with full special char password
    Given User already on home page
    When User register with Username "<username>" and Password "<password>"
    Then Should pop up message "Sign up successful."
    Examples:
      |username|password|
      |havidnu |!@!#@$  |
  @positive
  Scenario Outline: Register user with long char password
    Given User already on home page
    When User register with Username "<username>" and Password "<password>"
    Then Should pop up message "Sign up successful."
    Examples:
      |username|password|
      |havidnurs |jangancobadibacantarmalahpusingsendirikanjadikasihandirilumendingdiskipajadehtakutnyamalahjadipusingdirilusendirikanmalahjadimasalahhooomalahngeyeltetepajadibacadasarsusahdibilanginkanpusingjadinyalugimanarasanyaudahpusingbelumklobelumyabaguslahtapigakadagunanyajugasihinilubacawkwkwkjangancobadibacantarmalahpusingsendirikanjadikasihandirilumendingdiskipajadehtakutnyamalahjadipusingdirilusendirikanmalahjadimasalahhooomalahngeyeltetepajadibacadasarsusahdibilanginkanpusingjadinyalugimanarasanyaudahpusingbelumklobelumyabaguslahtapigakadagunanyajugasihinilubacawkwkwkjangancobadibacantarmalahpusingsendirikanjadikasihandirilumendingdiskipajadehtakutnyamalahjadipusingdirilusendirikanmalahjadimasalahhooomalahngeyeltetepajadibacadasarsusahdibilanginkanpusingjadinyalugimanarasanyaudahpusingbelumklobelumyabaguslahtapigakadagunanyajugasihinilubacawkwkwk|
  @negative
  Scenario Outline: Register user with empty password
    Given User already on home page
    When User register with Username "<username>" and Password "<password>"
    Then Should pop up message "Please fill out Username and Password."
    Examples:
      |username     |password|
      |havidnursgd  |        |