# frozen_string_literal: true

module Namecard
  class Center
    attr_accessor :output, :columns

    def initialize(output, columns)
      @output = output
      @columns = output
    end

    def centering_spaces
      output_length = output.strip.length.to_i
      spaces_needed = ( (columns - output_length) / 2 ) - 1
      spaces_string = Array.new(spaces_needed, " ").join("")
      spaces_string
    end

    def centered_content
      spaces = centering_spaces
      "#{spaces}#{output}#{spaces}"
    end
  end
end