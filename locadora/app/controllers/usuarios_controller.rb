class UsuariosController < ApplicationController
  def index
    @usuarios = Usuario.all
  end

  def show
    @usuario = Usuario.find(params[:id])
  end

  def new
    @usuario = Usuario.new
  end

  def create
    @usuario = Usuario.new(usuario_params)
    respond_to do |format|
      if @usuario.save
        format.html { redirect_to @usuario, notice: 'Usuario salvo com sucesso' }
      else
        format.html { render :new }
      end
    end
  end


  def edit
    @usuario = Usuario.find(params[:id])
  end

  def update
    @usuario = Usuario.find(params[:id])
    respond_to do |format|
      if @usuario.update(usuario_params)
        format.html { redirect_to @usuario, notice: 'Usuario atualizado com sucesso' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @usuario = Usuario.find(params[:id])
    @usuario.destroy
    respond_to do |format|
      format.html { redirect_to @usuario, notice: 'Usuario deletado com sucesso' }
    end
  end

  def usuario_params
    params.require(:usuario).permit(:name, :email, :cpf)
  end

end