class SkillsController < ApplicationController
  before_action :set_skill, only: [:show, :edit, :update, :destroy]

  # GET /skills
  # GET /skills.json
  def index
    @skills = Skill.all.order(:order)
    if params[:ucla_class].present?
      @skills = @skills.classes(params[:ucla_class])
    else #default to CS31
      @skills = @skills.classes("CS 31")
    end

    if user_signed_in?
      @user = User.find_by id:current_user.id
    end
    @users = User.all
    @conversations = Conversation.all
  end

  # GET /skills/1
  # GET /skills/1.json
  def show
    if user_signed_in?
      @user = User.find_by id:current_user.id
    end
    @users = User.all
    @conversations = Conversation.all
    @skill = Skill.find(params[:id])
    @concepts = @skill.concept
  end

  # GET /skills/new
  def new
    @skill = Skill.new
  end

  # GET /skills/1/edit
  def edit
  end

  # POST /check
  def check
    @answer_id = params[:answer]
    @question = Question.find(params[:question_id])
    puts "HI" + @question.answers.length.to_s
    if @question.final_answer == @answer_id
      user = User.find_by id:current_user.id
      user.progress.push(@question.id)
      user.save
      @is_correct = true
    else
      @is_correct = false
    end
    respond_to do |format|
        format.html
        format.js
      end
  end

  # POST /skills
  # POST /skills.json
  def create
    @skill = Skill.new(skill_params)

    respond_to do |format|
      if @skill.save
        format.html { redirect_to @skill, notice: 'Skill was successfully created.' }
        format.json { render :show, status: :created, location: @skill }
      else
        format.html { render :new }
        format.json { render json: @skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /skills/1
  # PATCH/PUT /skills/1.json
  def update
    respond_to do |format|
      if @skill.update(skill_params)
        format.html { redirect_to @skill, notice: 'Skill was successfully updated.' }
        format.json { render :show, status: :ok, location: @skill }
      else
        format.html { render :edit }
        format.json { render json: @skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /skills/1
  # DELETE /skills/1.json
  def destroy
    @skill.destroy
    respond_to do |format|
      format.html { redirect_to skills_url, notice: 'Skill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skill
      @skill = Skill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def skill_params
      params.require(:skill).permit(:difficulty, :order, :topic, :author)
    end
end
