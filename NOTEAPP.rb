module NoteApp
	attr_accessor :author ,:note_list
 	
 	def initialize(author)
	    @author = author
	    @note_list = {'jo' => 'this can walk'}
	end
	
	def note_content(content)
		note_list[author]=content
	end
	
	def list()
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
#--------------------------------------------------------------
book_app = NotesApplication.new("lee")
book_app.note_content("we walk are happy today")
book_app.edit(0,"lkoii")
book_app.list
book_app.get(0)
book_app.delete(0)

