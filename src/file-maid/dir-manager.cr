module File::Maid
  class DirManager
    target_path : String = ""

    def initialize(target_path : String)
      @target_path = target_path
    end

    # Parses Files and moves them in target directory
    def move_files_recursivelly(dir_path : String)
      begin
        if !Dir.exists?(dir_path)
          raise "File Maid: Source Path Is Incorrect Or Does Not Exists"
        end
        create_target_dir(@target_path)
        Dir.each(dir_path) do |entry|
          full_entry_path = "#{dir_path}/#{entry}"
          # For linux it checks that directories are not '.' and '..'
          if File.directory?(full_entry_path) && entry != "." && entry != ".."
            move_files_recursivelly(full_entry_path)
          else
            if entry != "." && entry != ".."
              extname = File.extname(entry).split(".")[1]
              target_path = "#{@target_path}/#{extname}"
              if !Dir.exists?(target_path)
                Dir.mkdir(target_path)
              end
              File.rename(full_entry_path, "#{target_path}/#{entry}")
            end
          end
        end
      rescue ex
        puts ex
        exit 1
      end
    end

    def create_target_dir(target_path)
      if !Dir.exists?(target_path)
        Dir.mkdir(target_path)
      end
    end
  end
end
