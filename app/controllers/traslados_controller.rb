class TrasladosController < InheritedResources::Base

  private

    def traslado_params
      params.require(:traslado).permit(:user_id, :empresa_id, :direccion_origen, :direccion_destino, :fecha, :price)
    end
end

