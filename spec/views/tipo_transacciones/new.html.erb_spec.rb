require 'rails_helper'

RSpec.describe "tipo_transacciones/new", type: :view do
  before(:each) do
    assign(:tipo_transaccion, TipoTransaccion.new(
      id_empresa: 1,
      descripcion: "MyString",
      signo: "MyString",
      afecta_costo: "MyString",
      user_created_id: 1,
      user_updated_id: 1,
      usrgrabo: "MyString",
      usrmodi: "MyString",
      id_transa: 1
    ))
  end

  it "renders new tipo_transaccion form" do
    render

    assert_select "form[action=?][method=?]", tipo_transacciones_path, "post" do

      assert_select "input[name=?]", "tipo_transaccion[id_empresa]"

      assert_select "input[name=?]", "tipo_transaccion[descripcion]"

      assert_select "input[name=?]", "tipo_transaccion[signo]"

      assert_select "input[name=?]", "tipo_transaccion[afecta_costo]"

      assert_select "input[name=?]", "tipo_transaccion[user_created_id]"

      assert_select "input[name=?]", "tipo_transaccion[user_updated_id]"

      assert_select "input[name=?]", "tipo_transaccion[usrgrabo]"

      assert_select "input[name=?]", "tipo_transaccion[usrmodi]"

      assert_select "input[name=?]", "tipo_transaccion[id_transa]"
    end
  end
end
