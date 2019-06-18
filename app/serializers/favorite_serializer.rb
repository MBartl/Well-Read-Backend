class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :book_id, :user_id

  belongs_to :book
end
