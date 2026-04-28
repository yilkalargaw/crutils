module Crutils::True
  def self.run(args = [] of String)
    # 'true' always exits with status 0
    exit 0
  end
end

# When using the above as a binary by itself
if File.basename(PROGRAM_NAME) == "true"
  Crutils::True.run(ARGV)
end
