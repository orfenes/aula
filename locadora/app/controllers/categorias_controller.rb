class CategoriasController < ApplicationController
  def index
    @categoria = Categorium.all
  end

  def show
    @categoria.find(param[:id])
  end

  def new
    @categoria = Categorium.new
  end

  def create
    @categoria = Categorium.new(categoria_params)
    responde_to do |format|
      if @categoria.save
        format.html { redirect_to @categoria, notice: 'Categoria salva com sucesso' }
      else
        format.html { render :new }
      end
    end
  end


  def edit
    @categoria = Categorium.find(params[:id])
  end

  def update
    @categoria = Categorium.find(:id)
    responde_to do |format|
      if @categoria.update(categoria_params)
        format.html { redirect_to @categoria, notice: 'Atualizada categoria com sucesso' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @categoria = Categorium.find(:id)
    @categoria.destroy
    responde_to do |format|
      format.html { redirect_to @categoria, notice: 'Usuario deletado com sucesso' }
    end
  end

  def categoria_params
   params.require(:categoria).permit(:nome)
  end

end