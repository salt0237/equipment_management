module API
  class Api::V1::FurnituresController < ApplicationController
    def index
      @msg = 'Furniture data.'
      @data = Furniture.all
      render json: @data
    end

    def create
      data = params[:data].permit(:name,:number,:person,:place,:day,:memo,:flag)
      @data = Furniture.create(data)#params[:パラメータ名]でデータを受け取る。
      render json: @data
    end

    def read
      @data = Furniture.find(params[:id])
      render json: @data
    end

    def update
      @data = Furniture.find(params[:id])
      data = params[:data].permit(:name,:number,:person,:place,:day,:memo,:flag,:apdated_at)
      @data.update(data)
      render json: @data
    end

    def destroy
     @data = Furniture.find(params[:id])
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