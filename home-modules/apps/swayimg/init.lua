---@diagnostic disable: undefined-global

swayimg.overlay = false
swayimg.text.visible = false
swayimg.decoration = true
swayimg.dnd_button = "MouseRight"

swayimg.text.color = 0xffebdbb2
swayimg.text.font = "Stix"

swayimg.viewer.set_window_background(0xff282828)
swayimg.viewer.default_scale = "fit"
swayimg.gallery.window_color = 0xff282828
swayimg.gallery.border_color = 0xff7fc8ff

swayimg.gallery.on_key("Tab", function()
  swayimg.mode = "viewer"
end)
swayimg.viewer.on_key("Tab", function()
  swayimg.mode = "gallery"
end)

swayimg.gallery.on_key("q", function()
  swayimg.exit()
end)

swayimg.viewer.on_key("q", function()
  swayimg.exit()
end)
swayimg.viewer.on_key("right", function()
  swayimg.viewer.open("next")
end)
swayimg.viewer.on_key("left", function()
  swayimg.viewer.open("prev")
end)

-- Copy the currently displayed frame to the Wayland clipboard as PNG.
local function copy_image()
  if not swayimg.viewer.get_image() then
    return
  end

  local dir = os.getenv("XDG_RUNTIME_DIR")
  if not dir or dir == "" then
    dir = "/tmp"
  end
  local path = dir .. "/swayimg-clipboard.png"

  os.remove(path)
  swayimg.viewer.export(path)

  local file = io.open(path, "rb")
  if not file then
    swayimg.text.status = "Failed to export image for clipboard"
    return
  end
  file:close()

  local ok = os.execute(string.format("wl-copy --type image/png < %q", path))
  if not ok then
    swayimg.text.status = "Failed to copy image: wl-copy is not available"
  end
end

swayimg.viewer.on_key("Ctrl-c", copy_image)

-- Minimum scale: the image must remain fully visible in the window.
-- Small images are enlarged to fit, so that they always touch the window
-- borders with at least one pair of sides.
local function get_min_scale()
  local image = swayimg.viewer.get_image()
  if not image or image.width <= 0 or image.height <= 0 then
    return nil
  end

  local window = swayimg.get_window_size()
  if window.width <= 0 or window.height <= 0 then
    return nil
  end

  return math.min(window.width / image.width,
                  window.height / image.height)
end

-- Rubber-band effect for zooming out below the minimum.
local RUBBER_MAX = 0.25    -- maximum overshoot, fraction of the minimum scale
local RUBBER_DELAY = 0.15  -- seconds without scrolling before snapping back
local RUBBER_STEP = 0.016  -- snap-back animation interval, seconds
local RUBBER_EASING = 0.35 -- part of the remaining distance per step

local rubber_active = false

local function rubber_scale(scale, minimum)
  local overshoot = RUBBER_MAX * minimum
  return minimum - overshoot * (1 - math.exp(-(minimum - scale) / overshoot))
end

local function snap_back()
  if not rubber_active then
    return
  end

  if swayimg.mode ~= "viewer" then
    rubber_active = false
    return
  end

  local minimum = get_min_scale()
  if not minimum then
    rubber_active = false
    return
  end

  local current = swayimg.viewer.scale
  local diff = minimum - current
  if diff <= 0 or diff < minimum * 0.002 then
    swayimg.viewer.set_abs_scale(minimum)
    rubber_active = false
    return
  end

  swayimg.viewer.set_abs_scale(current + diff * RUBBER_EASING)
  swayimg.defer(RUBBER_STEP, snap_back)
end

-- Rubber-band limit for zooming done by anything that doesn't go through
-- on_scroll (pinch gesture, keyboard bindings, etc.).
swayimg.on_redrawn(function()
  if rubber_active or swayimg.mode ~= "viewer" then
    return
  end

  local minimum = get_min_scale()
  local current = swayimg.viewer.scale
  if minimum and current < minimum then
    rubber_active = true
    swayimg.viewer.set_abs_scale(rubber_scale(current, minimum))
    swayimg.defer(RUBBER_DELAY, snap_back)
  end
end)

swayimg.viewer.on_scroll(function(kmods, horizontal, vertical)
  if kmods == "Ctrl" then
    -- zoom in/out
    if vertical ~= 0 then
      local mouse = swayimg.get_mouse_pos()
      local scale = swayimg.viewer.scale
      local target = scale - scale * vertical / 10.0
      local minimum = get_min_scale()
      if minimum and target < minimum then
        -- Stretch the image below the minimum with growing resistance,
        -- then snap back after the scrolling stops.
        rubber_active = true
        swayimg.viewer.set_abs_scale(rubber_scale(target, minimum),
                                     mouse.x, mouse.y)
        swayimg.defer(RUBBER_DELAY, snap_back)
      else
        rubber_active = false
        swayimg.defer(0, nil)
        swayimg.viewer.set_abs_scale(target, mouse.x, mouse.y)
      end
    end
  else
    -- move image across the window
    local pos = swayimg.viewer.get_position()
    swayimg.viewer.set_abs_position(pos.x + math.floor(horizontal * 50),
                                    pos.y + math.floor(vertical * 50))
  end
end)
