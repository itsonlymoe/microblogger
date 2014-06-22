require 'jumpstart_auth'

class MicroBlogger
	attr_reader :client

	def initialize
		puts "Initializing"
		@client = JumpstartAuth.twitter
	end

	def tweet
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
blogger.tweet