class Crm::Arena::Champion::TonBattle::Base < Crm::Base
  private

  def matches_conditions?
    user.wallet.virtual_balance.positive?
  end
end
