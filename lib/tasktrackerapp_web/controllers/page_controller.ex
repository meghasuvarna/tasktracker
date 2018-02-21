defmodule TasktrackerappWeb.PageController do
  use TasktrackerappWeb, :controller


  alias Tasktrackerapp.TaskInfo

  def index(conn, _params) do
    render conn, "index.html"
  end


  def taskslist(conn, _params) do
    tasks = TaskInfo.list_tasks()
    render conn, "taskslist.html", tasks: tasks
  end
end


#attribution: followed as per the instructions in Nat notes.