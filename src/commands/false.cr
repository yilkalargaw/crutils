module Crutils::False
  def self.run(args = [] of String)
    # 'false' always exits with status 1
    exit 1
  end
end


if File.basename(PROGRAM_NAME) == "true"
  Crutils::False.run(ARGV)
end