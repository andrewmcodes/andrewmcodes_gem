# frozen_string_literal: true

module Andrewmcodes
  class Card
    def self.call
      <<~CARD

        [36;1;4mAndrew Mason aka @andrewmcodes[0m

        [33;1mLocation:[0m  Phoenix, AZ
        [33;1mWork:[0m  Senior Product Developer @Podia
        [33;1mTwitter:[0m  https://twitter.com/andrewmcodes
        [33;1mGitHub:[0m https://github.com/andrewmcodes
        [33;1mWeb:[0m  https://andrewm.codes

        Also find me on Remote Ruby » [33;4mhttps://remoteruby.com[0m, Ruby for All » [33;4mhttps://rubyforall.com[0m, Ruby Radar » [33;4mhttps://rubyonrailspodcast.com[0m, and RSS » [33;4mhttps://andrewm.codes/feed.xml[0m

        [33m◈────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────◈[0m

        [38;5;230mgem exec andrewmcodes[39m or [38;5;230mopen https://github.com/andrewmcodes/andrewmcodes_gem[39m


      CARD
    end
  end
end
