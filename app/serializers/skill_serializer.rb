class SkillSerializer < ActiveModel::Serializer
  attributes :id, :difficulty, :order, :topic
end
