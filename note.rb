
require_relative 'NOTEAPP'

puts "Use the following keys and  Enter to operate the programme"
puts " 1 Add Author and note"
puts " L List all  Authors and note"
puts " 2 View particular note using note ID"
puts " 3 Edit(update)  Author note"
puts " 4 Delete  Author and note"
puts  "Press crtl-Z to exist"
ans = gets.chomp
while ans != "BYE"
  ans = gets.chomp
  if ans == "1"
    puts " Enter Author's name"
    ansa = gets.chomp
    book_app = NoteApp::NotesApplication.new(ansa)
    puts " Enter notes for    #{ansa}"
    ansb = gets.chomp
    book_app.note_content(ansb)
    book_app.list
    #elsif ans == "L"
    # book_app.list
  elsif ans == "2"
    puts "Enter the note ID(numerical index of the note you are looking for)"
    ansc = gets.chomp
    book_app.get(ansc)
  elsif ans == "3"
    puts "This will edit a note. Enter the note ID"
    ansd = gets.chomp
    puts "Enter the new note for index  #{ansd}"
    ansc = gets.chomp
    puts "You are Viewing the edited version"
    book_app.get(ansd)
  elsif ans == "4"
    puts "This will edit a note. Enter the note ID"
    anse = gets.chomp
    book_app.delete(anse)
    puts " Deleted successfuly"
  else
    puts " Please enter the correct command"
  end
end


