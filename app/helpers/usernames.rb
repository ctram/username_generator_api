module Usernames
  def self.generate
    base_path = File.join(Dir.pwd, 'lib')
    adjectives = File.open(base_path + '/adjectives.txt', 'r').readlines(chomp: true)
    nouns = File.open(base_path + '/nouns.txt', 'r').readlines(chomp: true)
    "#{adjectives.sample} #{nouns.sample}"
  end
end
