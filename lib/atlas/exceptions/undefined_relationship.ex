defmodule Atlas.Exceptions.UndefinedRelationship do
  defexception message: "Undefined model relationship"
  
  def can_retry do
    false
  end

  def full_message(me) do
    "Call failed: #{me.message}, retriable: #{me.can_retry}"
  end
end
