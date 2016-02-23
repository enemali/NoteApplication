module NoteApp
  attr_accessor :author ,:note_list

  def initialize(author)
    @author = author
    @note_list = {}
  end

  def note_content(content)
    note_list[author]=content
  end

  def list
    note_list.each_with_index {|(key, value),index| puts "Note ID:#{index}\n#{value}\nBy Author:#{key}\n---------------- "}
  end

  def get(note_id)
    keys = note_list.keys
    puts note_list[keys[note_id]]
  end

  def search()
  end

  def delete(note_id)
    note_list.delete_if{|k,v| k == note_list.keys[note_id]}
  end

  def edit(note_id,new_content)
    note_list.each do |key, value|
      if note_list.keys[note_id] == key
        note_list[key] = new_content
      end
    end

  end
end
#-------------------------------------------------------------
class NotesApplication
  include Enumerable
  include NoteApp
end
#---------------------------------------------------------
puts "Use the following keys and  Enter to operate the programme"
puts " A  for Add Author and note"
puts " L  for List all  Authors and note"
puts " V  for View particular note using note ID"
puts " E  for Edit(update)  Author note"
puts " D  for Delete  Author and note"
ans = gets.chomp
1000.times {|i|
  runapp = if ans == "A"

             puts " Enter Author's name"
             ansa = gets.chomp
             book_app = NotesApplication.new(ansa)
             puts " Enter notes for     #{ansa}"
             ansb = gets.chomp
             book_app.note_content(ansb)
             book_app.list
           elsif ans == "L"
             book_app.list
           elsif ans == "V"
             puts "Enter the note ID(numerical index of the note you are looking for)"
             ansc = gets.chomp
             book_app.get(ansc)
           elsif ans == "E"
             puts "This will edit a note. Enter the note ID"
             ansd = gets.chomp
             puts "Enter the new note for index  #{ansd}"
             ansc = gets.chomp
             puts "You are Viewing the edited version"
             book_app.get(ansd)
           elsif ans == "D"
             puts "This will edit a note. Enter the note ID"
             anse = gets.chomp
             book_app.delete(anse)
             puts " Deleted successfuly"
           else
             puts " Please enter the correct command"
           end
  ans = gets.chomp
            }

