module Crutils::Whoami
  def self.run(args = [] of String)
    puts ENV["USER"]? || ENV["USERNAME"]? || "unknown"
  end
end

if File.basename(PROGRAM_NAME) == "whoami"
  Crutils::Whoami.run(ARGV)
end