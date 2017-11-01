describe 'Matcher output' do
  it { expect{puts "orfenes"}.to output.to_stdout }
  it { expect{print "orfenes"}.to output("orfenes").to_stdout }
end