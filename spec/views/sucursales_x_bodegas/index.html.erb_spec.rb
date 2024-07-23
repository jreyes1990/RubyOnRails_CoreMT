require 'rails_helper'

RSpec.describe "sucursales_x_bodegas/index", type: :view do
  before(:each) do
    assign(:sucursales_x_bodegas, [
      SucursalXBodega.create!(
        id_empresa: 2,
        sucursal: nil,
        bodega: nil,
        inventario: nil,
        user_created_id: 3,
        user_updated_id: 4,
        estado_x_proceso: nil
      ),
      SucursalXBodega.create!(
        id_empresa: 2,
        sucursal: nil,
        bodega: nil,
        inventario: nil,
        user_created_id: 3,
        user_updated_id: 4,
        estado_x_proceso: nil
      )
    ])
  end

  it "renders a list of sucursales_x_bodegas" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
