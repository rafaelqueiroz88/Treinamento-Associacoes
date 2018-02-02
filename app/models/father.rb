class Father < ApplicationRecord
    has_many :children
    belongs_to :occupation
    has_one :address
    accepts_nested_attributes_for :address

    scope :search, ->query {where("name like ?", "%#{query}%")}

    # def self.search query
    #     where("name like ?", "%#{query}%")
    # end

    validates :name, presence: true
    validates :cpf, presence:true, uniqueness: true
    validates :email, presence: true, uniqueness: true
    validates :occupation_id, presence: true

    def ocupacao_descricao
        if self.occupation.blank?
            " - "
        else
            self.occupation.descricao
        end
    end
end