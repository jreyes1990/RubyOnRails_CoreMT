require 'rails_helper'

RSpec.describe "pedidos/show", type: :view do
  before(:each) do
    @pedido = assign(:pedido, Pedido.create!(
      id_empresa: 2,
      producto_pendiente: "Producto Pendiente",
      estado_x_proceso: nil,
      user_created_id: 3,
      user_updated_id: 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Producto Pendiente/)
    expect(rendered).to match(//)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
  end
end
