require 'rails_helper'

RSpec.describe "productos_x_bodegas/index", type: :view do
  before(:each) do
    assign(:productos_x_bodegas, [
      ProductoXBodega.create!(
        id_empresa: 2,
        sucursal: nil,
        bodega: nil,
        prod_producto: nil,
        disponible_venta: "Disponible Venta",
        venta_plazo: "Venta Plazo",
        max_plazo: 3,
        venta_masiva: "Venta Masiva",
        stock_minimo: 4,
        stock_maximo: 5,
        stock_actual: 6,
        user_created_id: 7,
        user_updated_id: 8,
        estado_x_proceso: nil
      ),
      ProductoXBodega.create!(
        id_empresa: 2,
        sucursal: nil,
        bodega: nil,
        prod_producto: nil,
        disponible_venta: "Disponible Venta",
        venta_plazo: "Venta Plazo",
        max_plazo: 3,
        venta_masiva: "Venta Masiva",
        stock_minimo: 4,
        stock_maximo: 5,
        stock_actual: 6,
        user_created_id: 7,
        user_updated_id: 8,
        estado_x_proceso: nil
      )
    ])
  end

  it "renders a list of productos_x_bodegas" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "Disponible Venta".to_s, count: 2
    assert_select "tr>td", text: "Venta Plazo".to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: "Venta Masiva".to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
    assert_select "tr>td", text: 5.to_s, count: 2
    assert_select "tr>td", text: 6.to_s, count: 2
    assert_select "tr>td", text: 7.to_s, count: 2
    assert_select "tr>td", text: 8.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
