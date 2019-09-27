module Usernames
  def self.generate(options = { case: 'snake' })
    base_path = File.join(Dir.pwd, 'lib')
    adjectives = File.open(base_path + '/adjectives.txt', 'r').readlines(chomp: true)
    nouns = File.open(base_path + '/nouns.txt', 'r').readlines(chomp: true)

    words = "#{adjectives.sample} #{nouns.sample}".split(' ')

    case options[:case].to_sym
    when :camel
      words.map{ |w| w.capitalize }.join('')
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
end
