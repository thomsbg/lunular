local class = require("lapis.lua").class
local Widget = require("lapis.html").Widget
return class({
  content = function(self)
    html_5(function()
      head(function()
        title(self.title)
        script{ src = "//cdnjs.cloudflare.com/ajax/libs/zepto/1.0/zepto.min.js" }
        script{ src = "application.js" }
      end)
      body(function()
        self:content_for "inner"
      end)
    end)
  end
}, Widget)
