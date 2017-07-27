module V2
  class ToppingSerializer < ActiveModel::Serializer
    attributes :id, :name, :image, :icon
  end
end
