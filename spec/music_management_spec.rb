require_relative '../lib/music_management'

describe MusicManagement do
  context "given 1 music" do
    it "stores and return music added" do 
      music = MusicManagement.new
      music.add_music("Sweet Child O' Mine")
      expect(music.print_musics).to eq ["Sweet Child O' Mine"]
    end
  end

  context "given a music added and an empty string" do 
    it "returns a list of musics without an empty string" do 
      music = MusicManagement.new
      music.add_music("Sweet Child O' Mine")
      music.add_music("")
      expect(music.print_musics).to eq ["Sweet Child O' Mine"]
    end
  end

  context "given an empty string"do
    it "returns a empty list" do 
      music = MusicManagement.new
      music.add_music("")
      expect(music.print_musics).to eq []
    end
  end

  context "given null" do 
    it "throws an error" do 
      music = MusicManagement.new
      expect {music.add_music(nil)}.to raise_error "Music can not me null"
    end
  end

  context "given multiple musics" do
    it "stores and return musics added" do 
      music = MusicManagement.new
      music.add_music("Sweet Child O' Mine")
      music.add_music("Livin' on a Prayer")
      music.add_music("When Doves Cry ")
      expect(music.print_musics).to eq ["Sweet Child O' Mine","Livin' on a Prayer", "When Doves Cry "]
    end
  end

  context "given the same music twice" do
    it "does not add the second one" do 
      music = MusicManagement.new
      music.add_music("Sweet Child O' Mine")
      music.add_music("Sweet Child O' Mine") 
      expect(music.print_musics).to eq ["Sweet Child O' Mine"]
    end
  end
end