# == Schema Information
#
# Table name: empresas
#
#  id              :integer          not null, primary key
#  nombre          :string(255)
#  descripcion     :string(255)
#  codigo_empresa  :integer
#  user_created_id :integer
#  user_updated_id :integer
#  estado          :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class Empresa < ApplicationRecord
    has_many :areas
    validates_presence_of :nombre, :descripcion, :codigo_empresa, message: ": este campo es obligatorio"
    validates :estado, inclusion: { in: %w(A I), message: "%{value} no es una opción válida, Verifique!!" }
    validates :nombre, uniqueness: {case_sensitive: false, scope: :estado, message: "El nombre que intenta registrar ya existe" }

    def informacion_empresa
      "CÓDIGO: " + "#{self.id}" + " #{self.nombre.upcase}"
    end

    def empresa_con_codigo
      "#{self.id} | #{self.nombre.upcase}"
    end
end
