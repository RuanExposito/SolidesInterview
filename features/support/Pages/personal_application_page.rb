module PersonalApplication
  module_function

  def verify_personal_application_screen
    sleep(10)
    raise "I'm not at personal data application screen" unless $session.find("p.sc-iQKALj.fqwBgv").text == "Cadastro de currículo e dados pessoais"
  end

end
