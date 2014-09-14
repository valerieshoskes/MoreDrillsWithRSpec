require 'rspec'
require 'deaf_grandma'

describe 'DeafGrandma' do
  let(:script) { DeafGrandma.new }

  it "says 'SPEAK UP SONNY!' when we speak regularly" do
    expect(script.speak("Hi Grandma")).to eq "SPEAK UP SONNY!"
  end
  
  it "says 'NOT SINCE 1964!' when we yell" do
    #implement your test here
    expect(script.speak("HI GRANDMA!")).to eq "NOT SINCE 1964!"
  end

  it "EXTRA CREDIT: How would you test yelling BYE?" do
    #implement your test here
    expect(->(){script.speak("hi")}).to_not raise_error
    expect(->(){script.speak("BYE BYE")}).to_not raise_error
    expect(->(){script.speak("BYE")}).to raise_error SystemExit
  end
end
