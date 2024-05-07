#=====================================================================
# Advance Eventing by Zetanium XYZ (Ultra Unitilezer 9909)
# Req: BW Speech buble
#=====================================================================
# Parameters: (not finished)
#   eventId: The event's ID (the one that is talking)
#   textType: 1 if bubble; 2 if normal
#   color: Text color (Hex) 
#     - Grey: 0
#     - Cresent: 1
#     - Bronze: 2
#     - Lime: 3
#     - Cyan: 4
#     - Ember: 5
#     - Teal: 6
#     - Lavender: 7
#     - Crimson: 8
#     - Orange: 9
#     - Shadow: 10 
#     - Magenta: 11
#     - White: 12
#     - Wood: 13
#     - Candy Blue: 14
#     - Candy Pink: 15
#     - Candy Teal: 16
#     - Candy Magenta: 17
#   actor: The name of the talking character
#   text: The text to display
#   choiceC = a list of choice(s) when the text is played (maximum of 4, must be an array)
#   ifCancel = default choice when the choice is cancel (-1 for Canceled (condition), 0 if not cancelable, 1 for Choice 1, 2 for Choice 2, 3 for Choice 3, 4 for Choice 4)
#   eventIdAnie = an
#   transparency: Text transparency
#   positionText: Text position (0 for left, 1 for center, 2 for right)
#   positionBox: Window position (0 for bottom, 1 for middle, 2 for top)
#   window: Visibility of the graphical window (true for visible, false for invisible)
#=====================================================================
def pbTextz(eventId = 0, textType = 0, color = nil, actor = nil, text = "<empty text>", choiceC = [], ifCancel = 0, eventIdAnie = nil, animationId = nil, transparency = 255, positionText = 2, positionBox = 3, window = true)
  return pbMessage("No command given") if !eventId && !textType && !color && !actor && !text && !choiceC && !ifCancel && !eventIdAnie && !animationId && !transparency && !positionText && !positionBox && !window
  positionTextVar = { 1 => "<ar>", 2 => "<ac>" }[positionText] || ""
  transparencyVar = (0..255).cover?(transparency) ? "<o=#{transparency}>" : ""
  actorVar = actor == "\\PN" ? "<b>#{$player.name}:\\n</b> " : (actor.nil? ? "" : "<b>#{actor}:\\n</b> ")
  colorVar = "<c3=#{$zColorsHex[color.to_i.between?(0, 18) ? color * 2 + 1 : 12 * 2 + 1]},#{$zColorsHex[color.to_i.between?(0, 18) ? color * 2 : 12 * 2]}>" if color
  pbCallBub((textType < 0 || textType > 2) ? 1 : textType, (eventId < 0) ? 1 : eventId) if textType != nil || textType == 0 && eventId && textType ## #only activates if not nil
  $game_system.message_position = (1..3).cover?(positionBox) ? positionBox : 3
  $game_system.message_frame = window.nil? ? 0 : (window ? 0 : 1)
  if eventIdAnie && animationId
    case eventIdAnie
    when "X", "x" then get_character(eventId).animation_id = animationId
    when 0 then get_player.animation_id = animationId
    when -1 then get_self.animation_id = animationId
    else
      get_character(eventIdAnie).animation_id = animationId if eventIdAnie != 0 && eventIdAnie != -1
    end
  end
  if text # if text is given
    textVar = text == "..." ? _INTL("<outln2>\\w[bw speech2]<fn=Power Green Narrow>{1}{2}{3}{4}\\ts[6]...</outln2></ar></ac></c3></fs></fn>", colorVar, transparencyVar, positionTextVar, actorVar) :
                              "<outln2>\\w[bw speech2]<fn=Power Green Narrow>#{colorVar}#{transparencyVar}#{positionTextVar}#{actorVar}#{text}</outln2></ar></ac></c3></fs></fn>"
    $choice = choiceC.nil? || choiceC.empty? ? nil : pbMessage(textVar, choiceC, ifCancel)
    pbMessage(textVar) unless $choice
  end
  $game_system.message_position, $game_system.message_frame = 0, 0
end
#=====================================================================
def pbRetrunColor(color)
  return "<c3=#{$zColorsHex[color * 2 + 1]},#{$zColorsHex[color * 2]}>"
end
#=====================================================================
# Advance Path-finding
# req: VASP
#=====================================================================
def pbAdvancePathFinding(type = nil, event1 = $game_player, event2 = nil, x = 0, y = 0, wait = false)
  return pbMessage("No command given") if !type && !event1 && !event2 && !x && !y
  case type
  when 0 then move_to_location(event1, x, y, wait)
  when 1 then move_to_event(event1, event2, wait)
  when 2 then look_at_location(event1, x, y)
  when 3 then look_at_event(event1, event2)
  end
end
#=====================================================================
# Cutscene Mode by Zetanium XYZ (Ultra Unitilezer 9909)
#=====================================================================
# Cutzcene("in") or Cutzcene("out")
#=====================================================================
  # class Cutzcene
  #   def pbUpdate
  #     pbUpdateSpriteHash(@sprites)
  #     if @sprites["bg"] || @sprites["bg2"]
  #       @sprites["bg1"].x = Settings::SCREEN_WIDTH / 2; @sprites["bg2"].x = Settings::SCREEN_WIDTH / 2
  #       @sprites["bg1"].ox = @sprites["bg2"].bitmap.width / 2; @sprites["bg2"].ox = @sprites["bg2"].bitmap.width / 2
  #       Graphics.update
  #     end
  #   end

  #   def initialize
  #     @sprites = {}
  #     @viewport = Viewport.new(0, 0, Graphics.width, Graphics.height); @viewport.z = 99999
  #     @sprites["bg1"] = IconSprite.new(0, 0, @viewport); @sprites["bg1"].setBitmap("Graphics/Pictures/UI/CamBor")
  #     @sprites["bg1"].viewport = @viewport
  #     @sprites["bg1"].x = Settings::SCREEN_WIDTH / 2
  #     @sprites["bg1"].y = Settings::SCREEN_HEIGHT * 0 - 32
  #     @sprites["bg1"].ox = @sprites["bg1"].bitmap.width / 2
  #     @sprites["bg1"].opacity = 0
  #     @sprites["bg1"].zoom_x = 20
  #     @sprites["bg2"] = IconSprite.new(0, 0, @viewport); @sprites["bg2"].setBitmap("Graphics/Pictures/UI/CamBor")
  #     @sprites["bg2"].viewport = @viewport
  #     @sprites["bg2"].x = Settings::SCREEN_WIDTH / 2
  #     @sprites["bg2"].y = Settings::SCREEN_HEIGHT
  #     @sprites["bg2"].ox = @sprites["bg2"].bitmap.width / 2
  #     @sprites["bg2"].opacity = 0
  #     @sprites["bg2"].zoom_x = 20
  #     $frames = 0.0   #i only did this so the code is "changed" without changing it actually...
  #     Graphics.update
  #   end

  #   def dispose
  #     pbDisposeSpriteHash(@sprites)
  #     @viewport.dispose
  #     #@sprites["bg1"].dispose; @sprites["bg2"].dispose
  #     $frames = 0.0
  #   end

  #   def fadein
  #     while $frames < 16
  #       #setForcedPosition
  #       @sprites["bg1"].y += 2; @sprites["bg1"].opacity += 255 / 16
  #       @sprites["bg2"].y -= 2; @sprites["bg2"].opacity += 255 / 16
  #       $frames += 1; Graphics.update
  #     end
  #   end

  #   def fadeout
  #     while $frames > 0
  #       #setForcedPosition
  #       @sprites["bg1"].y -= 2; @sprites["bg1"].opacity -= 255 / 16
  #       @sprites["bg2"].y += 2; @sprites["bg2"].opacity -= 255 / 16
  #       $frames -= 1; Graphics.update
  #     end
  #     dispose
  #   end
  # end

  # class CutzceneControl
  #   $classIn = Cutzcene.new
  #   $frames = 0.0 if $fade == "out"
  #   def pbCutsceneIn; $classIn.fadein; end
  #   def pbCutsceneOut; return if $frames == 0; $classIn.fadeout; $classIn.dispose; end
  # end

  # def pbCutzcene(fade)
  #   $fade = fade
  #   ccttrl = CutzceneControl.new
  #   case $fade
  #   when "in" then ccttrl.pbCutsceneIn
  #   when "out" then ccttrl.pbCutsceneOut
  #   else return
  #   end
  # end

#=====================================================================
# FakeMapNameWindow: $scene.spriteset.addUserSprite(FakeMapNameWindow.new($game_map.name))

# FakeMapNameWindow

class FakeMapNameWindow
  def initialize(name = $game_map.name, color = "<c3=940fff,6300b4>")
    @name = name
    @color = color
    create_window
  end

  def create_window
    @window = Window_AdvancedTextPokemon.new("#{@color}#{@name}") #("#{@color}#{@name}") ("\\w[#{wn}]#{@color}#{@name}", wn)
    @window.setSkin("Graphics/Windowskins/bw map post")
    @window.resizeToFit(@name, Graphics.width)
    @window.x = 0
    @window.y = -@window.height
    @window.viewport = Viewport.new(0, 0, Graphics.width, Graphics.height)
    @window.viewport.z = 99999
    @current_map_id = $game_map.map_id
    @frames = 0
  end

  def disposed?
    @window.disposed?
  end

  def dispose
    @window.dispose
  end

  def update
    return if @window.disposed?
    @window.update
    if message_window_active? || map_changed?
      @window.dispose
      return
    end
    move_window
  end

  def message_window_active?
    $game_temp.message_window_showing
  end

  def map_changed?
    @current_map_id != $game_map.map_id
  end

  def move_window
    if @frames > Graphics.frame_rate * 2
      @window.y -= 4
      @window.dispose if @window.y + @window.height < 0
    else
      @window.y += 4 if @window.y < 0
      @frames += 1
    end
  end
end
#=====================================================================
# FakeMapNameWindow: $scene.spriteset.addUserSprite(AchievementWindow.new("{x}"))

# AchievementWindow (under construction)

class AchievementWindow
  def initialize(name = $game_map.name, color = "<c3=940fff,6300b4>")
    @name = name
    @color = color
    create_window
  end

  def create_window
    @window = Window_AdvancedTextPokemon.new("#{@color}#{@name}")
    @window.resizeToFit(@name, Graphics.width)
    @window.x = 0
    @window.y = -@window.height
    @window.viewport = Viewport.new(0, 0, Graphics.width, Graphics.height)
    @window.viewport.z = 99999
    @current_map_id = $game_map.map_id
    @frames = 0
  end

  def disposed?
    @window.disposed?
  end

  def dispose
    @window.dispose
  end

  def update
    return if @window.disposed?
    @window.update
    if message_window_active? || map_changed?
      @window.dispose
      return
    end
    move_window
  end

  def message_window_active?
    $game_temp.message_window_showing
  end

  def map_changed?
    @current_map_id != $game_map.map_id
  end

  def move_window
    if @frames > Graphics.frame_rate * 2
      @window.y -= 4
      @window.dispose if @window.y + @window.height < 0
    else
      @window.y += 4 if @window.y < 0
      @frames += 1
    end
  end
end
