$count = 0

describe 'let' do
  let(:count) { $count += 1}

  it 'memotiza um valor' do
    expect(count).to eq(1)
    expect(count).to eq(1)
  end

  it 'nao é cacheado nos teste' do
    expect(count).to eq(2)
  end
end