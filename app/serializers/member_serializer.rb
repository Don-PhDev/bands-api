class MemberSerializer < ActiveModel::Serializer
  attributes :id, :name, :created_at

  belongs_to :band
end
