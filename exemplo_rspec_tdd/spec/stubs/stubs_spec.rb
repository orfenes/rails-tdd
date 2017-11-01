require 'student'
require 'course'

describe 'Stub' do
  it 'verificando funcionamento do stub' do
    student = Student.new  
    course = Course.new

    allow(student).to receive(:has_finished?)
                  .with(an_instance_of(Course))
                  .and_return(true)    

    course_finished =  student.has_finished?(course)

    expect(course_finished).to be_truthy
  end



  it 'argumentos dinamicos' do
    student = Student.new

    allow(student).to receive(:foo) do |arg|
      if arg == :hello
        "ola"
      elsif arg == :hi
        "Hi"      
      end    
    end

    expect(student.foo(:hello)).to eq("ola")
    expect(student.foo(:hi)).to eq("Hi")
  end

  it 'Qualquer instancia de classe' do
    student = Student.new
    other_student = Student.new

    allow_any_instance_of(Student).to receive(:bar).and_return(true)

    expect(student.bar).to be_truthy
    expect(other_student.bar).to be_truthy
  end

  it 'Erros stubs' do
    student = Student.new

    allow(student).to receive(:bar).and_raise(RuntimeError)
    expect{student.bar}.to raise_error(RuntimeError)   
  end

end