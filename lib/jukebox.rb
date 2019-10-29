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
# def say_hello(name)
#     "Hi #{name}!"
#   end
  
#   puts "Enter your name:"
#   users_name = gets.strip
  
#   puts say_hello(users_name)

  def help 
    puts "I accept the following commands:
    - help : displays this help message
    - list : displays a list of songs you can play
    - play : lets you choose a song to play
    - exit : exits this program"
  end
  
  


def list(songs)
    songs.each_with_index { |item,number|
        puts "#{number + 1}. #{item}"
    }
end


def play(songs)
    puts "Please enter a song name or number"
    user_info = gets.strip
    selected_song = ""
    songs.each_with_index do |song, number|
        # puts song
        if number.to_s == user_info.to_s || song.to_s == user_info.to_s
            selected_song = song
        end
    end


    if selected_song == ""
        puts "Invalid input, please try again"
    else
        puts selected_song
    end


end

def exit_method
puts "Goodbye"
end     

# def run(songs)
#  help 
# puts "Please enter a command:" 
# user_input = gets.strip
# if input == "help"
#     help 
#   elsif input == "list"
#     list(songs)
#     elsif input == "play"
#       play(songs)
#     elsif input == "exit"
#       exit_method
#   end 
# end    

def run(songs)
    help
    puts "Please enter a command:" 
    user_input = nil
    while user_input != "exit"
        user_input = gets.strip
        if user_input == "help"
            help
        elsif user_input == "list"
            list(songs)
        elsif user_input == "play"
            play(songs)
        end
    end
end
# input = gets.chomp
# if input == "help"
#   help 
# elsif input == "list"
#   list(songs)
#   elsif input == "play"
#     play(songs)
# elsif input == "run"
#     run
#   elsif input == "exit"
#     exit_method
# end 


run(songs)