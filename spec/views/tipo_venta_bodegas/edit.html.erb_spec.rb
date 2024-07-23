require 'rails_helper'

RSpec.describe "tipo_venta_bodegas/edit", type: :view do
  before(:each) do
    @tipo_venta_bodega = assign(:tipo_venta_bodega, TipoVentaBodega.create!(
      id_empresa: 1,
      descripcion: "MyString",
      user_created_id: 1,
      user_updated_id: 1,
      estado_x_proceso: nil
    ))
  end

  it "renders the edit tipo_venta_bodega form" do
    render

    assert_select "form[action=?][method=?]", tipo_venta_bodega_path(@tipo_venta_bodega), "post" do

      assert_select "input[name=?]", "tipo_venta_bodega[id_empresa]"

      assert_select "input[name=?]", "tipo_venta_bodega[descripcion]"

      assert_select "input[name=?]", "tipo_venta_bodega[user_created_id]"

      assert_select "input[name=?]", "tipo_venta_bodega[user_updated_id]"

      assert_select "input[name=?]", "tipo_venta_bodega[estado_x_proceso_id]"
    end
  end
end
