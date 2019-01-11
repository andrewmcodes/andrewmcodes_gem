require "namecard/version"
require "namecard/center"
require "namecard/output"

module Namecard
  class Error < StandardError; end

  Output.log_to_console
end
