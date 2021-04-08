defmodule Queue do
  @moduledoc """
  Documentation for `Queue`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Queue.hello()
      :world

  """

  defdelegate initialize_queue(initial_queue), to: Queue.Sever, as: :start_link
  defdelegate enqueue(pid, element), to: Queue.Sever
  defdelegate dequeue(pid), to: Queue.Sever
end
