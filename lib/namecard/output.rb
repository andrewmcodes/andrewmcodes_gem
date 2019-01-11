# frozen_string_literal: true

require 'artii'
require 'lolcat'
require './info.md'
module Namecard
  class Output
    include Center

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
      content = File.readlines './info.md'

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
      Center.new(message, terminal_width).centered_content
    end
  end
end