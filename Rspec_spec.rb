require 'rspec'
require_relative 'note'


describe ' Note taking application' do
  it "returns the correct author" do
    NoteApp::NotesApplication.new("James")
    expect(note_list[keys[0]]).to eq "James"
    end
  end

describe ' Note taking application' do
  it "returns the correct author" do
    NoteApp::NotesApplication.new("James")
    expect(note_list[keys[2]]).to eq nil
  end
end

describe ' Note taking application' do
  it "check is a new hash was created" do
    NoteApp::NotesApplication.new("James")
    expect(note_list=Hash.new).to eq True
  end
end

describe "check the variables " do
  it "returns author variable " do
    @author.NoteApp.should eql :author
  end
end

describe "check the variables " do
  it "returns author variable " do
    @note_list.NoteApp.should eql {}
  end
end


describe ' Note taking application' do
  it "get the obect create" do
    NoteApp::NotesApplication.new("James")
    expect(type(note_list)).to eq Hash
  end
end

describe ' Note taking application' do
  it "get author by index" do
    note_list = {"Jane" => "she is a girl", "kate" => "she is a good" }
    it "get the author by ID" do
      expect(get(0)).to eq "Jane"
    end
  end

  describe ' Note taking application' do
    it "get author by index" do
      note_list = {"Jane" => "she is a girl", "kate" => "she is a good" }
      it "get the author by ID" do
        expect(get(0)).to eq "Jane"
      end
    end

    describe ' Note taking application' do
      it "get author by index" do
        note_list = {"Jane" => "she is a girl", "kate" => "she is a good" }
        it "get the author by ID" do
          expect(get(3)).to eq nil
        end
      end






















end