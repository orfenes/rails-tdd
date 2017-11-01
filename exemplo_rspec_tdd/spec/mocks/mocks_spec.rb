require 'student'
require 'course'

describe 'Mocks' do
  it 'verificando funcionamento do stub' do
    student = Student.new
    
    # aguardando a chamada do metodo bar
    expect(student).to receive(:bar)
    
    # o metodo agora é chamado
    student.bar
  end

  it 'args' do
    student = Student.new
    expect(student).to receive(:foo).with(123)

    student.foo(123)
  end

  it 'repeticao' do
    student = Student.new
    expect(student).to receive(:foo).with(123).twice

    student.foo(123)
    student.foo(123)
  end

  it 'retorno' do
    student = Student.new
    expect(student).to receive(:foo).with(123).and_return(true)

    puts student.foo(123)
  end
  
end