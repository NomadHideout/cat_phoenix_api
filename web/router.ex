defmodule CatApi.Router do
  use CatApi.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", CatApi do
    pipe_through :api # Use the default browser stack

    resources "/cats", CatController, except: [:new, :edit]
  end

  scope "/", CatApi do
    pipe_through :browser
    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", CatApi do
  #   pipe_through :api
  # end
end
