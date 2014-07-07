defmodule Atlas.Exceptions.AdapterError do
  defexception message: "Error when performing query"

  def can_retry do
    false
  end

  def full_message(me) do
    "Call failed: #{me.message}, retriable: #{me.can_retry}"
  end
end
