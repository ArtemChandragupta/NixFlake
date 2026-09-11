---@diagnostic disable: undefined-global

swayimg.overlay = false
swayimg.text.visible = false
swayimg.decoration = true

swayimg.text.color = 0xffebdbb2
swayimg.text.font = "Stix"

swayimg.viewer.set_window_background(0xff282828)
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

swayimg.viewer.on_mouse("ScrollUp", function()
  local mouse = swayimg.get_mouse_pos()
  local scale = swayimg.viewer.scale
  swayimg.viewer.set_abs_scale(scale + scale / 30, mouse.x, mouse.y)
end)

swayimg.viewer.on_mouse("ScrollLeft", function()
  local pos = swayimg.viewer.get_position()
  swayimg.viewer.set_abs_position(pos.x + 10, pos.y)
end)
swayimg.viewer.on_mouse("ScrollRight", function()
  local pos = swayimg.viewer.get_position()
  swayimg.viewer.set_abs_position(pos.x - 10, pos.y)
end)

local function safe_zoom_out()
    -- Получаем текущий масштаб изображения (1.0 = 100%)
    local current_scale = swayimg.viewer.get_scale()

    -- Получаем масштаб, необходимый для полного заполнения/вписывания в окно
    -- "fit" считает масштаб, чтобы картинка полностью поместилась в окно
    local fit_scale = swayimg.viewer.get_fix_scale("fit")

    -- Если текущий масштаб уже равен или меньше масштаба "fit", не уменьшаем дальше
    if current_scale <= fit_scale then
        -- Опционально: жестко сбрасываем в fit, чтобы избежать погрешностей
        swayimg.viewer.set_scale("fit")
    else
        -- Иначе уменьшаем как обычно (например, на 10%)
        -- Если у вас старая версия, используйте swayimg.viewer.zoom("-10")
        swayimg.viewer.zoom("-10")
    end
end

-- Функция для вычисления минимального масштаба (режим fit)
local function get_min_scale()
    -- Получаем размер текущего окна swayimg (возвращает width и height)
    local win = swayimg.get_window_size()
    -- Получаем свойства текущего изображения
    local img = swayimg.viewer.get_image()

    if not win or not img or img.width == 0 or img.height == 0 then
        return 0
    end

    -- Считаем коэффициенты подгонки по ширине и высоте
    local scale_x = win.width / img.width
    local scale_y = win.height / img.height

    -- Минимальный из них и есть масштаб "fit" (вписать в окно)
    return math.min(scale_x, scale_y)
end

-- Функция умного уменьшения масштаба
local function smart_zoom_out()
    local current_scale = swayimg.viewer.scale
    local min_scale = get_min_scale()

    if not current_scale or min_scale == 0 then return end

    -- Шаг уменьшения на 10%
    local target_scale = current_scale - (current_scale / 30)

    if target_scale < min_scale then
        -- Фиксируем масштаб ровно по размеру окна
        swayimg.viewer.set_abs_scale(min_scale)
    else
        swayimg.viewer.set_abs_scale(target_scale)
    end
end

swayimg.viewer.on_key("minus", smart_zoom_out)
swayimg.viewer.on_mouse("ScrollDown", function()
  smart_zoom_out()
end)
