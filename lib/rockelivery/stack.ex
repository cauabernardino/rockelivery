defmodule Rockelivery.Stack do
  @moduledoc """
  Example module for learning GenServer
  """
  use GenServer

  # SERVER

  @impl true
  def init(stack) do
    {:ok, stack}
  end

  # handle call is SYNCHRONOUS
  @impl true
  def handle_call({:push, element}, _from, stack) do
    new_stack = [element | stack]
    {:reply, new_stack, new_stack}
  end

  @impl true
  def handle_call(:pop, _from, [head | tail]) do
    {:reply, head, tail}
  end

  # handle cast is ASYNCHRONOUS
  @impl true
  def handle_cast({:push, element}, stack) do
    {:noreply, [element | stack]}
  end

  # CLIENT

  def start_link(initial_stack) when is_list(initial_stack) do
    GenServer.start_link(__MODULE__, initial_stack)
  end

  def push(pid, element) do
    GenServer.cast(pid, {:push, element})
  end

  def pop(pid) do
    GenServer.call(pid, :pop)
  end
end
