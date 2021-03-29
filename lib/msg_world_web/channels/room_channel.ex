defmodule MsgWorldWeb.RoomChannel do
  use Phoenix.Channel

  def join("room:lobby", _message, socket) do
    {:ok, socket}
  end

  def join("room:" <> _private_room_id, _params, _socket) do
    {:error, %{reason: "unauthorized"}}
  end

  def handle_in("coord_change", %{"x" => x, "y" => y}, socket) do
    broadcast!(socket, "coord_change", %{x: x, y: y})
    {:noreply, socket}
  end
end
