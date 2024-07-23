require 'rails_helper'

RSpec.describe "escala_precios/edit", type: :view do
  before(:each) do
    @escala_precio = assign(:escala_precio, EscalaPrecio.create!(
      id_empresa: 1,
      prod_producto: nil,
      codigo_barras: "MyString",
      rango_inferior: "9.99",
      rango_superior: "9.99",
      precio_socio: "9.99",
      utilidad_socio: "9.99",
      precio_no_socio: "9.99",
      utilidad_no_socio: "9.99",
      utilidad_empresa: "9.99",
      sucursal_x_bodega: nil,
      user_created_id: 1,
      user_updated_id: 1,
      estado_x_proceso: nil
    ))
  end

  it "renders the edit escala_precio form" do
    render

    assert_select "form[action=?][method=?]", escala_precio_path(@escala_precio), "post" do

      assert_select "input[name=?]", "escala_precio[id_empresa]"

      assert_select "input[name=?]", "escala_precio[prod_producto_id]"

      assert_select "input[name=?]", "escala_precio[codigo_barras]"

      assert_select "input[name=?]", "escala_precio[rango_inferior]"

      assert_select "input[name=?]", "escala_precio[rango_superior]"

      assert_select "input[name=?]", "escala_precio[precio_socio]"

      assert_select "input[name=?]", "escala_precio[utilidad_socio]"

      assert_select "input[name=?]", "escala_precio[precio_no_socio]"

      assert_select "input[name=?]", "escala_precio[utilidad_no_socio]"

      assert_select "input[name=?]", "escala_precio[utilidad_empresa]"

      assert_select "input[name=?]", "escala_precio[sucursal_x_bodega_id]"

      assert_select "input[name=?]", "escala_precio[user_created_id]"

      assert_select "input[name=?]", "escala_precio[user_updated_id]"

      assert_select "input[name=?]", "escala_precio[estado_x_proceso_id]"
    end
  end
end
