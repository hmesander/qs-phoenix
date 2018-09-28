defmodule QSPhoenixWeb.FoodView do
  use QSPhoenixWeb, :view
  alias QSPhoenixWeb.FoodView

  def render("index.json", %{foods: foods}) do
    %{data: render_many(foods, FoodView, "food.json")}
  end

  def render("show.json", %{food: food}) do
    %{data: render_one(food, FoodView, "food.json")}
  end

  def render("food.json", %{food: food}) do
    %{id: food.id,
      name: food.name,
      calories: food.calories
    }
  end
end
