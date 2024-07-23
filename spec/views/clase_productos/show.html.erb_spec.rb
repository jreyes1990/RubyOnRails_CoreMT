require 'rails_helper'

RSpec.describe "clase_productos/show", type: :view do
  before(:each) do
    @clase_producto = assign(:clase_producto, ClaseProducto.create!(
      id_empresa: 2,
      descripcion: "Descripcion",
      user_created_id: 3,
      user_updated_id: 4,
      estado: "Estado",
      estado_x_proceso: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Descripcion/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/Estado/)
    expect(rendered).to match(//)
  end
end
