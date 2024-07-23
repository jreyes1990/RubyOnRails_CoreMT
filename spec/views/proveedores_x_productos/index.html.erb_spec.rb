require 'rails_helper'

RSpec.describe "proveedores_x_productos/index", type: :view do
  before(:each) do
    assign(:proveedores_x_productos, [
      ProveedorXProducto.create!(
        id_empresa: 2,
        proveedor: nil,
        prod_producto: nil,
        user_created_id: 3,
        user_updated_id: 4,
        estado_x_proceso: nil
      ),
      ProveedorXProducto.create!(
        id_empresa: 2,
        proveedor: nil,
        prod_producto: nil,
        user_created_id: 3,
        user_updated_id: 4,
        estado_x_proceso: nil
      )
    ])
  end

  it "renders a list of proveedores_x_productos" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
