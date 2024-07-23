require 'rails_helper'

RSpec.describe "proveedores/new", type: :view do
  before(:each) do
    assign(:proveedor, Proveedor.new(
      id_empresa: 1,
      razon_social: "MyString",
      nombre_comercial: "MyString",
      direccion: "MyString",
      direccion_bodega: "MyString",
      nit: "MyString",
      telefono: 1,
      correo_electronico: "MyString",
      persona_contacto: "MyString",
      tel_contacto: 1,
      cod_cliente: "MyString",
      dias_credito: 1,
      user_created_id: 1,
      user_updated_id: 1,
      beneficiario_cheque: "MyString",
      maximo_sin_autorizacion: "9.99",
      es_pequeno_contribuyente: "MyString",
      ciclo_despacho: 1,
      estado_x_proceso: nil
    ))
  end

  it "renders new proveedor form" do
    render

    assert_select "form[action=?][method=?]", proveedores_path, "post" do

      assert_select "input[name=?]", "proveedor[id_empresa]"

      assert_select "input[name=?]", "proveedor[razon_social]"

      assert_select "input[name=?]", "proveedor[nombre_comercial]"

      assert_select "input[name=?]", "proveedor[direccion]"

      assert_select "input[name=?]", "proveedor[direccion_bodega]"

      assert_select "input[name=?]", "proveedor[nit]"

      assert_select "input[name=?]", "proveedor[telefono]"

      assert_select "input[name=?]", "proveedor[correo_electronico]"

      assert_select "input[name=?]", "proveedor[persona_contacto]"

      assert_select "input[name=?]", "proveedor[tel_contacto]"

      assert_select "input[name=?]", "proveedor[cod_cliente]"

      assert_select "input[name=?]", "proveedor[dias_credito]"

      assert_select "input[name=?]", "proveedor[user_created_id]"

      assert_select "input[name=?]", "proveedor[user_updated_id]"

      assert_select "input[name=?]", "proveedor[beneficiario_cheque]"

      assert_select "input[name=?]", "proveedor[maximo_sin_autorizacion]"

      assert_select "input[name=?]", "proveedor[es_pequeno_contribuyente]"

      assert_select "input[name=?]", "proveedor[ciclo_despacho]"

      assert_select "input[name=?]", "proveedor[estado_x_proceso_id]"
    end
  end
end
