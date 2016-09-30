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
    @tasks = Task.all
    @mytask = nil
    @tasks.each do |task|
      number = params[:id].to_i
      if task[:id] == number
        @mytask = task
      end
    end
    @mytask[:title] = params["title"]
    @mytask[:description] = params["description"]
    @mytask[:finished] = params["finished"]
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
  end

  def self.all
    Task.all
  end


end#end of class
