require 'rails_helper'

RSpec.describe "familia_productos/edit", type: :view do
  before(:each) do
    @familia_producto = assign(:familia_producto, FamiliaProducto.create!(
      id_empresa: 1,
      descripcion: "MyString",
      user_created_id: 1,
      user_updated_id: 1,
      clase_producto: nil,
      estado_x_proceso: nil
    ))
  end

  it "renders the edit familia_producto form" do
    render

    assert_select "form[action=?][method=?]", familia_producto_path(@familia_producto), "post" do

      assert_select "input[name=?]", "familia_producto[id_empresa]"

      assert_select "input[name=?]", "familia_producto[descripcion]"

      assert_select "input[name=?]", "familia_producto[user_created_id]"

      assert_select "input[name=?]", "familia_producto[user_updated_id]"

      assert_select "input[name=?]", "familia_producto[clase_producto_id]"

      assert_select "input[name=?]", "familia_producto[estado_x_proceso_id]"
    end
  end
end
