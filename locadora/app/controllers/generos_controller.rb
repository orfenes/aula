class GenerosController < ApplicationController

  before_action :set_genero, only: [:show, :edit, :update, :destroy]

  def index
    @generos = Genero.all
  end

  def new
    @generos = Genero.new
  end

  def create
    @generos = Genero.new(generos_params)
    respond_to do |format|
      if @generos.save
        format.html {redirect_to @generos, notice: 'Genero Cadastrado com sucesso'}
      else
        format.html { render :new }
      end
    end
  end

  def show
  end

  def edit
  end

  def update
    respond_to do |format|
      if @generos.update(generos_params)
        format.html {redirect_to @generos, notice: 'Genero atualizado com sucesso'}
      end
        format.html { render :edit }
    end
  end

  def destroy
    @generos.destroy
    respond_to do |format|
      format.html{ redirect_to generos_url, notice: 'Removido com sucesso' }
    end
  end

  def set_genero
    @generos = Genero.find(params[:id])
  end


  def generos_params
    params.require(:genero).permit(:nome)
  end

end