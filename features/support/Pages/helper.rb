module Helper
  module_function

  def wait_content(element)
    10.times do
      $session.has_content?(element) ? break : sleep(1)
    end
    #Conta 10 segundos para esperar até que um elemento apareça na tela
  end

end
