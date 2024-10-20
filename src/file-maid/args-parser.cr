module File::Maid
  class ArgsParser
    property target_path : String = "", source_path : String = ""

    def initialize
      parse_args
      puts "File Maid Starting..."
    end

    # Checks if args contain help argument
    def includes_help
        return ARGV.includes?("-h")  || ARGV.includes?("--help")
    end

    def parse_args
      begin
        if ARGV.size < 1
          raise "File Maid: try 'file-maid --help' or 'file-maid -h' for more information"
        end

        if ARGV.size > 4
          raise "File Maid: Too Many Arguments, try 'file-maid --help' or 'file-maid -h' for more information"
        end

        if !ARGV.includes?("-t") && !ARGV.includes?("--target-path") && !includes_help
            raise "File Maid: Target Path Not Provided, try 'file-maid --help' or 'file-maid -h' for more information"
        end

        if !ARGV.includes?("-s") && !ARGV.includes?("--source-path") && !includes_help
            raise "File Maid: Source Path Not Provided, try 'file-maid --help' or 'file-maid -h' for more information"
        end
        i = 0
        while i < ARGV.size
          case ARGV[i]
          when "-h", "--help"
            puts "Usage file-maid [options...] \n-t, --target-path \t  Specify Target Path \n-s, --source-path \t  Specify source Path\n-h, --help \t  Show this help message"
            exit 1
          when "-t", "--target-path"
            if i + 1 < ARGV.size
              @target_path = ARGV[i + 1]
              i += 1
            else
              raise "No Target Path Provided"
            end
          when "-s", "--source-path"
            if i + 1 < ARGV.size
              @source_path = ARGV[i + 1]
              i += 1
            else
              raise "No Source Path Provided"
            end
          end
          i += 1
        end
      rescue ex
        puts ex
        exit 1
      end
    end
  end
end
