require 'rails_helper'

RSpec.describe "parametros_generales/new", type: :view do
  before(:each) do
    assign(:parametro_general, ParametroGeneral.new(
      id_empresa: 1,
      nombre: "MyString",
      valor: "MyString",
      user_created_id: 1,
      user_updated_id: 1,
      estado_x_proceso: nil
    ))
  end

  it "renders new parametro_general form" do
    render

    assert_select "form[action=?][method=?]", parametros_generales_path, "post" do

      assert_select "input[name=?]", "parametro_general[id_empresa]"

      assert_select "input[name=?]", "parametro_general[nombre]"

      assert_select "input[name=?]", "parametro_general[valor]"

      assert_select "input[name=?]", "parametro_general[user_created_id]"

      assert_select "input[name=?]", "parametro_general[user_updated_id]"

      assert_select "input[name=?]", "parametro_general[estado_x_proceso_id]"
    end
  end
end
