require 'jumpstart_auth'

class MicroBlogger
	attr_reader :client

	def initialize
		puts "Initializing"
		@client = JumpstartAuth.twitter
	end

	def run
		puts "Welcome to the microblogger"
		command = ""
		while command != "q"
			printf "enter command: "
			input = gets.chomp
			parts = input.split(" ")
			command = parts[0]

		case command
			when 'q' then puts "Goodbye!"
			when 't' then tweet(parts[1..-1].join(" "))
			else
				puts "Sorry, I don't know how to #{command}"
		end
	end
	end

	def tweet(message)
		user_input = gets.chomp
		message = user_input
		if 
			message.length >= 140
			puts "Tweet too long"
		else
			@client.update(message)
		end
	end
end

blogger = MicroBlogger.new
blogger.run