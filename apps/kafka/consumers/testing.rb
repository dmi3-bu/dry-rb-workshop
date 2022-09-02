# frozen_string_literal: true

module Kafka
  module Consumers
    class Testing #< ApplicationConsumer
      # include Import[command: 'contexts.accounting.commands.evaluate_testing']
      #
      # def consume
      #   command.call(order: messages.payloads[:payload][:order])
      # end
    end
  end
end
