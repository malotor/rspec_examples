class Output 
	def messages
		@messages ||= []
	end
	def puts(message)
		messages << message
	end 
end

def output
	@output ||= Output.new
end

Given(/^I am not yet playing$/) do
	# express the regexp above with the code you wish you had
end

When(/^I start a new game$/) do
  game = Codebreaker::Game.new(terminal_output) 
  game.start
end

Then (/^I should see "([^"]*)"$/) do |message| 
	expect(terminal_output.messages).to include(message)
	#terminal_output.messages.should include(message)
end