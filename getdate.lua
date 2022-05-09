local date
local walmartimageforhenhighuiseventeen19etihteenuibruhageintyxdotlmaoname = {data = os.date("*t"),months = {"1","2","3","4","5","6","7","8","9","10","11","12"}}
for i, v in pairs(walmartimageforhenhighuiseventeen19etihteenuibruhageintyxdotlmaoname.months) do
	if walmartimageforhenhighuiseventeen19etihteenuibruhageintyxdotlmaoname.data.month == i then
		date = v..walmartimageforhenhighuiseventeen19etihteenuibruhageintyxdotlmaoname.data.day..walmartimageforhenhighuiseventeen19etihteenuibruhageintyxdotlmaoname.data.year
	end
end
return tostring(date)
