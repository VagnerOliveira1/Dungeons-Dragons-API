module Api
  module V1
    class SkillsController < ApplicationController
        before_action :set_skill, only: [:show, :update, :destroy]
        # GET /skills
        def index
          @character = Character.find(params[:character_id])
          render json: @character.skills, except: [:created_at, :updated_at]
        end

        # GET /skills/1
        def show
          render json: @skill
        end

        # POST /skills
        def create
          @character = Character.find(params[:character_id])
          @skill = @character.skills.new(skill_params)
          if @skill.save
            render json: @skill, location: @skill
          else
            render json: @skill.errors, status: :unprocessable_entity
          end
        end

        # PATCH/PUT /skills/1
        def update
          @character = Character.find(params[:character_id])
          @skill = @character.skills.find(params[:id])
          if @skill.update(skill_params)
            render json: @skill
          else
            render json: @skill.errors, status: :unprocessable_entity
          end
        end

        # DELETE /skills/1
        def destroy
          @character = Character.find(params[:character_id])
          @skill = @character.skills.update(params[:id])
          if @skill
            @skill.destroy
          else
            render json: @skill.errors, status: :unprocessable_entity
          end
        end

        private
          # Use callbacks to share common setup or constraints between actions.
          def set_skill
            @skill = Skill.find(params[:id])
          end

          # Only allow a trusted parameter "white list" through.
          def skill_params
            params.require(:skill).permit(:character_id, :name, :ability, :proficient)
          end
        end

    end
end
