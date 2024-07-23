require 'rails_helper'

RSpec.describe "escala_precios/index", type: :view do
  before(:each) do
    assign(:escala_precios, [
      EscalaPrecio.create!(
        id_empresa: 2,
        prod_producto: nil,
        codigo_barras: "Codigo Barras",
        rango_inferior: "9.99",
        rango_superior: "9.99",
        precio_socio: "9.99",
        utilidad_socio: "9.99",
        precio_no_socio: "9.99",
        utilidad_no_socio: "9.99",
        utilidad_empresa: "9.99",
        sucursal_x_bodega: nil,
        user_created_id: 3,
        user_updated_id: 4,
        estado_x_proceso: nil
      ),
      EscalaPrecio.create!(
        id_empresa: 2,
        prod_producto: nil,
        codigo_barras: "Codigo Barras",
        rango_inferior: "9.99",
        rango_superior: "9.99",
        precio_socio: "9.99",
        utilidad_socio: "9.99",
        precio_no_socio: "9.99",
        utilidad_no_socio: "9.99",
        utilidad_empresa: "9.99",
        sucursal_x_bodega: nil,
        user_created_id: 3,
        user_updated_id: 4,
        estado_x_proceso: nil
      )
    ])
  end

  it "renders a list of escala_precios" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "Codigo Barras".to_s, count: 2
    assert_select "tr>td", text: "9.99".to_s, count: 2
    assert_select "tr>td", text: "9.99".to_s, count: 2
    assert_select "tr>td", text: "9.99".to_s, count: 2
    assert_select "tr>td", text: "9.99".to_s, count: 2
    assert_select "tr>td", text: "9.99".to_s, count: 2
    assert_select "tr>td", text: "9.99".to_s, count: 2
    assert_select "tr>td", text: "9.99".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
