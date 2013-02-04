class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :instructions, :created_at
end
