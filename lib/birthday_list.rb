require 'date'

class Birthdays
  DATE_FORMAT = '%m-%d'

  def initialize
    @list = []
  end

  def store(name, date)
  @list << { name: name, birthday: date }
  end

  def display
    @list.each do |friend|
      puts "#{friend[:name]}: #{friend[:birthday]}"
  end

  def today
    @list.each do |friend|
      puts "It's #{:name}'s birthday today! They are #{age + 1} years old!'" if birthday == Date.today
    end
  end
end