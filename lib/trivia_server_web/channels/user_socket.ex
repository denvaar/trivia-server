defmodule TriviaServerWeb.UserSocket do
  use Phoenix.Socket

  channel "game_show:*", TriviaServerWeb.GameShowChannel

  transport :websocket, Phoenix.Transports.WebSocket

  def connect(_params, socket) do
    {:ok, socket}
  end

  def join("game_show:lobby", _message, socket) do
    {:ok, socket}
  end

  def id(_socket), do: nil
end
