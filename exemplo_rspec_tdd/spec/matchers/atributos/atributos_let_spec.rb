require 'pessoa'

describe Pessoa do

  let(:pessoa){ @pessoa = Pessoa.new }

  it 'does something' do    
    pessoa.nome = 'rodrigo'
    pessoa.idade = 20
    expect(pessoa).to have_attributes(nome: 'rodrigo', idade: 20)
  end
end