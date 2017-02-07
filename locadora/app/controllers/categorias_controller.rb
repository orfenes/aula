class CategoriasController < ApplicationController
  def index
    @categoria = Categorium.all
  end

  def show
  end

  def new
    @categoria = Categorium.new
  end

  def create
    @categoria = Categorium.new(categoria_params)
    respond_to do |format|
      if @categoria
        format.html { redirect_to @categoria, notice: 'deu certo' }
      else
        format.html { redirect_to :new}
      end
    end
  end


  def edit
  end

  def update
  end

  def destroy
  end

  def categoria_params
   params.require(:categorium).permit(:nome)
  end

end