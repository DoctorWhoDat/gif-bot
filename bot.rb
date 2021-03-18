require 'discordrb'
require 'dotenv/load'
require 'pry'

require_relative 'lib/pairs'

bot = Discordrb::Commands::CommandBot.new token: ENV["TOKEN"], prefix: '!'

# puts "URL: #{bot.invite_url}"
pairs = Pairs.new.get_pairs

pairs.each do |x|
  bot.message(containing: x[:match]) do |event|
    event.respond x[:gif]
  end
end

bot.command :test do |event|
  event.user.name
end

at_exit { bot.stop }
bot.run