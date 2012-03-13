# Originally Created by Matt Aimonetti
class ABAddressBook
  def <<(record)
    if record.is_a?(ABRecord)
      self.addRecord(record)
      save
    else
      raise TypeError, "You can only add contacts or groups that inherits from ABRecord" 
    end
  end
  
  def delete(record)
    if record.is_a?(ABRecord)
      self.removeRecord(record)
      self.save
    else
      raise TypeError, "You can only remove contacts or groups that inherits from ABRecord"
    end
  end
end