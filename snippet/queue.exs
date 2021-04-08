{:ok, pid} = Queue.Sever.start_link([1, 2, 3])
Queue.Sever.enqueue(pid, 5)
Queue.Sever.dequeue(pid)

{:ok, pid} = Queue.initialize_queue([1, 2, 3])
Queue.enqueue(pid, 5)
Queue.dequeue(pid)
