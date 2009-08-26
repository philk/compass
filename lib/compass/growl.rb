module Compass

    def growl(title, message, pass)
      if pass
        icon = File.join(Compass.base_directory, 'img', 'compass-green.png')
      else
        icon = File.join(Compass.base_directory, 'img', 'compass-red.png')
      end
      system("/usr/bin/env growlnotify -n Compass -m '#{message}' -t '#{title}' --image #{icon}")
    end

    module_function :growl
end