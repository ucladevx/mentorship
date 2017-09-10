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

    def create
        conversation = Conversation.new
        conversation.sender_id = params[:sender_id]
        conversation.recipient_id = params[:recipient_id]

        conversation.save

        render json: conversation
    end

    def show
        conversation = Conversation.where("id = #{params[:id]}")
        render(
            json: ActiveModel::ArraySerializer.new(
                conversation,
                each_serializer: Api::V1::ConversationSerializer,
                root: 'conversations'
            )
        )
    end
end
