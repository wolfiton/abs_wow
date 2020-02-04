# AbsWow

# This is a minimal project created for debug of Wormwood

## File Location

#### Context Blog located in: `lib/abs_wow/blog.ex` with Schema Post located in: `lib/abs_wow/blog/post.ex`

#### Absinthe Schema is located in: `lib/abs_wow_web/schema.ex` Absinte Resolver located in: `lib/abs_wow_web/resolvers/blog_article.ex`

## Wormwood File location test

#### The GQL files for Wormwood are located in: `test/support/schema/queries`

#### The Absinthe Test file is located in: `/test/abs_wow_web/schema/queries/blog_artcile_test.ex`

## To start your Phoenix server:

- Install dependencies with `mix deps.get`
- Edit the `config/dev.exs` and `config/test.exs` with your username of the postgress database user mine is `dan`
- Create and migrate your database with `mix ecto.setup`
- Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000/api/graphiql`](http://localhost:4000/api/graphqil) from your browser.

The interface is playground
