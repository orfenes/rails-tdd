require 'string_nao_vazia'

describe 'Classes' do

  #Verificar se é da classe especifica
  it 'be_instace_of' do
    expect(10).to be_instance_of(Integer) #exatamente a classe
  end

  #Garante toda a herença
  it 'be_kind_of' do
    str = StringNaoVazia.new
    expect(str).to be_kind_of(String) 
    expect(str).to be_kind_of(StringNaoVazia) 
  end

  # responde ao metodo
  it 'responde_to' do
    expect("ruby").to respond_to(:size)
  end

  it 'be_an / be_an' do
    str = StringNaoVazia.new

    expect(str).to be_an(String) 
    expect(str).to be_an(StringNaoVazia) 
  end

end