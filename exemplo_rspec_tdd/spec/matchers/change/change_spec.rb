require 'contador'

describe 'Change' do
  it { expect{Contador.incrementa}.to change {Contador.qtd}.by(1) }
  it { expect{Contador.incrementa}.to change {Contador.qtd}.from(1).to(2) }
end