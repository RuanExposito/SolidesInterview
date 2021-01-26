Given("I am at talent bank page") do
  TalentBank.visit_talent_bank
  #Entra no site de banco de talentos
end

Given("I did a talent bank application") do
  TalentBank.do_talent_bank_application
end

Given("I am logged in") do
  LoginPage.go_to_login
  LoginPage.login("email","ruan.e.carvalho@hotmail.com")
  LoginPage.login("password","solides123456")
  LoginPage.do_login
end

When("I select a job vacancy") do
  TalentBank.select_job_vacancy
  #Clica no primeiro link de vaga
end

When("I click in button {string}") do |button|
  TalentBank.click_button(button)
  #Clica no botão especificado no cenário BDD
end

When("I login with {string} {string}") do |field, value|
  LoginPage.login(field,value)
  #Login com usuário especifico
end

Then("I must be at login page") do
  LoginPage.verify_login_page
  #Verifica a existencia do campo de E-mail e CPF
end

Then("I must be at personal data application screen") do
  PersonalApplication.verify_personal_application_screen
  #Verifica a página para colocar os dados pessoais
end
