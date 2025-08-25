class ComponentsController < ApplicationController
  before_action :set_component, only: [:show, :edit, :update, :destroy]

  def index
    @components = Component.includes(:offers).order(:ranking)
  end

  def show
    @offers = @component.offers.order(:price)
    @best_offer = @offers.first
  end

  def new
    @component = Component.new
  end

  def create
    @component = Component.new(component_params)
    if @component.save
      redirect_to @component, notice: "Composant ajouté avec succès !"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @component.update(component_params)
      redirect_to @component, notice: "Composant mis à jour avec succès !"
    else
      render :edit
    end
  end

  def destroy
    @component.destroy
    redirect_to components_path, notice: "Composant supprimé avec succès !"
  end

  private

  def set_component
    @component = Component.find(params[:id])
  end

  def component_params
    params.require(:component).permit(
      :category, :ranking, :component_name,
      :avg_fps_1080, :avg_fps_1440, :avg_fps_4k,
      :avg_fps_1080_1, :avg_fps_1440_1, :avg_fps_4k_1,
      :asin
    )
  end
end
