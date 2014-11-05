class AddAuthorToTheses < ActiveRecord::Migration
  def change
    add_reference :theses, :author, index: true
  end
end
