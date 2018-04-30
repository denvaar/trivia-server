defmodule TriviaServerWeb.Router do
  use TriviaServerWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", TriviaServerWeb do
    pipe_through :api
  end
end
