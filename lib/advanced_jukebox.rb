#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

# my_songs = {
# "Go Go GO" => '<home/JohnAP/jukebox-cli-dumbo-web-career-031119/audio/Emerald-Park01.mp3'>,
# "LiberTeens" => '<home/JohnAP/jukebox-cli-dumbo-web-career-031119/audio/Emerald-Park/02.mp3'>,
# "Hamburg" =>  '<home/JohnAP/jukebox-cli-dumbo-web-career-031119/Emerald-Park/03.mp3'>,
# "Guiding Light" => '<home/JohnAP/jukebox-cli-dumbo-web-career-031119/audio/Emerald-Park/04.mp3'>,
# "Wolf" => '<home/JohnAP/jukebox-cli-dumbo-web-career-031119/audio/Emerald-Park/05.mp3'>,
# "Blue" => '<home/JohnAP/jukebox-cli-dumbo-web-career-031119/audio/Emerald-Park/06.mp3'>,
# "Graduation Failed" => '<home/JohnAP/jukebox-cli-dumbo-web-career-031119/audio/Emerald-Park/07.mp3>'
# }

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end



def list(my_songs)
  my_songs.keys.each_with_index do |song, i|
    puts "#{i + 1}. #{song}"
  end
end


def play(my_songs)
  puts "Please enter a song name"
  song_to_play = gets.chomp
  if !my_songs.keys.include?(song_to_play)
    puts "Invalid input, please try again"
  else
    puts "Now playing #{song_to_play}"
    system 'open <jukebox-cli-dumbo-web-career-031119/audio/Emerald-Park>'
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help

  input = ""
  while input
    puts "Please enter a command:"
    input = gets.downcase.strip
    case input
    when 'list'
      list(my_songs)
    when 'play'
      list(my_songs)
      play(my_songs)
    when 'help'
      help
    when 'exit'
      exit_jukebox
      break
    else
      help
    end
  end
end
