require 'rails_helper'

RSpec.describe "proveedores/show", type: :view do
  before(:each) do
    @proveedor = assign(:proveedor, Proveedor.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Razon Social/)
    expect(rendered).to match(/Nombre Comercial/)
    expect(rendered).to match(/Direccion/)
    expect(rendered).to match(/Direccion Bodega/)
    expect(rendered).to match(/Nit/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Correo Electronico/)
    expect(rendered).to match(/Persona Contacto/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/Cod Cliente/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/7/)
    expect(rendered).to match(/Beneficiario Cheque/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Es Pequeno Contribuyente/)
    expect(rendered).to match(/8/)
    expect(rendered).to match(//)
  end
end
