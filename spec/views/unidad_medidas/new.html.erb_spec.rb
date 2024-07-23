require 'rails_helper'

RSpec.describe "unidad_medidas/new", type: :view do
  before(:each) do
    assign(:unidad_medida, UnidadMedida.new(
      id_empresa: 1,
      descripcion: "MyString",
      user_created_id: 1,
      user_updated_id: 1,
      estado_x_proceso: nil
    ))
  end

  it "renders new unidad_medida form" do
    render

    assert_select "form[action=?][method=?]", unidad_medidas_path, "post" do

      assert_select "input[name=?]", "unidad_medida[id_empresa]"

      assert_select "input[name=?]", "unidad_medida[descripcion]"

      assert_select "input[name=?]", "unidad_medida[user_created_id]"

      assert_select "input[name=?]", "unidad_medida[user_updated_id]"

      assert_select "input[name=?]", "unidad_medida[estado_x_proceso_id]"
    end
  end
end
