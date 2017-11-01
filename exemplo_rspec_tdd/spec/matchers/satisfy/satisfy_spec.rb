describe 'satisfy' do
  it { expect(9).to satisfy {|x| x % 3 == 0 } }
end