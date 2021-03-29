defmodule Explorer.Repo.Migrations.AddUniqueIndexToRewards do
  use Ecto.Migration

  def change do
    create(
      index(
        :block_rewards,
        [:address_hash, :block_hash, :address_type]
      )
    )
  end
end
