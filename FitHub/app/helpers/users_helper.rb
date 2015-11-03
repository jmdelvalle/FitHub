module UsersHelper

  def display_status(alert_type, flash_type)
    <<-eos
    <div class="container-fluid" id="medium_size">
      <div class="alert alert-#{alert_type}" role="alert">
        <p align="center">
          #{send(flash_type)}
        </p>
      </div>
    </div>
    eos
  end
end
