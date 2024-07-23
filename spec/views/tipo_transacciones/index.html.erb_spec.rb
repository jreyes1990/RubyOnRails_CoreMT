require 'rails_helper'

RSpec.describe "tipo_transacciones/index", type: :view do
  before(:each) do
    assign(:tipo_transacciones, [
      TipoTransaccion.create!(
        id_empresa: 2,
        descripcion: "Descripcion",
        signo: "Signo",
        afecta_costo: "Afecta Costo",
        user_created_id: 3,
        user_updated_id: 4,
        usrgrabo: "Usrgrabo",
        usrmodi: "Usrmodi",
        id_transa: 5
      ),
      TipoTransaccion.create!(
        id_empresa: 2,
        descripcion: "Descripcion",
        signo: "Signo",
        afecta_costo: "Afecta Costo",
        user_created_id: 3,
        user_updated_id: 4,
        usrgrabo: "Usrgrabo",
        usrmodi: "Usrmodi",
        id_transa: 5
      )
    ])
  end

  it "renders a list of tipo_transacciones" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Descripcion".to_s, count: 2
    assert_select "tr>td", text: "Signo".to_s, count: 2
    assert_select "tr>td", text: "Afecta Costo".to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
    assert_select "tr>td", text: "Usrgrabo".to_s, count: 2
    assert_select "tr>td", text: "Usrmodi".to_s, count: 2
    assert_select "tr>td", text: 5.to_s, count: 2
  end
end
