module Crutils::Echo
  def self.run(args = [] of String)
    if args.first? == "-n"
      print args[1..].join(" ")
    else
      puts args.join(" ")
    end
  end
end

if File.basename(PROGRAM_NAME) == "echo"
  Crutils::Echo.run(ARGV)
end