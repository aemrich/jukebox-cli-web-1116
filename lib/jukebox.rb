songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "help, list, play, exit"
end

def play(songs)
  puts "Please enter a song name or number:"
  answer = gets.chomp
  if answer.to_i > 0 && answer.to_i < (songs.length-1)
    puts songs[(answer.to_i) -1]
  else songs.each_with_index do |x, index|
    if answer == x
      puts songs[index]
    elsif answer == "exit"
      return exit_jukebox
    else puts "Invalid input, please try again"
    end
  end
  end
end

def list(songs)
  songs.each_with_index do |x, index|
    puts "#{index +1}. #{x}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(x)

  puts "Please enter a command:"
  
  until (answer = gets.chomp) == "exit"
    if answer == "list"
      list(x)
    elsif answer == "play"
      play(x)
    elsif answer == "help"
      help
    end
  end
  exit_jukebox
end