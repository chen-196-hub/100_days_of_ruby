require 'tty-prompt'

prompt = TTY::Prompt.new
options = ["Option 1", "Option 2", "Option 3", "Option 4","Option 5", "Option 6","Option 7", "Option 8", "Option 9"]
selection = prompt.select("Select an option:", options)

puts "You selected #{selection}"
