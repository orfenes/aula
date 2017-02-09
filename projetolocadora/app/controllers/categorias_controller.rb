class CategoriasController < ApplicationController

  before_action :set_categorias, only: [:show, :edit, :update, :destroy]

  def index
    @categorias = Categoria.all
  end

  def new
    @categorias = Categoria.new
  end

  def create
    respond_to do |format|
      if @categorias.save
        format.html { redirect_to @categorias, notice: 'Categoria cadastrada com sucesso'}
      else
        format.html{ redirect_to :new }
      end
    end
  end

  def show
  end

  def update
    respond_to do |format|
      if @categorias.update
        format.html { redirect_to @categorias, notice: 'Categoria atualizada com sucesso' }
      else
        format.html { redirect_to :edit }
      end
    end
  end

  def edit
  end

  def destroy
  end

  def set_categorias
    @categorias = Categoria.find(params[:id])
    @categorias = Categoria.find(params[:id])
  end

  def categoria_params
    params.require(:categoria).permit(:nome)
  end

end