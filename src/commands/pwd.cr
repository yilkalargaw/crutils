module Crutils::Pwd
  def self.run(args = [] of String)
    puts Dir.current
  end
end

if File.basename(PROGRAM_NAME) == "pwd"
  Crutils::Pwd.run(ARGV)
end