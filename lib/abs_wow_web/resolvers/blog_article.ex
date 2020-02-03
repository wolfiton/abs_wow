defmodule AbsWowWeb.BlogArticleResolver do
  alias AbsWow.Blog

  def blog_article(_parrent, _args, _) do
    {:ok, Blog.list_posts()}
  end
end
