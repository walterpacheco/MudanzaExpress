class EmpresasController < InheritedResources::Base

  private

    def empresa_params
      params.require(:empresa).permit(:nombre, :telefono, :rut)
    end
end

