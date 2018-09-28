defmodule QSPhoenixWeb.Router do
  use QSPhoenixWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", QSPhoenixWeb do
    scope "/v1" do
      pipe_through :api

      resources("/foods", FoodController, except: [:new, :edit])
    end
  end
end
