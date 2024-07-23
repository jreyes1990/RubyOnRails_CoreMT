require 'rails_helper'

RSpec.describe "productos_x_bodegas/edit", type: :view do
  before(:each) do
    @producto_x_bodega = assign(:producto_x_bodega, ProductoXBodega.create!(
      id_empresa: 1,
      sucursal: nil,
      bodega: nil,
      prod_producto: nil,
      disponible_venta: "MyString",
      venta_plazo: "MyString",
      max_plazo: 1,
      venta_masiva: "MyString",
      stock_minimo: 1,
      stock_maximo: 1,
      stock_actual: 1,
      user_created_id: 1,
      user_updated_id: 1,
      estado_x_proceso: nil
    ))
  end

  it "renders the edit producto_x_bodega form" do
    render

    assert_select "form[action=?][method=?]", producto_x_bodega_path(@producto_x_bodega), "post" do

      assert_select "input[name=?]", "producto_x_bodega[id_empresa]"

      assert_select "input[name=?]", "producto_x_bodega[sucursal_id]"

      assert_select "input[name=?]", "producto_x_bodega[bodega_id]"

      assert_select "input[name=?]", "producto_x_bodega[prod_producto_id]"

      assert_select "input[name=?]", "producto_x_bodega[disponible_venta]"

      assert_select "input[name=?]", "producto_x_bodega[venta_plazo]"

      assert_select "input[name=?]", "producto_x_bodega[max_plazo]"

      assert_select "input[name=?]", "producto_x_bodega[venta_masiva]"

      assert_select "input[name=?]", "producto_x_bodega[stock_minimo]"

      assert_select "input[name=?]", "producto_x_bodega[stock_maximo]"

      assert_select "input[name=?]", "producto_x_bodega[stock_actual]"

      assert_select "input[name=?]", "producto_x_bodega[user_created_id]"

      assert_select "input[name=?]", "producto_x_bodega[user_updated_id]"

      assert_select "input[name=?]", "producto_x_bodega[estado_x_proceso_id]"
    end
  end
end
