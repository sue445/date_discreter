require "date_discreter/version"
require 'active_support/all'

module DateDiscreter
  module_function

  # return discrete of arg months
  # @param months [Array<Date,Time>]
  # @return [Array<Date>] if arg is continuous return empty array.
  def discrete_months(months)
    discrete_times(months, 1.month)
  end

  # return discrete of arg days
  # @param dates [Array<Date,Time>]
  # @return [Array<Date>] if arg is continuous return empty array.
  def discrete_days(dates)
    discrete_times(dates, 1.day)
  end

  # return discrete of arg hours
  # @param hours [Array<Time>]
  # @return [Array<Time>] if arg is continuous return empty array.
  def discrete_hours(hours)
    discrete_times(hours, 1.hour)
  end

  def discrete_times(target_times, degree)
    raise ArgumentError, "specify at least 2 elems" if target_times.length < 2
    sorted = target_times.sort
    cursor, range_upper = sorted[0], sorted[-1]
    filledup = []
    while (cursor < range_upper)
      filledup << cursor
      cursor += degree
    end
    filledup - target_times
  end
  private_class_method :discrete_times

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
