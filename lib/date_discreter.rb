require "date_discreter/version"
require 'active_support/all'

module DateDiscreter
  module_function

  # return discrete of arg months
  # @param months [Array<Date,Time>]
  # @return [Array<Date>] if arg is continuous return empty array.
  def discrete_months(months)
    res = []
    months.sort.each_cons(2) do |this_month, next_month|
      res << this_month + 1.month unless this_month + 1.month == next_month
    end
    res
  end

  # return discrete of arg days
  # @param dates [Array<Date,Time>]
  # @return [Array<Date>] if arg is continuous return empty array.
  def discrete_days(dates)
    res = []
    dates.sort.each_cons(2) do |this_date, next_date|
      res << this_date + 1.day unless this_date + 1.day == next_date
    end
    res
  end

  # return discrete of arg hours
  # @param hours [Array<Time>]
  # @return [Array<Time>] if arg is continuous return empty array.
  def discrete_hours(hours)
    res = []
    hours.sort.each_cons(2) do |this_hour, next_hour|
      res << this_hour + 1.hour unless this_hour + 1.hour == next_hour
    end
    res
  end

  # whether arg months are continuous
  # @param months [Array<Date>]
  def continuous_months?(months)
    discrete_months(months).empty?
  end

  # whether arg months are continuous
  # @param dates [Array<Date>]
  def continuous_days?(dates)
    discrete_days(dates).empty?
  end

  # whether arg months are continuous
  # @param hours [Array<Date>]
  def continuous_hours?(hours)
    discrete_hours(hours).empty?
  end
end
