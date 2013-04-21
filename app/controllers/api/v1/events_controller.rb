class Api::V1::EventsController < ApplicationController

# GET /api/v1/goal ?new=true&secret=1
  def index

  end

  # GET /api/v1/goal/:id
  def show
  end

  # GET /api/v1/goal/new
  def new
  end

  # POST /api/v1/goal
  def create
    #sb_account_id :type :value
    event = Event.new
    event.type = params[:type]
    event.value = params[:value]
    event.save

    @sb_account = SbAccount.find(params[:sb_account_id])
    goals = @sb_account.goals.where(event_type: params[:type])

    goals.each { |goal| goal.increment_current_value!(params[:value].to_f) }

    render :json => 'ok'
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
