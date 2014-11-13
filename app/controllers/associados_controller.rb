class AssociadosController < ApplicationController
	def show
		@associados = Associados.find(params[:id])
	end
	
	def new
		@associados = Associados.new
	end	

	def index
		@associados = Associados.all
	end

	def create
		@associados = Associados.new(associados_params)

		@associados.save
		redirect_to @associados
	end

	private
		def associados_params
			params.require(:associados).permit(:nome, :endereco, :bairro, :cpf, :rg, :pis_pasep, :ctps, :nome_mae, :convenio)				
		end
end