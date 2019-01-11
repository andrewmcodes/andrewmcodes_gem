# frozen_string_literal: true

module Andrewmcodes
  class Center
    attr_accessor :output, :columns

    def initialize(output:, columns:)
      @output = output
      @columns = columns
    end

    def centering_spaces
      if output.is_a? String
        spaces(output.strip.length.to_i)
      elsif output.is_a? Integer
        spaces(output)
      else
        p "ERROR"
      end
    end

    def spaces(length)
      spaces_needed = ((columns - length) / 2) - 1
      spaces_string = Array.new(spaces_needed, " ").join("")
      spaces_string
    end

    def centered_content
      spaces = centering_spaces
      "#{spaces}#{output}#{spaces}"
    end
  end
end
