require 'rails_helper'

RSpec.describe "necesidades_mercaderias/edit", type: :view do
  before(:each) do
    @necesidad_mercaderia = assign(:necesidad_mercaderia, NecesidadMercaderia.create!(
      id_empresa: 1,
      user_created_id: 1,
      user_updated_id: 1,
      estado_x_proceso: nil
    ))
  end

  it "renders the edit necesidad_mercaderia form" do
    render

    assert_select "form[action=?][method=?]", necesidad_mercaderia_path(@necesidad_mercaderia), "post" do

      assert_select "input[name=?]", "necesidad_mercaderia[id_empresa]"

      assert_select "input[name=?]", "necesidad_mercaderia[user_created_id]"

      assert_select "input[name=?]", "necesidad_mercaderia[user_updated_id]"

      assert_select "input[name=?]", "necesidad_mercaderia[estado_x_proceso_id]"
    end
  end
end
