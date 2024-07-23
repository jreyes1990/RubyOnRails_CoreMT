require 'rails_helper'

RSpec.describe "bodegas/edit", type: :view do
  before(:each) do
    @bodega = assign(:bodega, Bodega.create!(
      id_empresa: 1,
      tipo_bodega: nil,
      descripcion: "MyString",
      user_created_id: 1,
      user_updated_id: 1,
      estado_x_proceso: nil
    ))
  end

  it "renders the edit bodega form" do
    render

    assert_select "form[action=?][method=?]", bodega_path(@bodega), "post" do

      assert_select "input[name=?]", "bodega[id_empresa]"

      assert_select "input[name=?]", "bodega[tipo_bodega_id]"

      assert_select "input[name=?]", "bodega[descripcion]"

      assert_select "input[name=?]", "bodega[user_created_id]"

      assert_select "input[name=?]", "bodega[user_updated_id]"

      assert_select "input[name=?]", "bodega[estado_x_proceso_id]"
    end
  end
end
