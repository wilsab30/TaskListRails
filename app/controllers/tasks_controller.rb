class TasksController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index
    @tasks = Task.all
  end

  def show
    @mytask = Task.find(params[:id].to_i)
    # @tasks = Task.all
    # @mytask = nil
    # @tasks.each do |task|
    #   number = params[:id].to_i
    #   if task[:id] == number
    #     @mytask = task
    #   end
    # end
  end

  def new
    @mytask = Task.new
  end

  def edit
    @mytask = Task.find(params[:id].to_i)
  end

  def update
    @mytask = Task.find(params[:id].to_i)
    @mytask[:title] = params[:task]["title"]
    @mytask[:description] = params[:task]["description"]
    @mytask[:finished] = params[:task]["finished"]
    @mytask.save
    if @mytask.finished == true
      @mytask.completed_at = DateTime.now
      @mytask.save
    end
    redirect_to action: "index"
  end

  def toggle_completed
    @mytask = Task.find(params[:id].to_i)
    @mytask.update(finished: !@mytask.finished)
    redirect_to action: "index"
  end

  def create
    s1 = Task.new
    s1.title = params[:task][:title]
    s1.description = params[:task][:description]
    s1.finished = params[:task][:finished]
    s1.save

    redirect_to action: "index"

  end


  def destroy
    @mytask = Task.destroy(params[:id].to_i)
    redirect_to action: "index"
  end

  def self.all
    Task.all
  end


end#end of class
