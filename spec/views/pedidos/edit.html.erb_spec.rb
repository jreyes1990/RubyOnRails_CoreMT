require 'rails_helper'

RSpec.describe "pedidos/edit", type: :view do
  before(:each) do
    @pedido = assign(:pedido, Pedido.create!(
      id_empresa: 1,
      producto_pendiente: "MyString",
      estado_x_proceso: nil,
      user_created_id: 1,
      user_updated_id: 1
    ))
  end

  it "renders the edit pedido form" do
    render

    assert_select "form[action=?][method=?]", pedido_path(@pedido), "post" do

      assert_select "input[name=?]", "pedido[id_empresa]"

      assert_select "input[name=?]", "pedido[producto_pendiente]"

      assert_select "input[name=?]", "pedido[estado_x_proceso_id]"

      assert_select "input[name=?]", "pedido[user_created_id]"

      assert_select "input[name=?]", "pedido[user_updated_id]"
    end
  end
end
