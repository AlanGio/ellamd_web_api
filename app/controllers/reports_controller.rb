class ReportsController < ApplicationController
  include ActionController::MimeResponds
  def index
    respond_to do |format|

      format.pdf do

        render pdf: "pdf_name"

      end

    end
  end
end
