class AddDynamicPrizeEnabledToFreeTournaments < ActiveRecord::Migration[6.1]
  def change
    add_column :free_tournaments, :dynamic_prize_enabled, :boolean, null: false, default: false
  end
end
