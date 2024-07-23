require 'rails_helper'

RSpec.describe "sucursales_x_bodegas/show", type: :view do
  before(:each) do
    @sucursal_x_bodega = assign(:sucursal_x_bodega, SucursalXBodega.create!(
      id_empresa: 2,
      sucursal: nil,
      bodega: nil,
      inventario: nil,
      user_created_id: 3,
      user_updated_id: 4,
      estado_x_proceso: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(//)
  end
end
