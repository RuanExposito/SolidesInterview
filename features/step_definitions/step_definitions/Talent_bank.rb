Given("I am at talent bank page") do
  $session.visit('https://nayaracorporation.solides.jobs/') #Inicia a sessão
end

When("I select a job vacancy") do
  $session.find_all("div.sc-bfYoXt.dDKIJD").first.find("a.sc-hUfwpO.hrAlvw").click
  #Clica no primeiro link de vaga
end

And("I click in button {string}") do |button|
  $session.click_on(button)
  #Clica no botão especificado no cenário BDD
end

Then("I must be at login page") do
  $session.find(:xpath, "//label[text()='E-mail ou CPF']")
  #Verifica a existencia do campo pra e-mail e CPF
end
