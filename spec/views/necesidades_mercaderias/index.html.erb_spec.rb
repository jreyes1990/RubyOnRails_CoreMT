require 'rails_helper'

RSpec.describe "necesidades_mercaderias/index", type: :view do
  before(:each) do
    assign(:necesidades_mercaderias, [
      NecesidadMercaderia.create!(
        id_empresa: 2,
        user_created_id: 3,
        user_updated_id: 4,
        estado_x_proceso: nil
      ),
      NecesidadMercaderia.create!(
        id_empresa: 2,
        user_created_id: 3,
        user_updated_id: 4,
        estado_x_proceso: nil
      )
    ])
  end

  it "renders a list of necesidades_mercaderias" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
