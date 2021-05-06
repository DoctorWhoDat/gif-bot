require 'discordrb'
require 'dotenv/load'
require 'pry'

require_relative 'lib/pairs'

bot = Discordrb::Commands::CommandBot.new token: ENV["TOKEN"], prefix: '!'

ignore_phrase = /!!x!!/

# puts "URL: #{bot.invite_url}"
pairs = Pairs.new.get_pairs

pairs.each do |x|
  bot.message(containing: x[:match]) do |event|
    event.respond x[:gif] unless ignore_phrase.match(event.content)
  end
end

bot.command :test do |event|
  event.user.name
end

bot.command :get_ignore_phrase do |event|
  "If you want me to ignore your dumb ass, put this in your message: ```#{ignore_phrase.inspect.gsub('/','')}```"
end

bot.mention do |event|
  event.respond 'You rang?'
end

at_exit { bot.stop }
bot.run
