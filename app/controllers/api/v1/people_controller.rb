module API
    class Api::V1::PeopleController < ApplicationController

        def index
            @msg = 'Person data.'
            @data = Person.all
            render json: @data
        end

        def create
            data = params[:data].permit(:id, :name, :age, :mail)
            @data = Person.create(data)#params[:パラメータ名]でデータを受け取る。
            render json: @data
        end

        def read
            @data = Person.find(params[:id])
            render json: @data
        end

        def update
            @data = Person.find(params[:id])
            @data.update_attributes(data: params[:data])
            render json: @data
        end

        def destroy
            @data = Person.find(params[:id])
            if @data.destroy
                head :no_content, atatus: :ok
                #リクエスト成功
            else
                render json: @data.errors, status: :unprocessable_entity
                #サーバーが要求を理解できたが、処理ができなかった。
            end
        end
    end
end
