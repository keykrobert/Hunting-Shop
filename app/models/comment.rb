class Comment < ApplicationRecord
	belongs_to :object, polymorphic: true
    belongs_to :user
    #has_many :comments, as: :object, dependent: :destroy
end
