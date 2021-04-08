defmodule Queue.Sever do
  use GenServer

  # Client

  def start_link(initial_queue \\ []) when is_list(initial_queue) do
    GenServer.start_link(__MODULE__, initial_queue)
  end

  def enqueue(pid, element), do: GenServer.cast(pid, {:enqueue, element})
  def dequeue(pid), do: GenServer.call(pid, :dequeue)

  # Server

  @impl true
  def init(queue), do: {:ok, queue}

  @impl true
  def handle_cast({:enqueue, element}, old_queue),
    do: {:noreply, List.insert_at(old_queue, -1, element)}

  @impl true
  def handle_call(:dequeue, _from, [head | tails]), do: {:reply, head, tails}
  @impl true
  def handle_call(:dequeue, _from, []), do: {:reply, nil, []}
end
