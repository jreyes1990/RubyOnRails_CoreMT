require 'rails_helper'

RSpec.describe "estado_x_procesos/edit", type: :view do
  before(:each) do
    @estado_x_proceso = assign(:estado_x_proceso, EstadoXProceso.create!(
      id_empresa: 1,
      user_created_id: 1,
      user_updated_id: 1,
      estado: "MyString",
      estado: nil,
      proceso_estado: nil
    ))
  end

  it "renders the edit estado_x_proceso form" do
    render

    assert_select "form[action=?][method=?]", estado_x_proceso_path(@estado_x_proceso), "post" do

      assert_select "input[name=?]", "estado_x_proceso[id_empresa]"

      assert_select "input[name=?]", "estado_x_proceso[user_created_id]"

      assert_select "input[name=?]", "estado_x_proceso[user_updated_id]"

      assert_select "input[name=?]", "estado_x_proceso[estado]"

      assert_select "input[name=?]", "estado_x_proceso[estado_id]"

      assert_select "input[name=?]", "estado_x_proceso[proceso_estado_id]"
    end
  end
end
