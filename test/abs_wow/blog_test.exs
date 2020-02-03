defmodule AbsWow.BlogTest do
  use AbsWow.DataCase

  alias AbsWow.Blog

  describe "posts" do
    alias AbsWow.Blog.Posts

    @valid_attrs %{content: "some content", title: "some title"}
    @update_attrs %{content: "some updated content", title: "some updated title"}
    @invalid_attrs %{content: nil, title: nil}

    def posts_fixture(attrs \\ %{}) do
      {:ok, posts} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Blog.create_posts()

      posts
    end

    test "list_posts/0 returns all posts" do
      posts = posts_fixture()
      assert Blog.list_posts() == [posts]
    end

    test "get_posts!/1 returns the posts with given id" do
      posts = posts_fixture()
      assert Blog.get_posts!(posts.id) == posts
    end

    test "create_posts/1 with valid data creates a posts" do
      assert {:ok, %Posts{} = posts} = Blog.create_posts(@valid_attrs)
      assert posts.content == "some content"
      assert posts.title == "some title"
    end

    test "create_posts/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Blog.create_posts(@invalid_attrs)
    end

    test "update_posts/2 with valid data updates the posts" do
      posts = posts_fixture()
      assert {:ok, %Posts{} = posts} = Blog.update_posts(posts, @update_attrs)
      assert posts.content == "some updated content"
      assert posts.title == "some updated title"
    end

    test "update_posts/2 with invalid data returns error changeset" do
      posts = posts_fixture()
      assert {:error, %Ecto.Changeset{}} = Blog.update_posts(posts, @invalid_attrs)
      assert posts == Blog.get_posts!(posts.id)
    end

    test "delete_posts/1 deletes the posts" do
      posts = posts_fixture()
      assert {:ok, %Posts{}} = Blog.delete_posts(posts)
      assert_raise Ecto.NoResultsError, fn -> Blog.get_posts!(posts.id) end
    end

    test "change_posts/1 returns a posts changeset" do
      posts = posts_fixture()
      assert %Ecto.Changeset{} = Blog.change_posts(posts)
    end
  end
end
