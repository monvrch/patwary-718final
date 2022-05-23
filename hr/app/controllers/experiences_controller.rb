class ExperiencesController < ApplicationController
  def create
    @resume = Resume.find(params[:resume_id])
    @experience = @resume.experiences.create(experience_params)
    redirect_to resume_path(@resume)
  end
 
 
  def destroy
    @resume = Resume.find(params[:resume_id])
    @experience = @resume.experiences.find(params[:id])
    @experience.destroy
    redirect_to resume_path(@resume)
  end
 
 
  private
    def experience_params
      params.require(:experience).permit(:title, :start, :end, :body)
    end
end
