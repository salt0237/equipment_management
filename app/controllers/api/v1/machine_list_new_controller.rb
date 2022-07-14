module API
  class Api::V1::MachineListNewController < ApplicationController
    def index
      @msg = 'mln data'
      @data = MachineListNew.all
      render json: @data
    end
    
    def create
      data = params[:data].permit(:id, :name, :age, :mail)
      @data = MachineListNew.create(data)#params[:パラメータ名]でデータを受け取る。
      render json: @data
    end

    def read
      @data = MachineListNew.find(params[:id])
      render json: @data
    end

    def update
      @data = MachineListNew.find(params[:id])
      @data.update_attributes(data: params[:data])
      render json: @data
    end

    def destroy
      @data = MachineListNew.find(params[:id])
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