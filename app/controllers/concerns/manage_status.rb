# app/controllers/concerns/manage_status.rb
module ManageStatus
  extend ActiveSupport::Concern
  include Utilidades  

  def change_status_to(status_description, model, redirect_to_path, params_id)
    record = model.find(params_id)

    record.user_updated_id = current_user.id
    record.estado = status_description

    respond_to do |format|
      if record.save
        format.html { redirect_to redirect_to_path, notice: "El registro se ha cambiado a #{status_description == "A" ? "ACTIVO" : "INACTIVO"}".html_safe }
        format.json { render :show, status: :created, location: record }
      else
        format.html { render redirect_to_path, alert: "No se pudo cambiar el estado del registro" }
        format.json { render json: record.errors, status: :unprocessable_entity }
      end
    end
  end

  def guardar_con_manejo_de_excepciones(registro, mensaje_error, mensaje_error_bd)
    begin
      registro.save!
    rescue ActiveRecord::RecordInvalid => e
      raise StandardError.new("#{mensaje_error}: #{e.message}")
      Rails.logger.error("ERROR EN CONSOLA: #{e.message}")
    rescue ActiveRecord::StatementInvalid => e
      raise StandardError.new("#{mensaje_error_bd}: #{e.message}")
      Rails.logger.error("ERROR EN CONSOLA: #{e.message}")
    end
  end

  def actualizar_con_manejo_de_excepciones(registro, atributos, mensaje_error, mensaje_error_bd)
    begin
      registro.update!(atributos)
    rescue ActiveRecord::RecordInvalid => e
      raise StandardError.new("#{mensaje_error}: #{e.message}")
      Rails.logger.error("ERROR EN CONSOLA: #{e.message}")
    rescue ActiveRecord::StatementInvalid => e
      raise StandardError.new("#{mensaje_error_bd}: #{e.message}")
      Rails.logger.error("ERROR EN CONSOLA: #{e.message}")
    end
  end
end
  