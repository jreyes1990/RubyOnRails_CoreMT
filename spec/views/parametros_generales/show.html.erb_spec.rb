require 'rails_helper'

RSpec.describe "parametros_generales/show", type: :view do
  before(:each) do
    @parametro_general = assign(:parametro_general, ParametroGeneral.create!(
      id_empresa: 2,
      nombre: "Nombre",
      valor: "Valor",
      user_created_id: 3,
      user_updated_id: 4,
      estado_x_proceso: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Nombre/)
    expect(rendered).to match(/Valor/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(//)
  end
end
