class Api::V1::MessagesController < Api::V1::BaseController
    include ActiveHashRelation

    def index
        messages = Message.all

        messages = apply_filters(messages, params)

        render(
            json: ActiveModel::ArraySerializer.new(
                messages,
                each_serializer: Api::V1::MessageSerializer,
                root: 'messages'
            )
        )
    end

    def show
        message = Message.where("conversation_id = #{params[:id]}")

        render(
            json: ActiveModel::ArraySerializer.new(
                message,
                each_serializer: Api::V1::MessageSerializer,
                root: 'messages'
            )
        )
    end
end
