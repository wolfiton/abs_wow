defmodule AbsWowWeb.Schema do
  use Absinthe.Schema

  alias AbsWowWeb.BlogArticleResolver

  query do
    field :blog_articles, list_of(:blog_article) do
      resolve(&BlogArticleResolver.blog_article/3)
    end
  end

  object :blog_article do
    field :id, :id
    field :title, :string
  end
end
