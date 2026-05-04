
module Crutils::Link
  def self.run(args = ARGV)
    if args.size != 2
      STDERR.puts "usage: link TARGET LINK_NAME"
      exit 1
    end

    begin
      File.link(args[0], args[1])
    rescue ex
      STDERR.puts "link: #{ex.message}"
      exit 1
    end
  end
end

if File.basename(PROGRAM_NAME) == "link"
  Crutils::Link.run(ARGV)
end