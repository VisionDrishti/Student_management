class Comment < ApplicationRecord
  belongs_to :article
  belongs_to :event
  belongs_to :news
end
