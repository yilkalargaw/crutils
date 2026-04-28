module Crutils::False
  def self.run(args = [] of String)
    # 'false' always exits with status 1
    exit 1
  end
end


# When calling the binary by itself
Crutils::False.run(ARGV)
