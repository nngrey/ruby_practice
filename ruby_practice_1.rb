require 'colorize'
require 'json'

file = File.read( ARGV.first )
data_hash = [JSON.parse(file)]
@questions = data_hash[0]["questions"]

def main_menu
  puts "Ruby Practice"
  @questions.each do |qa|
    puts
    question = qa["question"]
    answer = qa["answer"]
    info = qa["info"]
    puts question.yellow
    puts
    input = STDIN.gets.chomp
    check( input, answer, info )
  end
end

def check( input, answer, info )
  if input == answer && answer != "END"
    puts "\n  Correct!".light_green
  elsif answer == "END"
    print ""
  else
    puts "\n  ***Incorrect***".light_red
    puts "\n  The correct answer is:".light_green
    puts "\n      #{ answer }"
  end
  puts "\n  #{ info }".light_green
end

main_menu