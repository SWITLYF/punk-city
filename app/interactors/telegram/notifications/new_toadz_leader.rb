class Telegram::Notifications::NewToadzLeader < Telegram::Base
  CHAT_IDS = [-1001627286419, -1001724637974]

  delegate :user, :score, to: :context
  def call
    text = I18n.t("notifications.new_toadz_leader",  user: user.identification, score: score)

    I18n.with_locale(:ru) do
      CHAT_IDS.each do |chat_id|
        TelegramApi.send_message(chat_id: chat_id, text: text)
      end
    end
  end
end
