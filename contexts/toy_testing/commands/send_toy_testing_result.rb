# frozen_string_literal: true

module ToyTesting
  module Commands
    class SendToyTestingResult
      include Import[
                account_repo: 'contexts.toy_testing.repositories.account',
                toy_repo: 'contexts.toy_testing.repositories.cat_toy',
              ]

      def call(payload)
        account = account_repo.find(payload[:account_id])
        cat_toy = toy_repo.find(payload[:cat_toy_id])

        result = :ok #stub

        result
      end
    end
  end
end