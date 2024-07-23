require 'rails_helper'

RSpec.describe "tipo_documentos/edit", type: :view do
  before(:each) do
    @tipo_documento = assign(:tipo_documento, TipoDocumento.create!(
      id_empresa: 1,
      descripcion: "MyString",
      user_created_id: 1,
      user_updated_id: 1,
      estado_x_proceso: nil
    ))
  end

  it "renders the edit tipo_documento form" do
    render

    assert_select "form[action=?][method=?]", tipo_documento_path(@tipo_documento), "post" do

      assert_select "input[name=?]", "tipo_documento[id_empresa]"

      assert_select "input[name=?]", "tipo_documento[descripcion]"

      assert_select "input[name=?]", "tipo_documento[user_created_id]"

      assert_select "input[name=?]", "tipo_documento[user_updated_id]"

      assert_select "input[name=?]", "tipo_documento[estado_x_proceso_id]"
    end
  end
end
