class Message < ApplicationRecord
  validates :content, presence: true
  #createの後にコミットする [ MessageVroadcastJobのperformを遅延実行 引数はself
  after_create_commit { MessageBroadcastJob.perform_later self }
end
