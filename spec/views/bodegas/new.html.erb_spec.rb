require 'rails_helper'

RSpec.describe "bodegas/new", type: :view do
  before(:each) do
    assign(:bodega, Bodega.new(
      id_empresa: 1,
      tipo_bodega: nil,
      descripcion: "MyString",
      user_created_id: 1,
      user_updated_id: 1,
      estado_x_proceso: nil
    ))
  end

  it "renders new bodega form" do
    render

    assert_select "form[action=?][method=?]", bodegas_path, "post" do

      assert_select "input[name=?]", "bodega[id_empresa]"

      assert_select "input[name=?]", "bodega[tipo_bodega_id]"

      assert_select "input[name=?]", "bodega[descripcion]"

      assert_select "input[name=?]", "bodega[user_created_id]"

      assert_select "input[name=?]", "bodega[user_updated_id]"

      assert_select "input[name=?]", "bodega[estado_x_proceso_id]"
    end
  end
end
