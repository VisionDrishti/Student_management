class GuestsCleanupJob < ApplicationJob
  queue_as :default

  def perform(*args)
  puts " I am a vision "
  end
end
