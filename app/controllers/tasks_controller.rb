class TasksController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index
    @tasks = Task.all
  end

  def show
    @tasks = Task.all
    @mytask = nil
    @tasks.each do |task|
      number = params[:id].to_i
      if task[:id] == number
        @mytask = task
      end
    end
  end

  def new
  end

  def edit
  end

  def update
  end

  def create
  s1 = Task.new
    s1.title = params[:title]
    s1.description = params[:description]
    s1.completed_at = params[:completed_at]
    s1.save

    redirect_to action: "index"

  end


  def destroy
  end

  def self.all
    Task.all
  end


end#end of class
