module Usernames
  def self.generate(options = { case: 'snake', capitalize: false })
    base_path = File.join(Dir.pwd, 'lib')
    adjectives = File.open(base_path + '/adjectives.txt', 'r').readlines(chomp: true)
    nouns = File.open(base_path + '/nouns.txt', 'r').readlines(chomp: true)

    words = "#{adjectives.sample.downcase} #{nouns.sample.downcase}".split(' ')

    if options[:case] == 'camel' || options[:capitalize] == 'true'
      words.map!(&:capitalize)
    end

    case options[:case].to_sym
    when :camel
      words.join('')
    when :snake
      words.join('_')
    when :hyphen
      words.join('-')
    when :space
      words.join(' ')
    else
      words
    end
  end

  def self.generate_usernames(num = 1, options)
    usernames = []

    num.times do
      usernames << generate(options)
    end

    usernames
  end
end
