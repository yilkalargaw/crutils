require "./commands/*"

module Crutils
  COMMANDS = {
    "true"  => True,
    "false" => False,
    "cat"   => Cat,
    "echo"  => Echo,
    "pwd"   => Pwd
  }

  def self.main
    app_name = File.basename(PROGRAM_NAME)
    args = ARGV.dup

    return puts("#{app_name} multicall binary. Usage: [command] [args]") if args.empty?

    cmd = args.shift?
    command = COMMANDS[cmd]?
    if command
      command.run(args)
    else
      abort("Unknown Command: #{cmd}")
    end
  end
end

Crutils.main