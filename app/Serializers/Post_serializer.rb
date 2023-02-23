class PostSerializer < ActiveModel::Serializer
    attributes :id, :content, :created_at, :updated_at
    belongs_to :user
    has_many :comments
  end
  