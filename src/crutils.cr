require "./commands/*"

module Crutils
  def self.main
    app_name = File.basename(PROGRAM_NAME)
    args = ARGV.dup

    case app_name
    when "true"
      True.run(args)
    when "false"
      False.run(args)
    when "cat"
      Cat.run(args)
    when "crutils"
      if args.empty?
        puts "Crutils multicall binary. Usage: [command] [args]"
      else
        subcommand = args.shift
        execute_subcommand(subcommand, args)
      end
    else
      abort "Unknown tool link: #{app_name}"
    end
  end

  def self.execute_subcommand(cmd, args)
    case cmd
    when "true"  then True.run(args)
    when "false" then False.run(args)
    when "cat"  then Cat.run(args)
    else abort "Unknown command: #{cmd}"
    end
  end
end

Crutils.main