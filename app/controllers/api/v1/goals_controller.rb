class Api::V1::GoalsController < ApplicationController

  # GET /api/v1/goal ?new=true&secret=1
  def index
    p params
    @sb_account = SbAccount.find(params[:sb_account_id])
    goals = @sb_account.goals
    result = []
    if params[:new].present? and params[:new]=="true"
      goals.where(reached: true).each do |goal|
        result << goal unless goal.sent_to.include? params[:secret]
      end
    end
    result.each do |goal|
      #goal.add_to_set(:sent_to, params[:secret])
      #goal.save
    end
    render json: result.map{ |goal| goal.actions }.flatten
  end

  # GET /api/v1/goal/:id
  def show
  end

  # GET /api/v1/goal/new
  def new
  end

  # POST /api/v1/goal
  def create
  end

  # GET /api/v1/goal/edit
  def edit
  end

  # PUT /api/v1/goal/:id
  def update
  end

  # DELETE /api/v1/goal/:id
  def destroy
  end


end