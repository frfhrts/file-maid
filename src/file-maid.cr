require "./file-maid/*"

module File::Maid
  args_parser = ArgsParser.new
  DirManager.new(args_parser.target_path).move_files_recursivelly(args_parser.source_path)
  puts "File Maid Finished Successfully"
end
