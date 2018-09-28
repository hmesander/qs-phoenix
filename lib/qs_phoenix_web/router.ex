defmodule QSPhoenixWeb.Router do
  use QSPhoenixWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", QSPhoenixWeb do
    pipe_through :api
  end
end
