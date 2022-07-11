class RecommendationsController < InheritedResources::Base
  before_action :set_reception!, only: [:new, :create]




  def new
    @recommendation = Recommendation.new
  end

  def create
    @recommendation = Recommendation.new recommendation_params
    @reception.activity = false
    @recommendation.reception_id =  @reception.id
    if (@recommendation.save)
      @reception.save
        flash[:alert] = "Успішно створено"
        redirect_to profiles_path
    else
      render :new
    end
  end

  def all
    @recommendations = Recommendation.all
  end

  private

    def recommendation_params
      params.require(:recommendation).permit(:text)
    end

    def set_reception!
      @reception = Reception.find(params[:reception_id])
      
      
    end
end
