# frozen_string_literal: true

module InMemory
  module Transport
    class AccountingRequest
      include Import[service: 'contexts.accounting.commands.evaluate_testing']

      def call
        puts 'Hello from in_memory accounting request'
        puts 'Call logic:'
        puts
        sleep 0.5

        result = service.call(payload)

        puts result
        sleep 0.5
        puts 'Request done'
      end

      private

      def payload
        {
          account_id: 5,
          cat_toy_id: 6,
          characteristics: [
            {
              characteristic_type: 'happiness',
              value: '45645sdf4',
              comment: 'ok',
              will_recommend: true
            }
          ]
        }
      end
    end
  end
end