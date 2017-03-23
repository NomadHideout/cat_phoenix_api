defmodule CatApi.CatView do
  use CatApi.Web, :view

  def render("index.json", %{cats: cats}) do
    %{data: render_many(cats, CatApi.CatView, "cat.json")}
  end

  def render("show.json", %{cat: cat}) do
    %{data: render_one(cat, CatApi.CatView, "cat.json")}
  end

  def render("cat.json", %{cat: cat}) do
    %{id: cat.id,
      fullname: cat.fullname,
      hometown: cat.hometown,
      age: cat.age}
  end
end
