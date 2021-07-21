
def say_hello(name)
  # you can print to STDOUT for debugging like you normally would:
  puts name
  if name
    puts "Hello, #{name}!"
  else
    puts "Hello there!"
  end
  # but you need to return the value in order to complete the challenge:  
  # TODO: return the correct value
end

RSpec.describe "#Challenge" do
  it "should say hello" do
    expect(say_hello("Qualified")).to eq("Hello, Qualified!")
  end
end