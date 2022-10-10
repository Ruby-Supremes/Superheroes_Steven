class HeroPowersController < ApplicationController
  def index
    hero_powers = HeroPower.all
    render json: hero_powers
  end

  def show
    hero_power = HeroPower.find_by(id: params[:id])
    render json: hero_power
  end

  def create
    hero_power = HeroPower.create!(hero_power_params)
    render json: hero_power.hero, status: :created
  rescue ActiveRecord::RecordInvalid => e
    render json: { errors: e.record.errors.full_messages }, status: :unprocessable_entity
  end

  private

  def hero_power_params
    params.permit(:strength, :power_id, :hero_id)
  end
end
