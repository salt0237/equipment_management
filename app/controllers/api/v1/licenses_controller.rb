module API
  class Api::V1::LicensesController < ApplicationController
    def index
      @msg = 'License data.'
      @data = License.all
      render json: @data
    end

    def create
      data = params[:data].permit(:license_id, :name, :number, :license_key, :memo,:flag)
      @data = License.create(data)#params[:パラメータ名]でデータを受け取る。
      render json: @data
    end

    def read
      @data = License.find(params[:id])
      render json: @data
    end

    def update
      @data = License.find(params[:id])
      data = params[:data].permit(:license_id, :name, :number, :license_key, :memo,:flag)
      @data.update(data)
      render json: @data
    end

    def destroy
      @data = License.find(params[:id])
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