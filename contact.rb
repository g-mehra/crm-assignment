class Contact

  attr_accessor :first_name, :last_name, :email, :note
  attr_reader :id

  @@contacts =[]
  @@next_id = 1000

  def self.all
    @@contacts
  end

  def self.delete_all
    @@contacts.clear
  end

  def self.delete(attribute, value)
    if attribute == "first name"
      @@contacts.each do |contact|
        if contact.first_name == value
          @@contacts.delete(contact)
        end
      end
    end
    if attribute == "last name"
        @@contacts.each do |contact|
          if contact.last_name == value
            @@contracts.delete(contact)
          end
        end
    end
        if attribute == "email"
          @@contacts.each do |contact|
            if contact.email == value
              @@contracts.delete(contact)
            end
          end
        end
        if attribute == "note"
            @@contacts.each do |contact|
              if contact.note == value
                @@contracts.delete(contact)
              end
            end
          end

  end


  def self.create(first_name, last_name, email, note)
    #1. initialize new contact with unique id
    new_contact = self.new(first_name, last_name, email, note) #note that the create method is calling the initialize method below. Create method should be used to add new contacts instead of .new method directly so that unique id can be attached to contact and stored in the contact list. However, if you wanted to create a contact that doesnt get stored in the contact list use the .new method directly.
    #2. add new contact to list of all contacts
    @@contacts << new_contact
    return new_contact
  end

  def self.find(contact_id)
    @@contacts.each do |contact|
      if contact.id == contact_id
        return contact
      end
    end
  end

  def self.find_by(attribute, value)
  if attribute == "first name"
    @@contacts.each do |contact|
      if contact.first_name == value
        return contact
      end
    end
  end
  if attribute == "last name"
      @@contacts.each do |contact|
        if contact.last_name == value
          return contact
        end
      end
  end
      if attribute == "email"
        @@contacts.each do |contact|
          if contact.email == value
            return contact
          end
        end
      end
      if attribute == "note"
          @@contacts.each do |contact|
            if contact.note == value
              return contact
            end
          end
        end

  end






  def initialize (first_name, last_name, email, note)
    @id = @@next_id
    @first_name = first_name
    @last_name = last_name
    @email = email
    @note = note

    #3. increment next unique id
    @@next_id += 1

  end


  def full_name
    "#{first_name} #{last_name}"
  end


  def update(attribute, new_val)
    case attribute
    when "first name"
      @first_name = new_val
    when "last name"
      @last_name = new_val
    when "email"
      @email = new_val
    when "note"
      @note = new_val
    end
  end





end

# gene=Contact.create("Gene","Mt","gm@html.com","fjgjgjg")
