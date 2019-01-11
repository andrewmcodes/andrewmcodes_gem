# frozen_string_literal: true

require "andrewmcodes/version"
require "andrewmcodes/center"
require "andrewmcodes/output"

module Andrewmcodes
  class Error < StandardError; end

  Output.new.log_to_console
end
