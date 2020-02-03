defmodule AbsWow.Seeds do
  alias AbsWow.Repo

  alias AbsWow.Blog.Post

  def run do
    # Seed the BlogArticle schema

    post1 = %Post{title: "Blog Post 1"} |> Repo.insert!()
    post2 = %Post{title: "Blog Post 2"} |> Repo.insert!()
    :ok
  end
end
