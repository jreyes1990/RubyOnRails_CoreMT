require 'rails_helper'

RSpec.describe "unidad_medidas/index", type: :view do
  before(:each) do
    assign(:unidad_medidas, [
      UnidadMedida.create!(
        id_empresa: 2,
        descripcion: "Descripcion",
        user_created_id: 3,
        user_updated_id: 4,
        estado_x_proceso: nil
      ),
      UnidadMedida.create!(
        id_empresa: 2,
        descripcion: "Descripcion",
        user_created_id: 3,
        user_updated_id: 4,
        estado_x_proceso: nil
      )
    ])
  end

  it "renders a list of unidad_medidas" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Descripcion".to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
