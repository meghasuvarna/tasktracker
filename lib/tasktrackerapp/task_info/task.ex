defmodule Tasktrackerapp.TaskInfo.Task do
  use Ecto.Schema
  import Ecto.Changeset
  alias Tasktrackerapp.TaskInfo.Task


  schema "tasks" do
    field :completed, :boolean, default: false
    field :description, :string
    field :timetaken, :integer
    field :title, :string
    belongs_to :user, Tasktrackerapp.Accounts.User

    timestamps()
  end

  @doc false
  def changeset(%Task{} = task, attrs) do
    task
    |> cast(attrs, [:title, :description, :completed, :timetaken, :user_id])
    |> validate_required([:title, :description, :completed, :timetaken, :user_id])
  end
end
