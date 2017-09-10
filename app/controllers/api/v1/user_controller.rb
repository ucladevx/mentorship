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

    def updatescore
        user = User.where("id = #{params[:id]}")
        score = user[0].ratingscore
        if score == nil
            score = params[:addscore]
        else
            score = (score + params[:addscore]) / 2
        end

        user[0].ratingscore = score

        if user[0].save
            render json: user[0]
        else
            render body: nil, status: :bad_request
        end
    end
end
