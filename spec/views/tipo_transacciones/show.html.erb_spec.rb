require 'rails_helper'

RSpec.describe "tipo_transacciones/show", type: :view do
  before(:each) do
    @tipo_transaccion = assign(:tipo_transaccion, TipoTransaccion.create!(
      id_empresa: 2,
      descripcion: "Descripcion",
      signo: "Signo",
      afecta_costo: "Afecta Costo",
      user_created_id: 3,
      user_updated_id: 4,
      usrgrabo: "Usrgrabo",
      usrmodi: "Usrmodi",
      id_transa: 5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Descripcion/)
    expect(rendered).to match(/Signo/)
    expect(rendered).to match(/Afecta Costo/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/Usrgrabo/)
    expect(rendered).to match(/Usrmodi/)
    expect(rendered).to match(/5/)
  end
end
