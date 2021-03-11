require 'discordrb'
require 'dotenv/load'

bot = Discordrb::Bot.new token: ENV["TOKEN"]

puts "URL: #{bot.invite_url}"

bot.message(containing: /o+h+ n+o+/i) do |event|
  event.respond 'https://tenor.com/Uyxd.gif'
end

bot.message(containing: /u+g+h+/i) do |event|
  event.respond 'ughhhhh'
end

at_exit { bot.stop }
bot.run