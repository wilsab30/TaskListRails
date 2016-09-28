class TasksController < ApplicationController
  def index
    @tasks = TasksController.all
  end

  def show
    @tasks = TasksController.all
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
    [
      {id: 1, title: "My Monday Tasks", description: "Go to cleaners", completed_at: "9/17/16 13:45"},
      {id: 2, title: "My Tuesday Tasks", description: "Go to grocery store", completed_at:"9/18/16 11:00"},
      {id: 3, title: "My Wednesday Tasks", description: "Walk dog", completed_at:"9/19/16 13:45"}
    ]
  end


end#end of class
