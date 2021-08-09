
Dado('que eu acesso a página principal') do
    visit 'http://automationpractice.com/index.php?controller=authentication&back=my-account'
  end
  
  Quando('eu faço login com {string} e {string}') do |email, senha|
    find('#email').set email
    find('#passwd').set senha
    click_button 'SubmitLogin'
  end
  
  Então('devo ser autorizado com sucesso') do
    expect(page).to have_content 'Welcome to your account.'
  end
  
  Então('devo ver a mensagem de {string}') do |mensagem|
    expect(page).to have_content mensagem
  end
