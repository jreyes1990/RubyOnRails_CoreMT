require 'rails_helper'

RSpec.describe "pedidos/index", type: :view do
  before(:each) do
    assign(:pedidos, [
      Pedido.create!(
        id_empresa: 2,
        producto_pendiente: "Producto Pendiente",
        estado_x_proceso: nil,
        user_created_id: 3,
        user_updated_id: 4
      ),
      Pedido.create!(
        id_empresa: 2,
        producto_pendiente: "Producto Pendiente",
        estado_x_proceso: nil,
        user_created_id: 3,
        user_updated_id: 4
      )
    ])
  end

  it "renders a list of pedidos" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Producto Pendiente".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
  end
end
