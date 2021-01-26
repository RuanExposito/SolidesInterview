module LoginPage #Métodos relacionados a página de login
  module_function

  def login(field,value)
    Helper.wait_content("div.sc-csuQGl.dDVuWu")
    #If pra manter a parte do BDD legivel e ainda assim mantendo a funcionalidade
    if field == "email"
      field = "user"
    elsif field == "password"
      field = " "
    end
    Helper.wait_content(field)
    $session.fill_in(field, with: value) #preenche o campo
  end

  def go_to_login
    Helper.wait_content("div.sc-csuQGl.dDVuWu")
    $session.visit('https://solides.jobs/login?token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzbHVnIjoibmF5YXJhY29ycG9yYXRpb24iLCJyZWZlcmVuY2VJZCI6NDA4NzYsImF1dGhlbnRpY2F0ZWQiOmZhbHNlLCJkZXNjcmlwdGlvblZhY2FuY3lJZCI6IiIsIm9yaWdpbiI6Imh0dHBzOi8vbmF5YXJhY29ycG9yYXRpb24uc29saWRlcy5qb2JzIiwiaWF0IjoxNjExNjc5NTQwfQ.YkKam7-BIW2XlXe-YQrd4wVTqRvT1dphPmdyrsWbVvU')
    #Espera o selenium abrir o navegador e redireciona pra página de login
  end

  def do_login
    TalentBank.click_button("Logar")
    sleep(5)
    #Faz o login e espera um pouco para carregar
  end

  def verify_login_page
    $session.find(:xpath, "//label[text()='E-mail ou CPF']")
    #Verifica a label na página de login pra validar
  end

end
