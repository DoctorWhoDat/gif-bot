class Pairs
  def initialize
    @x = [
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
      },
      {
        match: '/hellothisispaul/i',
        gif: "Paul? I don't know any Paul, just a pail."
      }
    ]
  end

  def get_pairs
    return @x
  end
end