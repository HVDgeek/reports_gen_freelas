defmodule ReportsGenFreelas do
  alias ReportsGenFreelas.Parser

  @available_users [
    "Daniele",
    "Mayk",
    "Giuliano",
    "Cleiton",
    "Jakeliny",
    "Joseph",
    "Diego",
    "Danilo",
    "Rafael",
    "Vinicius"
  ]

  @available_months [
    "janeiro",
    "fevereiro",
    "março",
    "abril",
    "maio",
    "junho",
    "julho",
    "agosto",
    "setembro",
    "outubro",
    "novembro",
    "dezembro"
  ]

  @available_years ["2016", "2017", "2018", "2019", "2020"]

  def build(filename) do
    filename
    |> Parser.parse_file()
    |> Enum.reduce(initialize_acc(), fn line, report -> sum_values(line, report) end)
  end

  defp sum_values([name, hours, _day, month, year], %{
         "all_hours" => all_hours,
         "hours_per_month" => hours_per_month,
         "hours_per_year" => hours_per_year
       }) do
    # ALL HOURS
    all_hours = Map.put(all_hours, name, all_hours[name] + hours)

    # HOURS_PER_MONTH
    month_name = get_month_name(month)

    month_hour =
      Map.put(hours_per_month[name], month_name, hours_per_month[name][month_name] + hours)

    hours_per_month = Map.put(hours_per_month, name, month_hour)

    # HOURS_PER_YEAR
    year_hour = Map.put(hours_per_year[name], year, hours_per_year[name][year] + hours)

    hours_per_year = Map.put(hours_per_year, name, year_hour)

    %{
      "all_hours" => all_hours,
      "hours_per_month" => hours_per_month,
      "hours_per_year" => hours_per_year
    }
  end

  defp get_month_name(month) do
    month_name = elem(Enum.fetch(@available_months, String.to_integer(month) - 1), 1)
    month_name
  end

  defp initialize_months do
    Enum.into(@available_months, %{}, &{&1, 0})
  end

  defp initialize_years do
    Enum.into(@available_years, %{}, &{&1, 0})
  end

  defp initialize_acc do
    all_hours = Enum.into(@available_users, %{}, &{&1, 0})
    hours_per_month = Enum.into(@available_users, %{}, &{&1, initialize_months()})
    hours_per_year = Enum.into(@available_users, %{}, &{&1, initialize_years()})

    %{
      "all_hours" => all_hours,
      "hours_per_month" => hours_per_month,
      "hours_per_year" => hours_per_year
    }
  end
end
