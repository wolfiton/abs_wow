defmodule AbsWowWeb.Router do
  use AbsWowWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", AbsWowWeb do
    pipe_through :api
  end
end
