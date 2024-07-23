require 'rails_helper'

RSpec.describe "lotes/index", type: :view do
  before(:each) do
    assign(:lotes, [
      Lote.create!(
        id_empresa: 2,
        prod_producto: nil,
        codigo_barras: "Codigo Barras",
        cantidad_inicial: 3,
        cantidad_actual: 4,
        user_created_id: 5,
        user_updated_id: 6,
        estado_x_proceso: nil
      ),
      Lote.create!(
        id_empresa: 2,
        prod_producto: nil,
        codigo_barras: "Codigo Barras",
        cantidad_inicial: 3,
        cantidad_actual: 4,
        user_created_id: 5,
        user_updated_id: 6,
        estado_x_proceso: nil
      )
    ])
  end

  it "renders a list of lotes" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "Codigo Barras".to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
    assert_select "tr>td", text: 5.to_s, count: 2
    assert_select "tr>td", text: 6.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
