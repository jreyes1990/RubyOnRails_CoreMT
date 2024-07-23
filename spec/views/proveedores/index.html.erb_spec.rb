require 'rails_helper'

RSpec.describe "proveedores/index", type: :view do
  before(:each) do
    assign(:proveedores, [
      Proveedor.create!(
        id_empresa: 2,
        razon_social: "Razon Social",
        nombre_comercial: "Nombre Comercial",
        direccion: "Direccion",
        direccion_bodega: "Direccion Bodega",
        nit: "Nit",
        telefono: 3,
        correo_electronico: "Correo Electronico",
        persona_contacto: "Persona Contacto",
        tel_contacto: 4,
        cod_cliente: "Cod Cliente",
        dias_credito: 5,
        user_created_id: 6,
        user_updated_id: 7,
        beneficiario_cheque: "Beneficiario Cheque",
        maximo_sin_autorizacion: "9.99",
        es_pequeno_contribuyente: "Es Pequeno Contribuyente",
        ciclo_despacho: 8,
        estado_x_proceso: nil
      ),
      Proveedor.create!(
        id_empresa: 2,
        razon_social: "Razon Social",
        nombre_comercial: "Nombre Comercial",
        direccion: "Direccion",
        direccion_bodega: "Direccion Bodega",
        nit: "Nit",
        telefono: 3,
        correo_electronico: "Correo Electronico",
        persona_contacto: "Persona Contacto",
        tel_contacto: 4,
        cod_cliente: "Cod Cliente",
        dias_credito: 5,
        user_created_id: 6,
        user_updated_id: 7,
        beneficiario_cheque: "Beneficiario Cheque",
        maximo_sin_autorizacion: "9.99",
        es_pequeno_contribuyente: "Es Pequeno Contribuyente",
        ciclo_despacho: 8,
        estado_x_proceso: nil
      )
    ])
  end

  it "renders a list of proveedores" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Razon Social".to_s, count: 2
    assert_select "tr>td", text: "Nombre Comercial".to_s, count: 2
    assert_select "tr>td", text: "Direccion".to_s, count: 2
    assert_select "tr>td", text: "Direccion Bodega".to_s, count: 2
    assert_select "tr>td", text: "Nit".to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: "Correo Electronico".to_s, count: 2
    assert_select "tr>td", text: "Persona Contacto".to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
    assert_select "tr>td", text: "Cod Cliente".to_s, count: 2
    assert_select "tr>td", text: 5.to_s, count: 2
    assert_select "tr>td", text: 6.to_s, count: 2
    assert_select "tr>td", text: 7.to_s, count: 2
    assert_select "tr>td", text: "Beneficiario Cheque".to_s, count: 2
    assert_select "tr>td", text: "9.99".to_s, count: 2
    assert_select "tr>td", text: "Es Pequeno Contribuyente".to_s, count: 2
    assert_select "tr>td", text: 8.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
