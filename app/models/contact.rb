class Contact < ApplicationRecord
  belongs_to :user
  belongs_to :record, class_name: "User"

  t.references :record, null: false, 
                        foreign_key: {
                          to_table: :users
                        }
end
