require "birthday_list"

describe Birthdays do 

  let(:birthday) { Birthday.new }

  describe "store" do 
    it "should accept names, ages, and birth dates are arguments, and return a string confirming the information has been stored" do
      expect(subject.store("Ben", "02/03/1996")).to eq([{:birthday=>"02/03/1996", :name=>"Ben"}])
    end
  end 

  describe "#display" do
    it "should display all my friends, names, ages, and birthdays in a list" do
      expect(subject.display).to eq(subject.list)
    end
  end
end