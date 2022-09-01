# frozen_string_literal: true

module ToyTesting
  module Commands
    class AssignToyTestingToAccount
      include Import[
                account_repo: 'contexts.toy_testing.repositories.account',
                toy_repo: 'contexts.toy_testing.repositories.cat_toy',
                assign_toy_testing_to_account_logic: 'contexts.toy_testing.libs.assign_toy_testing_to_account_logic'
              ]

      def call(payload)
        account = account_repo.find(payload[:account_id])
        cat_toy = toy_repo.find(payload[:cat_toy_id])

        result =
          assign_toy_testing_to_account_logic.call(account: account, cat_toy: cat_toy)

        result
      end
    end
  end
end