require 'rails_helper'

RSpec.describe "sucursales_x_bodegas/edit", type: :view do
  before(:each) do
    @sucursal_x_bodega = assign(:sucursal_x_bodega, SucursalXBodega.create!(
      id_empresa: 1,
      sucursal: nil,
      bodega: nil,
      inventario: nil,
      user_created_id: 1,
      user_updated_id: 1,
      estado_x_proceso: nil
    ))
  end

  it "renders the edit sucursal_x_bodega form" do
    render

    assert_select "form[action=?][method=?]", sucursal_x_bodega_path(@sucursal_x_bodega), "post" do

      assert_select "input[name=?]", "sucursal_x_bodega[id_empresa]"

      assert_select "input[name=?]", "sucursal_x_bodega[sucursal_id]"

      assert_select "input[name=?]", "sucursal_x_bodega[bodega_id]"

      assert_select "input[name=?]", "sucursal_x_bodega[inventario_id]"

      assert_select "input[name=?]", "sucursal_x_bodega[user_created_id]"

      assert_select "input[name=?]", "sucursal_x_bodega[user_updated_id]"

      assert_select "input[name=?]", "sucursal_x_bodega[estado_x_proceso_id]"
    end
  end
end