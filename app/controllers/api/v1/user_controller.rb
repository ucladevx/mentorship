class Api::V1::UserController < Api::V1::BaseController
    include ActiveHashRelation

    def index
        users = User.all

        users = apply_filters(users, params)

        render(
            json: ActiveModel::ArraySerializer.new(
                users,
                each_serializer: Api::V1::UserSerializer,
                root: 'users'
            )
        )
    end

    def show
        user = User.where("id = #{params[:id]}")

        render(
            json: ActiveModel::ArraySerializer.new(
                user,
                each_serializer: Api::V1::UserSerializer,
                root: 'users'
            )
        )
    end
end
