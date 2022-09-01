# frozen_string_literal: true

module ToyTesting
  module Queries
    class GetToysAwaitingTesting
      include Import[
                account_repo: 'contexts.toy_testing.repositories.account',
                toy_repo: 'contexts.toy_testing.repositories.cat_toy',
              ]

      def call(payload)
        account = account_repo.find(payload[:account_id])
        cat_toys = toy_repo.get_awaiting_toys_for_account(payload[:cat_toy_id], account)

        cat_toys
      end
    end
  end
end