class RulesController < ApplicationController
  before_action :set_rule, only: [:show, :edit, :update, :destroy]

  # GET /rules
  # GET /rules.json
  def index
    @rules = Rule.search(params[:search], params[:page])
  end

  # GET /rules/1
  # GET /rules/1.json
  def show
    @rules = Rule.find(params[:id])
  end

  # GET /rules/new
  def new
    @rule = Rule.new
  end

  # GET /rules/1/edit
  def edit
    @rules = Rule.find(params[:id])
  end

  # POST /rules
  # POST /rules.json
  def create
    @rule = Rule.new(rule_params)
    render action: :new unless @rule.save
  end

  # PATCH/PUT /sports/1
  # PATCH/PUT /sports/1.json
  def update
    render action: :edit unless @rule.update_attributes(rule_params)
      
  end

  # DELETE /rules/1
  # DELETE /rules/1.json
  def destroy
    @rule.destroy
    respond_to do |format|
      format.html { redirect_to rules_url, notice: 'Rule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rule
      @rule = Rule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rule_params
      params.require(:rule).permit(:name, :description, :state, :sport_id, :type_rule_id)
    end
end
