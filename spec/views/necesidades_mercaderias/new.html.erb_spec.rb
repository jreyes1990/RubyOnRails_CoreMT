require 'rails_helper'

RSpec.describe "necesidades_mercaderias/new", type: :view do
  before(:each) do
    assign(:necesidad_mercaderia, NecesidadMercaderia.new(
      id_empresa: 1,
      user_created_id: 1,
      user_updated_id: 1,
      estado_x_proceso: nil
    ))
  end

  it "renders new necesidad_mercaderia form" do
    render

    assert_select "form[action=?][method=?]", necesidades_mercaderias_path, "post" do

      assert_select "input[name=?]", "necesidad_mercaderia[id_empresa]"

      assert_select "input[name=?]", "necesidad_mercaderia[user_created_id]"

      assert_select "input[name=?]", "necesidad_mercaderia[user_updated_id]"

      assert_select "input[name=?]", "necesidad_mercaderia[estado_x_proceso_id]"
    end
  end
end
