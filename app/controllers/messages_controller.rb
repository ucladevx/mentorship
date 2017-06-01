class MessagesController < ApplicationController

    before_action do
        @conversation = Conversation.find(params[:conversation_id])
    end

    def index
        @messages = @conversation.messages

        if params[:m]
            @over_ten = false
            @messages = @conversation.messages
        end

        if @messages.last
            if @messages.last.user_id != current_user.id
                @messages.last.read = true;
            end
        end

        @message = @conversation.messages.new
    end

    def new
        @message = @conversation.messages.new
    end

    def create
        @message = @conversation.messages.new(message_params)

        @message.save
    end

    private
    def message_params
        params.require(:message).permit(:id, :body, :user_id)
    end
end
