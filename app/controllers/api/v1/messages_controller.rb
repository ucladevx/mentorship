class Api::V1::MessagesController < Api::V1::BaseController

    def create
        @message = Message.new(message_params)
        if @message.save
            render json: @message
        else
            render body: nil, status: :bad_request
        end
    end

    def message_params
        params.require(:message).permit(:body, :conversation_id, :user_id)
    end
end
