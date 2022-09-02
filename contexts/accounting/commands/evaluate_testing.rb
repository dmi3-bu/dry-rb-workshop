module Accounting
  module Commands
    class EvaluateTesting
      include Import[
        evaluate_testing_logic: 'contexts.accounting.libs.evaluate_testing_logic',
        account_repo: 'contexts.accounting.repositories.account',
        toy_repo: 'contexts.accounting.repositories.cat_toy',
      ]

      def call(payload)
        account = account_repo.find(payload[:account_id])
        cat_toy = toy_repo.find(payload[:cat_toy_id])

        result =
          evaluate_testing_logic.call(account: account, cat_toy: cat_toy, characteristics: payload[:characteristics])

        result
      end
    end
  end
end
