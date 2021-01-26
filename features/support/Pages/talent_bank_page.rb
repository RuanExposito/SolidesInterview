module TalentBank #Métodos relacionados a página de Banco de talentos
  module_function

  def do_talent_bank_application
    visit_talent_bank
    select_job_vacancy
    click_button("Candidatar nesta vaga")
    LoginPage.verify_login_page
    #Faz todo o processo junto ao invés de passo a passo
  end

  def visit_talent_bank
    $session.visit('https://nayaracorporation.solides.jobs/')
    #Entra no site principal do banco de contratos
  end

  def select_job_vacancy
    $session.find_all("div.sc-bfYoXt.dDKIJD").first.find("a.sc-hUfwpO.hrAlvw").click
    #Seleciona o primeiro item da lista de vagas
  end

  def click_button(button)
    $session.click_on(button)
    #Clica em um botão
  end

end
