# Rocket Seat Ignite - Queue Server

## Table of Contents

- [About](#about)
- [Bash Commands](#bash_commands)
- [Elixir Commands](#elixir_commands)
- [Libs](#libs)
- [Docs](#docs)

## About <a name = "about"></a>

Am implementation of queues using GenServers.

## Bash Commands <a name = "bash_commands"></a>

```bash
# Create new Elixir project
$ mix new project_name
# Intall dependencies
$ mix deps.get
# Generate linter config
$ mix credo gen.config
# Run linter
$ mix credo --strict
# Start your project as an Interactive Elixir session
$ iex -S mix
# Run tests
$ mix test
```

## Elixir Commands <a name = "elixir_commands"></a>

```elixir
> {:ok, pid} = Queue.initialize_queue([1, 2, 3])
> Queue.enqueue(pid, 5)
:ok
> Queue.dequeue(pid)
1
> Queue.dequeue(pid)
2
> Queue.dequeue(pid)
3
> Queue.dequeue(pid)
5
> Queue.dequeue(pid)
nil
```

## Libs <a name = "libs"></a>

- https://github.com/rrrene/credo

## Docs <a name = "docs"></a>

- https://elixir-lang.org/crash-course.html
- https://hexdocs.pm/elixir/master/GenServer.html
