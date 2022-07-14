module API
  class Api::V1::ConsumablesController < ApplicationController
    def index
      @msg = 'Consumable data.'
      @data = Consumable.all
      render json: @data
    end

    def create
      data = params[:data].permit(:name, :place, :memo)
      @data = Consumable.create(data)#params[:パラメータ名]でデータを受け取る。
      render json: @data
    end

    def read
      @data = Consumable.find(params[:id])
      render json: @data
    end

    def update
      @data = Consumable.find(params[:id])
      @data.update_attributes(data: params[:data])
      render json: @data
    end

    def destroy
     @data = Consumable.find(params[:id])
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
