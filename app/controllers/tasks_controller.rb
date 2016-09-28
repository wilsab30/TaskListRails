class TasksController < ApplicationController
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

  def created

  end

  def destroy
  end

  def self.all
    Task.all
  end


end#end of class
