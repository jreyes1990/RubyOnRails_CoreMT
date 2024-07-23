require 'rails_helper'

RSpec.describe "clase_productos/edit", type: :view do
  before(:each) do
    @clase_producto = assign(:clase_producto, ClaseProducto.create!(
      id_empresa: 1,
      descripcion: "MyString",
      user_created_id: 1,
      user_updated_id: 1,
      estado: "MyString",
      estado_x_proceso: nil
    ))
  end

  it "renders the edit clase_producto form" do
    render

    assert_select "form[action=?][method=?]", clase_producto_path(@clase_producto), "post" do

      assert_select "input[name=?]", "clase_producto[id_empresa]"

      assert_select "input[name=?]", "clase_producto[descripcion]"

      assert_select "input[name=?]", "clase_producto[user_created_id]"

      assert_select "input[name=?]", "clase_producto[user_updated_id]"

      assert_select "input[name=?]", "clase_producto[estado]"

      assert_select "input[name=?]", "clase_producto[estado_x_proceso_id]"
    end
  end
end