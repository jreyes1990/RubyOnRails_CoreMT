require 'rails_helper'

RSpec.describe "estado_x_procesos/show", type: :view do
  before(:each) do
    @estado_x_proceso = assign(:estado_x_proceso, EstadoXProceso.create!(
      id_empresa: 2,
      user_created_id: 3,
      user_updated_id: 4,
      estado: "Estado",
      estado: nil,
      proceso_estado: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/Estado/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
