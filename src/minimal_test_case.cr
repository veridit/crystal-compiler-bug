# Minimal reproduction of Crystal compiler bug with nil checking of command output
class Bug
  @debug = false
  @verbose = false
  def run
    success = false
    selector = "a"
    case selector
    when "a"
      puts "Did not assign to output"
      success = true
    when "b"
      output = `echo true`
      success = $?.success?
      if @debug && !output.empty?
        STDOUT.puts output
      end
    else
    end
    if success
      if @verbose
        puts "Congratulations, there is no compiler bug!"
        STDOUT.puts output if @debug && output && !output.empty?
      end
    else
      raise "Failed to perform."
    end
  end
end

bug = Bug.new
bug.run
