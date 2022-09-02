# frozen_string_literal: true

module InMemory
  module Transport
    class ToyTestingRequest
      include Import[
                service1: 'contexts.toy_testing.commands.assign_toy_testing_to_account',
                service2: 'contexts.toy_testing.commands.send_toy_testing_result',
                service3: 'contexts.toy_testing.queries.get_toys_awaiting_testing'
              ]

      def call
        puts 'Hello from in_memory toy testing request'
        puts 'Call logic:'
        puts
        sleep 0.5
        result = service1.call(payload)
        puts result
        sleep 0.5
        puts 'Request done'

        puts 'Call logic:'
        puts
        sleep 0.5
        result = service2.call(payload)
        puts result
        sleep 0.5
        puts 'Request done'

        puts 'Call logic:'
        puts
        sleep 0.5
        result = service3.call(payload)
        puts result
        sleep 0.5
        puts 'Request done'
      end

      private

      def payload
        {
          account_id: 5,
          cat_toy_id: 6,
        }
      end
    end
  end
end