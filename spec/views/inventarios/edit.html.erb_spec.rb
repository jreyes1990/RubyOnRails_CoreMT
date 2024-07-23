require 'rails_helper'

RSpec.describe "inventarios/edit", type: :view do
  before(:each) do
    @inventario = assign(:inventario, Inventario.create!(
      id_empresa: 1,
      descripcion: "MyString",
      user_created_id: 1,
      user_updated_id: 1,
      estado_x_proceso: nil
    ))
  end

  it "renders the edit inventario form" do
    render

    assert_select "form[action=?][method=?]", inventario_path(@inventario), "post" do

      assert_select "input[name=?]", "inventario[id_empresa]"

      assert_select "input[name=?]", "inventario[descripcion]"

      assert_select "input[name=?]", "inventario[user_created_id]"

      assert_select "input[name=?]", "inventario[user_updated_id]"

      assert_select "input[name=?]", "inventario[estado_x_proceso_id]"
    end
  end
end
