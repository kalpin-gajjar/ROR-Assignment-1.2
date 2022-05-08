class Industry < ApplicationRecord
    has_and_belongs_to_many :sectors

    validates :name, presence: true
    validates :email, presence: true, uniqueness: true

    after_create :assign_registration_number

    private
        def assign_registration_number
            update_column(:registration_number, self.id)
        end
end
