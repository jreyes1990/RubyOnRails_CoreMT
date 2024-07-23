require 'rails_helper'

RSpec.describe "familia_productos/index", type: :view do
  before(:each) do
    assign(:familia_productos, [
      FamiliaProducto.create!(
        id_empresa: 2,
        descripcion: "Descripcion",
        user_created_id: 3,
        user_updated_id: 4,
        clase_producto: nil,
        estado_x_proceso: nil
      ),
      FamiliaProducto.create!(
        id_empresa: 2,
        descripcion: "Descripcion",
        user_created_id: 3,
        user_updated_id: 4,
        clase_producto: nil,
        estado_x_proceso: nil
      )
    ])
  end

  it "renders a list of familia_productos" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Descripcion".to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
