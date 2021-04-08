defmodule Queue.ServerTest do
  use ExUnit.Case

  alias Queue.Sever, as: QueueServer

  test "should handle queuing and dequeuing" do
    {:ok, pid} = QueueServer.start_link([1, 2, 3])

    assert :ok == QueueServer.enqueue(pid, 5)
    assert 1 == QueueServer.dequeue(pid)
    assert 2 == QueueServer.dequeue(pid)
    assert 3 == QueueServer.dequeue(pid)
    assert 5 == QueueServer.dequeue(pid)
    assert nil == QueueServer.dequeue(pid)
    assert nil == QueueServer.dequeue(pid)
  end
end
