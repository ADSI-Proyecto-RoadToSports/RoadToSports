class TypeRulesController < ApplicationController
  before_action :set_type_rule, only: [:show, :edit, :update, :destroy]

  # GET /type_rules
  # GET /type_rules.json
  def index
    @type_rules = TypeRule.all
  end

  # GET /type_rules/1
  # GET /type_rules/1.json
  def show
  end

  # GET /type_rules/new
  def new
    @type_rule = TypeRule.new
  end

  # GET /type_rules/1/edit
  def edit
  end

  # POST /type_rules
  # POST /type_rules.json
  def create
    @type_rule = TypeRule.new(type_rule_params)

    respond_to do |format|
      if @type_rule.save
        format.html { redirect_to @type_rule, notice: 'Type rule was successfully created.' }
        format.json { render :show, status: :created, location: @type_rule }
      else
        format.html { render :new }
        format.json { render json: @type_rule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_rules/1
  # PATCH/PUT /type_rules/1.json
  def update
    respond_to do |format|
      if @type_rule.update(type_rule_params)
        format.html { redirect_to @type_rule, notice: 'Type rule was successfully updated.' }
        format.json { render :show, status: :ok, location: @type_rule }
      else
        format.html { render :edit }
        format.json { render json: @type_rule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_rules/1
  # DELETE /type_rules/1.json
  def destroy
    @type_rule.destroy
    respond_to do |format|
      format.html { redirect_to type_rules_url, notice: 'Type rule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_rule
      @type_rule = TypeRule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_rule_params
      params.require(:type_rule).permit(:name, :description)
    end
end
