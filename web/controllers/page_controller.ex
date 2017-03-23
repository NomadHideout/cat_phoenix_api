defmodule CatApi.PageController do
  use CatApi.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
