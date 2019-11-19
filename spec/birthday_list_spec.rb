require "birthday_list"

describe Birthdays do 

  let(:birthday) { Birthday.new }

  it "should store my friends birthdays" do 
    subject.store("Ben", 23, "02/03/1996")
    expect(subject.last_stored).to eq("Ben", 23, "02/03/2019") 
  end

  describe "store" do 

    it "should accept names, ages, and birth dates are arguments, and return a string confirming the information has been stored" do
      expect(subject.store("Ben", 23, "02/03/1996")).to eq "Stored Ben, who's 23 years old, with their birthday: 02/03/1996"
    end
  end 

  describe "#display" do

    it "should display all my friends, names, ages, and birthdays in a list" do
      expect(subject.display).to eq(subject.list)
    end
  end

  describe "#today" do

    it "should tell me who's birthday it is today upon my request" do
      expect(subject.today).to eq(subject.todays_list)
    end 
  end

end