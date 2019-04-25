Quando("acessar a url informada") do
    visit ''
    sleep(2)
  end
  
  Quando("clico em contato") do
    click_on('Contato')
    sleep(1)
  end
  
  Então("devo ser direcionado para pagina de contato.") do
    expect(page).to have_current_path('http://187.35.155.198:5722/Contact.aspx')
  end


  Dado("que é necessario realizar um novo cadastro de usuario") do
    visit ''
    sleep(2)
  end
  
  Quando("estiver na home clicar em {string}") do |string|
    click_on(string)
    sleep(2)
  end
  
  Quando("clicar em {string}") do |string|
    click_on(string)
    sleep(2)
  end
  
  Então("preencha os campos do formulario") do
    fill_in(id: 'MainContent_txt_usp_nome', with: 'Jose')
    fill_in(id: 'MainContent_txt_usp_sobrenome', with: 'Matheus')
    fill_in(id: 'MainContent_txt_usp_cpf', with: '89228319011')
    fill_in(id: 'MainContent_txt_usp_email', with: 'jm@email.com')
  end
  
  Então("clique em {string}") do |string|
    click_on(string)
    sleep(2)
  end