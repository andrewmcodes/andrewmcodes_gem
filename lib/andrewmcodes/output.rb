# frozen_string_literal: true

require 'artii'
require 'lolcat'
require 'logger'
require 'fileutils'
module Andrewmcodes
  class Output
    # delegate :centered_message, to: :center
    def log_to_console
      if terminal_width >= 83
        # content = Center.new(terminal_width-83, terminal_width)
        spces = Center.new(output: 83, columns: terminal_width)
        move_over = spces.spaces(100)
        ascii("#{move_over}andrewmcodes")

        p
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
      out = a.asciify(a_string)
      system("echo '#{out}' | lolcat")
    end

    def log_info
      templates_root = File.expand_path(File.join(".", "."), File.dirname(__FILE__))
      content = File.readlines "#{templates_root}/info.md"

      File.open("./../../temp.md", "w") do |file|
        content.each do |line|
          system("echo '#{centered_message(line)}' | lolcat")
        end
      end

      FileUtils.rm("./../../temp.md")
    end

    def echo(message)
      system("echo '#{centered_message(message)}'")
    end

    def centered_message(message)
      content = Center.new(output: message, columns: terminal_width)
      content.centered_content
    end
  end
end