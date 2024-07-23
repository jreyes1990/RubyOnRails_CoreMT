require 'rails_helper'

RSpec.describe "tipo_bodegas/new", type: :view do
  before(:each) do
    assign(:tipo_bodega, TipoBodega.new(
      id_empresa: 1,
      descripcion: "MyString",
      user_created_id: 1,
      user_updated_id: 1,
      estado_x_proceso: nil
    ))
  end

  it "renders new tipo_bodega form" do
    render

    assert_select "form[action=?][method=?]", tipo_bodegas_path, "post" do

      assert_select "input[name=?]", "tipo_bodega[id_empresa]"

      assert_select "input[name=?]", "tipo_bodega[descripcion]"

      assert_select "input[name=?]", "tipo_bodega[user_created_id]"

      assert_select "input[name=?]", "tipo_bodega[user_updated_id]"

      assert_select "input[name=?]", "tipo_bodega[estado_x_proceso_id]"
    end
  end
end
