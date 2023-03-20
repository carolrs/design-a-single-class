class MusicManagement
  def initialize 
     @musics = []
  end
  def add_music(music) # music is a string
      if music.nil?
         raise ArgumentError, "Music can not me null" 
      elsif !music.empty? && !@musics.include?(music)
         @musics << music 
      end
      return @musics
  end

  def print_musics
  return @musics
  end
end
