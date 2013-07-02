local class = require("lapis.lua").class
local lapis = require("lapis")

local app = class({
  layout = require("views.layout"),

  [{ index = "/" }] = function(self)
    return {
      render = "index"
    }
  end,

  [{ evaluate = "/evaluate" }] = function(self)
    local pattern = self.params.pattern
    local text = self.params.text
    local matched = string.match(text, pattern)
    local highlighted = string.gsub(text, pattern, function(match)
      return "<strong>" .. match .. "</strong>"
    end)
    return {
      json = { matched = matched, highlighted = highlighted }
    }
  end
}, lapis.Application)

return lapis.serve(app)
