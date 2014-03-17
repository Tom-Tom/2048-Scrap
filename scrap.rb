# encoding: UTF-8
require 'watir-webdriver'

b = Watir::Browser.new :firefox

# b.goto "https://twitter.com/signup"

# b.text_field(:name, "user[name]").set "Test"

# b.text_field(:name, "user[email]").set "kevin_killerdu92@gmail.com"

# b.text_field(:name, "user[user_password]").set "cdelamerde12345"

# b.text_field(:name, "user[screen_name]").set "Killerdu92"

#b.input(:name, "submit_button").click

b.goto "http://gabrielecirulli.github.io/2048/"

puts b.div(:class => "game-message").class_name

loop do
	
	case rand(5)
		when 1
	  	#b.send_keys :up
	  	b.send_keys :down
		when 2
			b.send_keys :right
		when 3
			b.send_keys :down
		when 4
			b.send_keys :left
		else
	end

	if b.div(:class => "game-message").class_name == "game-message game-over"
		sleep 0.5
		puts b.div(:class => "score-container").text
		b.link(:class => "retry-button").click 
	end

end

