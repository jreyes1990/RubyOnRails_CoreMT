require 'rails_helper'

RSpec.describe "familia_productos/show", type: :view do
  before(:each) do
    @familia_producto = assign(:familia_producto, FamiliaProducto.create!(
      id_empresa: 2,
      descripcion: "Descripcion",
      user_created_id: 3,
      user_updated_id: 4,
      clase_producto: nil,
      estado_x_proceso: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Descripcion/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
