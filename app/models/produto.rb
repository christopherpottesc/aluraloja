class Produto < ApplicationRecord

  belongs_to :departamento, optional: true

  validates :nome, length: { minimum: 4 }
  validates :preco, :departamento, presence: :true
  validates :descricao, length: { in: 5..200 }
  # validates :cpf, length: { is: 11 }
  # validates :numero, numericality: { only_integer: true }

end
