class CreateSummaries < ActiveRecord::Migration[5.2]
  def change
    create_view :summaries, materialized: true
  end
end
