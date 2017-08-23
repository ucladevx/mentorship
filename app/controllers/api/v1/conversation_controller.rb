class Api::V1::ConversationController < Api::V1::BaseController
    include ActiveHashRelation

    def index
        conversations = Conversation.all

        conversations = apply_filters(conversations, params)

        render(
            json: ActiveModel::ArraySerializer.new(
                conversations,
                each_serializer: Api::V1::ConversationSerializer,
                root: 'conversations'
            )
        )
    end

    def show
        conversation = Conversation.where("recipient_id = #{params[:id]}")

        render(
            json: ActiveModel::ArraySerializer.new(
                conversation,
                each_serializer: Api::V1::ConversationSerializer,
                root: 'conversations'
            )
        )
    end
end
