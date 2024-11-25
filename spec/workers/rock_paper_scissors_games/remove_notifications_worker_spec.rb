# frozen_string_literal: true

require 'rails_helper'

RSpec.describe RockPaperScissorsGames::RemoveNotificationsWorker do
  let(:game) { create :rock_paper_scissors_game }

  specify do
    expect(RockPaperScissorsGames::RemoveNotifications).to receive(:call).with(game: game)

    described_class.new.perform(game.id)
  end
end
