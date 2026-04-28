module Crutils::Cat
  def self.run(args = [] of String)
    if args.empty?
      # If no args, read from STDIN
      IO.copy(STDIN, STDOUT)
    else
      args.each do |filename|
        if filename == "-"
          IO.copy(STDIN, STDOUT)
        elsif File.file?(filename)
          File.open(filename) do |file|
            IO.copy(file, STDOUT)
          end
        else
          STDERR.puts "cat: #{filename}: No such file or directory"
        end
      end      
    end
  end
end

# When calling the binary by itself
if File.basename(PROGRAM_NAME) == "cat"
  Crutils::Cat.run(ARGV)
end