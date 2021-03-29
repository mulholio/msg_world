defmodule MsgWorldWeb.Router do
  use MsgWorldWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  scope "/", MsgWorldWeb do
    pipe_through :browser

    get "/", PageController, :index
  end
end
