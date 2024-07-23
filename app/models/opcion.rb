# == Schema Information
#
# Table name: opciones
#
#  id              :integer          not null, primary key
#  nombre          :string(255)
#  descripcion     :string(255)
#  icono           :string(255)
#  path            :string(255)
#  controlador     :string(255)
#  menu_id         :integer          not null
#  user_created_id :integer
#  user_updated_id :integer
#  estado          :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class Opcion < ApplicationRecord
  belongs_to :menu, class_name: "Menu"
  has_many :menu_roles
  has_many :opcion_cas
  validates_presence_of :nombre, :descripcion, :icono, :path, :controlador, message: ": este campo es obligatorio"  
  
  def nombre_con_menu
    "#{self.menu.nombre} - #{self.nombre}"
  end

  def opcion_nombre_id 
    "#{self.id}-#{self.nombre}"
  end

end