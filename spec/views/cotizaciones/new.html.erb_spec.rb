require 'rails_helper'

RSpec.describe "cotizaciones/new", type: :view do
  before(:each) do
    assign(:cotizacion, Cotizacion.new(
      id_empresa: 1,
      proveedor: nil,
      necesidad_mercaderia: nil,
      user_created_id: 1,
      user_updated_id: 1,
      estado_x_proceso: nil
    ))
  end

  it "renders new cotizacion form" do
    render

    assert_select "form[action=?][method=?]", cotizaciones_path, "post" do

      assert_select "input[name=?]", "cotizacion[id_empresa]"

      assert_select "input[name=?]", "cotizacion[proveedor_id]"

      assert_select "input[name=?]", "cotizacion[necesidad_mercaderia_id]"

      assert_select "input[name=?]", "cotizacion[user_created_id]"

      assert_select "input[name=?]", "cotizacion[user_updated_id]"

      assert_select "input[name=?]", "cotizacion[estado_x_proceso_id]"
    end
  end
end
