module FormHelper
  def setup_table(stop)
    stop.tables << Table.new
    stop
  end
end
