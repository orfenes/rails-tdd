require 'pessoa'

describe Pessoa do

  around(:each) do |teste| 
    @pessoa = Pessoa.new    
    @pessoa.nome = 'rodrigo'
    @pessoa.idade = 20
    teste.run    
  end

  it 'does something' do
    expect(@pessoa).to have_attributes(nome: 'rodrigo', idade: 20)
  end
end