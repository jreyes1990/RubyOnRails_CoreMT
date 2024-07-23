require 'rails_helper'

RSpec.describe "tipo_bodegas/edit", type: :view do
  before(:each) do
    @tipo_bodega = assign(:tipo_bodega, TipoBodega.create!(
      id_empresa: 1,
      descripcion: "MyString",
      user_created_id: 1,
      user_updated_id: 1,
      estado_x_proceso: nil
    ))
  end

  it "renders the edit tipo_bodega form" do
    render

    assert_select "form[action=?][method=?]", tipo_bodega_path(@tipo_bodega), "post" do

      assert_select "input[name=?]", "tipo_bodega[id_empresa]"

      assert_select "input[name=?]", "tipo_bodega[descripcion]"

      assert_select "input[name=?]", "tipo_bodega[user_created_id]"

      assert_select "input[name=?]", "tipo_bodega[user_updated_id]"

      assert_select "input[name=?]", "tipo_bodega[estado_x_proceso_id]"
    end
  end
end
