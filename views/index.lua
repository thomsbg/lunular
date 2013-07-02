local class = require("lapis.lua").class
local Widget = require("lapis.html").Widget
return class({
  content = function(self)
    h1("Lunular")
    h2("A lua pattern evaluator")
    form({ action = self:url_for("evaluate") }, function()
      label(function()
        return input({
          name = "pattern",
          placeholder = "Your pattern"
        })
      end)
      label(function()
        return textarea({
          name = "text"
        }, "Your test string")
      end)
      input({
        type = "submit",
        value = "Evaluate"
      })
    end)
  end
}, Widget)
