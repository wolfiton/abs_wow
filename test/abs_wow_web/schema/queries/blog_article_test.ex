defmodule AbsWowWeb.BlogArticleTest do
  use AbsWow.DataCase, async: true
  use Wormwood.GQLCase

  load_gql(AbsWowWeb.Schema, "test/support/schema/queries/GetArticles.gql")

  setup do
    AbsWow.Seeds.run()
  end

  describe "GetArticles.gql" do
    test "Should return a list of all the Articles (all 2 of them)" do
      result = query_gql()
      assert {:ok, %{data: %{"BlogArticles" => articles}}} = result
      IO.inspect(articles)
      assert length(articles) == 2
    end
  end
end
