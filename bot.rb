require 'discordrb'
require 'dotenv/load'

bot = Discordrb::Commands::CommandBot.new token: ENV["TOKEN"], prefix: '!'

puts "URL: #{bot.invite_url}"

bot.message(containing: /o+h+ n+o+/i) do |event|
  event.respond 'https://tenor.com/Uyxd.gif'
end

bot.message(content: /u+g+h+/i) do |event|
  event.respond 'ughhhhh'
end

bot.message(containing: /d+o+ i+t+/i) do |event|
  event.respond 'https://tenor.com/2Uz8.gif'
  event.respond 'https://tenor.com/uQj1.gif'
  event.respond 'https://tenor.com/sMB9.gif'
end

bot.command :test do |event|
  event.user.name
end

at_exit { bot.stop }
bot.run