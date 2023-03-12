defmodule AuthWeb.Layouts do
  use AuthWeb, :html

  embed_templates "layouts/*"

  def get_year(assigns) do
    {{year, _, _}, _} = :calendar.local_time()
    assigns = assign(assigns, :year, year)

    ~H"""
    <h3 class="font-bold"><%= @year %></h3>
    """
  end
end
