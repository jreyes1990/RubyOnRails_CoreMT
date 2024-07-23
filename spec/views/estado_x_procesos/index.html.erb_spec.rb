require 'rails_helper'

RSpec.describe "estado_x_procesos/index", type: :view do
  before(:each) do
    assign(:estado_x_procesos, [
      EstadoXProceso.create!(
        id_empresa: 2,
        user_created_id: 3,
        user_updated_id: 4,
        estado: "Estado",
        estado: nil,
        proceso_estado: nil
      ),
      EstadoXProceso.create!(
        id_empresa: 2,
        user_created_id: 3,
        user_updated_id: 4,
        estado: "Estado",
        estado: nil,
        proceso_estado: nil
      )
    ])
  end

  it "renders a list of estado_x_procesos" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
    assert_select "tr>td", text: "Estado".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
