require 'rails_helper'

RSpec.describe "proveedores_x_productos/new", type: :view do
  before(:each) do
    assign(:proveedor_x_producto, ProveedorXProducto.new(
      id_empresa: 1,
      proveedor: nil,
      prod_producto: nil,
      user_created_id: 1,
      user_updated_id: 1,
      estado_x_proceso: nil
    ))
  end

  it "renders new proveedor_x_producto form" do
    render

    assert_select "form[action=?][method=?]", proveedores_x_productos_path, "post" do

      assert_select "input[name=?]", "proveedor_x_producto[id_empresa]"

      assert_select "input[name=?]", "proveedor_x_producto[proveedor_id]"

      assert_select "input[name=?]", "proveedor_x_producto[prod_producto_id]"

      assert_select "input[name=?]", "proveedor_x_producto[user_created_id]"

      assert_select "input[name=?]", "proveedor_x_producto[user_updated_id]"

      assert_select "input[name=?]", "proveedor_x_producto[estado_x_proceso_id]"
    end
  end
end
