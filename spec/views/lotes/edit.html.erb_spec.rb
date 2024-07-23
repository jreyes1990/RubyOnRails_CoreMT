require 'rails_helper'

RSpec.describe "lotes/edit", type: :view do
  before(:each) do
    @lote = assign(:lote, Lote.create!(
      id_empresa: 1,
      prod_producto: nil,
      codigo_barras: "MyString",
      cantidad_inicial: 1,
      cantidad_actual: 1,
      user_created_id: 1,
      user_updated_id: 1,
      estado_x_proceso: nil
    ))
  end

  it "renders the edit lote form" do
    render

    assert_select "form[action=?][method=?]", lote_path(@lote), "post" do

      assert_select "input[name=?]", "lote[id_empresa]"

      assert_select "input[name=?]", "lote[prod_producto_id]"

      assert_select "input[name=?]", "lote[codigo_barras]"

      assert_select "input[name=?]", "lote[cantidad_inicial]"

      assert_select "input[name=?]", "lote[cantidad_actual]"

      assert_select "input[name=?]", "lote[user_created_id]"

      assert_select "input[name=?]", "lote[user_updated_id]"

      assert_select "input[name=?]", "lote[estado_x_proceso_id]"
    end
  end
end
