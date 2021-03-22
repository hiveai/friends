import Config

config :friends, Friends.Repo,
  database: "friends_repo2",
  username: "postgres",
  password: "",
  hostname: "localhost"

config :friends, ecto_repos: [Friends.Repo]
