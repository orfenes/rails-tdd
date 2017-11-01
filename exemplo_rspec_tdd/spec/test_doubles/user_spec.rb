describe 'Teste Double' do
  it '--' do
    user = double('User')
    allow(user).to receive_messages(name: 'orfenes', password: 'secret')        
  end

  it 'as_null_object' do
    user = double('User').as_null_object
    allow(user).to receive_messages(name: 'orfenes', password: 'secret')
    puts user.name
    puts user.password
    puts user.abc
  end
end