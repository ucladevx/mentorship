class Api::V1::MessageSerializer < Api::V1::BaseSerializer
    attributes :id, :body, :conversation_id, :user_id

    def created_at
        object.created_at.in_time_zone.iso8601 if object.created_at
    end

    def updated_at
        object.updated_at.in_time_zone.iso8601 if object.created_at
    end
end
