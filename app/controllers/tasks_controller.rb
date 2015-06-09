class TasksController < ApplicationController

  # should make one form for edit and ...

  def index
    @tasks = Task.all
    # get /tasks
  end

  def show
    # get /tasks/:id
    @task = Task.find(params[:id])
  end

  def new
    # get /tasks/new
    @task = Task.new

  end

  def create
    # post /restaurants
    # Task.create(task_params)

    # redirect_to tasks.update
    # set :performed to false as default
    # currently done in db_create_tasks

    @task = Task.new(task_params)
    # strong parameters are only used when you update a record
    # *Strong params*: You need to *whitelist* what can be updated by the user
    @task.save
    redirect_to tasks_path
    # go to index pages
  end

  def edit
    # get /tasks/:id/edit
    @task = Task.find(params[:id])

  end

  def update
    # patch /tasks/:id
    @task = Task.find(params[:id])
    @task.update(task_params)
    # return to index
    redirect_to tasks_path
  end

  def destroy
    # delete /tasks/:id
    @task = Task.find(params[:id])
    @task.destroy

    # no need for app/views/restaurants/destroy.html.erb
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:content, :performed)
    # require - name of class and permit names of variables
  end

end
