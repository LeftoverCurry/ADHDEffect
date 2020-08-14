# frozen_string_literal: true

class EffectsController < ApplicationController
  before_action :set_effect, only: %i[show edit update destroy]

  # GET /effects
  # GET /effects.json
  def index
    user_effects = Effect.where(user_id: current_user.id)
    @moods = user_effects.pluck(:mood)
    @side_effects = user_effects.pluck(:side_effects)
  end

  # GET /effects/1
  # GET /effects/1.json
  def show; end

  # GET /effects/new
  def new
    @effect = Effect.new
  end

  # GET /effects/1/edit
  def edit; end

  # POST /effects
  # POST /effects.json
  def create
    @effect = Effect.new(effect_params)

    respond_to do |format|
      if @effect.save
        format.html { redirect_to @effect, notice: 'Effect was successfully created.' }
        format.json { render :show, status: :created, location: @effect }
      else
        format.html { render :new }
        format.json { render json: @effect.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /effects/1
  # PATCH/PUT /effects/1.json
  def update
    respond_to do |format|
      if @effect.update(effect_params)
        format.html { redirect_to @effect, notice: 'Effect was successfully updated.' }
        format.json { render :show, status: :ok, location: @effect }
      else
        format.html { render :edit }
        format.json { render json: @effect.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /effects/1
  # DELETE /effects/1.json
  def destroy
    @effect.destroy
    respond_to do |format|
      format.html { redirect_to effects_url, notice: 'Effect was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_effect
    @effect = Effect.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def effect_params
    params.fetch(:effect, {})
  end
end
