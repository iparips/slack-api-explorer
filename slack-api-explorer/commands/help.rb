module SlackApiExplorer
  module Commands
    class Help < SlackRubyBot::Commands::Base
      HELP = <<-EOS
I am your friendly Api Explorer, here to help.

```
General
-------

help       - get this helpful message

Commands
--------
#{`slack help`.gsub(/.*?(COMMANDS)/m, '').gsub(/^(    )/, '')}
```
        EOS
      def self.call(client, data, _match)
        client.say(channel: data.channel, text: [HELP, SlackApiExplorer::INFO].join("\n"))
        client.say(channel: data.channel, gif: 'help')
        logger.info "HELP: #{client.team} - #{data.user}"
      end
    end
  end
end