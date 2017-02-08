class FilmesController < ApplicationController

  before_action :set_filmes, only: [:show, :edit, :update, :destroy]
  before_action :set_options_genero, only: [:new, :edit, :update, :create]

  def index
    @filmes = Filme.all
  end

  def new
    @filmes = Filme.new
  end

  def create
    respond_to do |format|
      if @filmes.save
        format.html { redirect_to @filmes, notice: 'Filmes cadastrado com sucesso' }
      else
        format.html { redirect_to :new }
      end
    end
  end

  def show
  end

  def edit
  end

  def update
    respond_to do |format|
      if @filmes.update
        format.html { redirect_to @filmes, notice: 'Filmes atualizado com sucesso' }
      else
        format.html { redirect_to :edit }
      end
    end
  end

  def set_options_genero
    @genero_options = Genero.all
  end

  def set_filmes
    @filmes = Filme.find(params[:id])
  end

  def filmes_params
    params.require(:filme).permit(:nome, :ano, :categoria, :disponivel, generos_attributes: [:nome])
  end
end