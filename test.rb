file = ARGV.first
contents = File.open(file)
puts file
puts contents
print contents.read
contents = File.open(file, 'w')
contents.write("\nMore text.")
contents.close
contents = File.open(file)
print contents.read
contents = File.open(file, 'a')
contents.write("\nEven more text.")
contents.close
contents = File.open(file)
contents.seek(5)
puts "\ncontents\n #{contents.read}"
contents.rewind
puts "rewind #{contents.read}"

