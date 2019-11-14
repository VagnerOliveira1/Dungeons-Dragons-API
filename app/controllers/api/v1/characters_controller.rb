module Api
  module V1
    class CharactersController < ApplicationController
        before_action :set_character, only: [:show, :update, :destroy]

        # GET /characters
        def index
          @characters = Character.filter_strenght_greather_than(params[:str_gt])
                       .filter_strength_less_than(params[:str_lt])
                       .filter_dexterity_greather_than(params[:dex_gt])
                       .filter_dexterity_less_than(params[:dex_lt])
                       .filter_constitution_greather_than(params[:con_gt])
                       .filter_constitution_less_than(params[:con_lt])
                       .filter_inteligence_greather_than(params[:int_gt])
                       .filter_inteligence_less_than(params[:int_lt])
                       .filter_wisdom_greather_than(params[:wis_gt])
                       .filter_wisdom_less_than(params[:wis_lt])
                       .filter_charisma_greather_than(params[:cha_gt])
                       .filter_charisma_less_than(params[:char_lt])
                       .filter_character_name(params[:name])
          # @characters = Character.all
          render json: @characters, except: [:created_at, :updated_at], include: [:skills]
        end

        # GET /characters/1
        def show
          render json: @character
        end

        # POST /characters
        def create
          @character = Character.new(character_params)
          if @character.save
            render json: @character, status: :created, location: @character
          else
            render json: @character.errors, status: :unprocessable_entity
          end
        end

        # PATCH/PUT /characters/1
        def update
          @character = Character.find(params[:id])
          if @character.update(character_params)
            render json: @character
          else
            render json: @character.errors, status: :unprocessable_entity
          end
        end

        # DELETE /characters/1
        def destroy
          @character = Character.find(params[:id])
          if @character
            @character.destroy
          else
            render json: @character.errors, status: :unprocessable_entity
          end
        end

        private
          # Use callbacks to share common setup or constraints between actions.
          def set_character
            @character = Character.find(params[:id])
          end
  

          # Only allow a trusted parameter "white list" through.
          def character_params
            params.require(:character).permit(:name, :strength, :dexterity, :constitution, :inteligence, :wisdom, :charisma)
          end

        end
    end
end
