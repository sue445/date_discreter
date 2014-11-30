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
    res = []
    target_times.sort.each_cons(2) do |this_time, next_time|
      res << this_time + degree unless this_time + degree == next_time
    end
    res
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
