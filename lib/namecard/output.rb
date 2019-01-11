# frozen_string_literal: true

require 'artii'
require 'lolcat'
module Namecard
  class Output
    # delegate :centered_message, to: :center
    def log_to_console
      if terminal_width >= 83
        ascii('andrewmcodes')
        p ""
      else
        echo("\nAndrew Mason \/ andrewmcodes\n")
      end

      log_info
    end

    def terminal_width
      @terminal_width ||= `tput cols`.strip.to_i
    end

    def ascii(a_string)
      a = Artii::Base.new :font => 'slant'
      a.asciify(a_string) | lolcat
    end

    def log_info
      templates_root = File.expand_path(File.join("..", "."), File.dirname(__FILE__))
      p templates_root
      content = File.readlines "#{templates_root}/info.md"

      File.open("./temp.md", "w") do |file|
        content.each do |line|
          file << centered_message(line)
        end
      end

      system("lolcat './temp.md'")
      File.rm("~./temp.md")
    end

    def echo(message)
      system("echo '#{centered_message(message)}'")
    end

    def centered_message(message)
      content = Center.new(message, terminal_width)
      content.centered_content
    end
  end
end