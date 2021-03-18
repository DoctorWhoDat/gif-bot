require 'discordrb'
require 'dotenv/load'

bot = Discordrb::Commands::CommandBot.new token: ENV["TOKEN"], prefix: '!'

# puts "URL: #{bot.invite_url}"

pairs = [
  {
    match: /o+h+ n+o+/i,
    gif: 'https://tenor.com/Uyxd.gif'
  },
  {
    match: /u+g+h+/i,
    gif: 'ughhhhh'
  },
  {
    match: /d+o+ i+t+/i,
    gif: 'https://tenor.com/2Uz8.gif'
  },
  {
    match: /d+o+ i+t+/i,
    gif: 'https://tenor.com/uQj1.gif'
  },
  {
    match: /d+o+ i+t+/i,
    gif: 'https://tenor.com/sMB9.gif'
  }
]

# bot.message(containing: /o+h+ n+o+/i) do |event|
#   event.respond 'https://tenor.com/Uyxd.gif'
# end

# bot.message(content: /u+g+h+/i) do |event|
#   event.respond 'ughhhhh'
# end

# bot.message(containing: /d+o+ i+t+/i) do |event|
#   event.respond 'https://tenor.com/2Uz8.gif'
#   event.respond 'https://tenor.com/uQj1.gif'
#   event.respond 'https://tenor.com/sMB9.gif'
# end

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