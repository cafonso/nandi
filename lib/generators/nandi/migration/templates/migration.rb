# frozen_string_literal: true

class <%= class_name %> < Nandi::Migration
  def up
    # Migration instructions go here, eg:
    # create_index :payments, [:foo, :bar]
  end

  def down
    # Reverse migration instructions go here, eg:
    # drop_index :payments, :index_payments_on_foo_bar
  end
end

