# frozen_string_literal: true

class EntriesController < ApplicationController
  before_action :set_entry, only: %i[show edit update destroy]

  # GET /entries
  # GET /entries.json
  def index
    list = current_user.entries.all.where('date_of_report >= ?', 30.days.ago)
    @entries = list.includes(:mood, :effectiveness, :side_effects)
  end

  # GET /entries/1
  # GET /entries/1.json
  def show; end

  # GET /entries/new
  def new
    @entry = Entry.new
    @side_effect_list = SideEffect::LIST
    @entry.build_mood
    @entry.build_effectiveness
  end

  # GET /entries/1/edit
  def edit; end

  # POST /entries
  # POST /entries.json
  def create
    @entry = current_user.entries.new(entry_params)
    respond_to do |format|
      if @entry.save
        format.html { redirect_to @entry, notice: 'Entry was successfully created.' }
        format.json { render :show, status: :created, location: @entry }
      else
        format.html { render :new }
        format.json { render json: @entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /entries/1
  # PATCH/PUT /entries/1.json
  def update
    respond_to do |format|
      if @entry.update(entry_params)
        format.html { redirect_to @entry, notice: 'Entry was successfully updated.' }
        format.json { render :show, status: :ok, location: @entry }
      else
        format.html { render :edit }
        format.json { render json: @entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entries/1
  # DELETE /entries/1.json
  def destroy
    @entry.destroy
    respond_to do |format|
      format.html { redirect_to entries_url, notice: 'Entry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_entry
    @entry = Entry.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def entry_params
    params.require(:entry).permit(:date_of_report, :user_id,
                                  mood_attributes: [:score],
                                  effectiveness_attributes: [:score],
                                  side_effect_ids: [])
  end
end
