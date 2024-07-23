require 'rails_helper'

RSpec.describe "inventarios/new", type: :view do
  before(:each) do
    assign(:inventario, Inventario.new(
      id_empresa: 1,
      descripcion: "MyString",
      user_created_id: 1,
      user_updated_id: 1,
      estado_x_proceso: nil
    ))
  end

  it "renders new inventario form" do
    render

    assert_select "form[action=?][method=?]", inventarios_path, "post" do

      assert_select "input[name=?]", "inventario[id_empresa]"

      assert_select "input[name=?]", "inventario[descripcion]"

      assert_select "input[name=?]", "inventario[user_created_id]"

      assert_select "input[name=?]", "inventario[user_updated_id]"

      assert_select "input[name=?]", "inventario[estado_x_proceso_id]"
    end
  end
end
