class Api::V1::PvmesDeclarationsController < Api::V1::BaseController

   before_action :pvmes_declaration, only: [ :show ]

  def index
    @pvmes_declarations = PvmesDeclaration.all
  end

  def show
  end

  def create
    @pvmes_declaration = PvmesDeclaration.new(pvmes_declaration_params)
    if @pvmes_declaration.save
      render :show, status: :created
    else
      render_error
    end
  end

  private

  def pvmes_declaration
    @pvmes_declaration = PvmesDeclaration.find(params[:id])
  end

   def pvmes_declaration_params
    params.require(:pvmes_declaration)
          .permit(:compagny_name,
                  :compagny_siren,
                  :customer_name,
                  :customer_email,
                  :customer_phone,
                  :adress,
                  :date_of_installation,
                  panels_attributes: [
                    :hybrid,
                    :code
                  ]
                  )
  end

    def render_error
    render json: { errors: @pvmes_declaration.errors.full_messages },
      status: :unprocessable_entity
  end

end
