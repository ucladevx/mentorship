class Api::V1::ConversationSerializer < Api::V1::BaseSerializer
    attributes :id, :sender_id, :recipient_id, :messages

    def created_at
        object.created_at.in_time_zone.iso8601 if object.created_at
    end

    def updated_at
        object.updated_at.in_time_zone.iso8601 if object.created_at
    end
end
