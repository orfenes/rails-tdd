describe 'Matchers de Igualdade' do
  it '#equal -- Testa se é o mesmo objeto' do
    x = "ruby"
    y = "ruby"
    expect(x).not_to equal(y)
  end

  it '#be Testa o mesmo objeto' do
    x = "ruby"
    y = "ruby"
    expect(x).not_to be(y)
  end

  it '#eql Testa somente o valor' do
    x = "ruby"
    y = "ruby"
    expect(x).to eql(y)
  end

  it '#eq equivalente eql' do
    x = "ruby"
    y = "ruby"
    expect(x).to eq(y)
  end

end