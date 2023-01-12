Feature: Send Message
  @positive
  Scenario: Send message with all valid data
    Given User already on home page
    When User send message with Contact Email "havid@gmail.com", Contact Name "havid", Message "sending Message"
    Then Should pop up message "Thanks for the message!!"
  @negative
  Scenario: Send message with all empty data
    Given User already on home page
    When User send message with Contact Email "", Contact Name "", Message ""
    Then Should pop up message "Please fill out Contact Email, Contact Name, and Message."
  @negative
  Scenario: Send message with email without at ("@")
    Given User already on home page
    When User send message with Contact Email "havidgmail.com", Contact Name "havid", Message "sending Message"
    Then Should pop up message "Please  input valid Contact Email"
  @negative
  Scenario: Send message with email without dot (".")
    Given User already on home page
    When User send message with Contact Email "havid@gmailcom", Contact Name "havid", Message "sending Message"
    Then Should pop up message "Please  input valid Contact Email"
  @negative
  Scenario: Send message with email with space (" ")
    Given User already on home page
    When User send message with Contact Email "ha vid@gmail.com", Contact Name "havid", Message "sending Message"
    Then Should pop up message "Please  input valid Contact Email"
  @negative
  Scenario: Send message with full string email
    Given User already on home page
    When User send message with Contact Email "havidgmailcom", Contact Name "havid", Message "sending Message"
    Then Should pop up message "Please  input valid Contact Email"
  @negative
  Scenario: Send message with full numeric email
    Given User already on home page
    When User send message with Contact Email "2131451", Contact Name "havid", Message "sending Message"
    Then Should pop up message "Please  input valid Contact Email"
  @negative
  Scenario: Send message without email
    Given User already on home page
    When User send message with Contact Email "", Contact Name "havid", Message "sending Message"
    Then Should pop up message "Please fill out Contact Email, Contact Name, and Message ."
  @negative
  Scenario Outline: Send message with long char email
    Given User already on home page
    When User send message with Contact Email "<email>", Contact Name "havid", Message "sending Message"
    Then Should pop up message "Thanks for the message!!"
    Examples:
    |email|
    |jangancobadibacantarmalahpusingsendirikanjadikasihandirilumendingdiskipajadehtakutnyamalahjadipusingdirilusendirikanmalahjadimasalahhooomalahngeyeltetepajadibacadasarsusahdibilanginkanpusingjadinyalugimanarasanyaudahpusingbelumklobelumyabaguslahtapigakadagunanyajugasihinilubacawkwkwkjangancobadibacantarmalahpusingsendirikanjadikasihandirilumendingdiskipajadehtakutnyamalahjadipusingdirilusendirikanmalahjadimasalahhooomalahngeyeltetepajadibacadasarsusahdibilanginkanpusingjadinyalugimanarasanyaudahpusingbelumklobelumyabaguslahtapigakadagunanyajugasihinilubacawkwkwkjangancobadibacantarmalahpusingsendirikanjadikasihandirilumendingdiskipajadehtakutnyamalahjadipusingdirilusendirikanmalahjadimasalahhooomalahngeyeltetepajadibacadasarsusahdibilanginkanpusingjadinyalugimanarasanyaudahpusingbelumklobelumyabaguslahtapigakadagunanyajugasihinilubacawkwkwl@gmail.com|
  @negative
  Scenario: Send message without name
    Given User already on home page
    When User send message with Contact Email "havid@gmail.com", Contact Name "", Message "sending Message"
    Then Should pop up message "Please fill out Contact Email, Contact Name, and Message ."
  @negative
  Scenario Outline: Send message with long char name
    Given User already on home page
    When User send message with Contact Email "havid@gmail.com", Contact Name "<name>", Message "sending Message"
    Then Should pop up message "Thanks for the message!!"
    Examples:
      |name|
      |jangancobadibacantarmalahpusingsendirikanjadikasihandirilumendingdiskipajadehtakutnyamalahjadipusingdirilusendirikanmalahjadimasalahhooomalahngeyeltetepajadibacadasarsusahdibilanginkanpusingjadinyalugimanarasanyaudahpusingbelumklobelumyabaguslahtapigakadagunanyajugasihinilubacawkwkwkjangancobadibacantarmalahpusingsendirikanjadikasihandirilumendingdiskipajadehtakutnyamalahjadipusingdirilusendirikanmalahjadimasalahhooomalahngeyeltetepajadibacadasarsusahdibilanginkanpusingjadinyalugimanarasanyaudahpusingbelumklobelumyabaguslahtapigakadagunanyajugasihinilubacawkwkwkjangancobadibacantarmalahpusingsendirikanjadikasihandirilumendingdiskipajadehtakutnyamalahjadipusingdirilusendirikanmalahjadimasalahhooomalahngeyeltetepajadibacadasarsusahdibilanginkanpusingjadinyalugimanarasanyaudahpusingbelumklobelumyabaguslahtapigakadagunanyajugasihinilubacawkwkwl|
  @negative
  Scenario: Send message without message
    Given User already on home page
    When User send message with Contact Email "havid@gmail.com", Contact Name "havid", Message ""
    Then Should pop up message "Please fill out Contact Email, Contact Name, and Message ."
