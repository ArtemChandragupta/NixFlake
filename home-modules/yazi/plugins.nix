{

home.file = {
  ".config/yazi/init.lua".text = ''
  
require("starship"):setup()

function Manager:render(area)
  local chunks = self:layout(area)

  local bar = function(c, x, y)
    x, y = math.max(0, x), math.max(0, y)
    return ui.Bar(
      ui.Rect({
        x = x,
        y = y,
        w = ya.clamp(0, area.w - x, 1),
        h = math.min(1, area.h),
      }),
      ui.Bar.TOP
    ):symbol(c)
  end

  return ya.flat({
    -- Borders
    ui.Border(area, ui.Border.ALL):type(ui.Border.ROUNDED)
      :style(THEME.manager.border_style),
    ui.Bar(chunks[1], ui.Bar.RIGHT)
      :symbol(THEME.manager.border_symbol)
      :style(THEME.manager.border_style),
    ui.Bar(chunks[3], ui.Bar.LEFT)
      :symbol(THEME.manager.border_symbol)
      :style(THEME.manager.border_style),

    bar("┬", chunks[1].right - 1, chunks[1].y),
    bar("┴", chunks[1].right - 1, chunks[1].bottom - 1),
    bar("┬", chunks[2].right, chunks[2].y),
    bar("┴", chunks[2].right, chunks[1].bottom - 1),

    -- Parent
    Parent:render(chunks[1]:padding(ui.Padding.xy(1))),
    -- Current
    Current:render(chunks[2]:padding(ui.Padding.y(1))),
    -- Preview
    Preview:render(chunks[3]:padding(ui.Padding.xy(1))),
  })
end
      
  '';

  ".config/yazi/plugins/smart-enter.yazi/init.lua".text = ''
      return {
      	entry = function()
      		local h = cx.active.current.hovered
      		ya.manager_emit(h and h.cha.is_dir and "enter" or "open", { hovered = true })
      	end,
      }
  '';

  ".config/yazi/plugins/starship.yazi/init.lua".text = ''
  
local save = ya.sync(function(st, cwd, output)
  if cx.active.current.cwd == Url(cwd) then
    st.output = output
    ya.render()
  end
end)

return {
  setup = function(st)
    Header.cwd = function()
      local cwd = cx.active.current.cwd
      if st.cwd ~= cwd then
        st.cwd = cwd
        ya.manager_emit("plugin", { st._name, args = ya.quote(tostring(cwd)) })
      end

      return ui.Line.parse(st.output or "")
    end
  end,

  entry = function(_, args)
    local output = Command("starship"):arg("prompt"):cwd(args[1]):env("STARSHIP_SHELL", ""):output()
     if output then
      save(args[1], output.stdout:gsub("^%s+", ""))
    end
  end,
}
  
  '';

};

}
