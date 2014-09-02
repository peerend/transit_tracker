module FormHelper
  def setup_table(stop)
    object = Table.new
    stop.tables << object
    stop
  end
end
