twistMod = Twist()
-- modpanel.addmodtoselection meltmodifier
with animate on
(
	at time 0 twistMod.angle = 0.0
	at time 25 twistMod.angle = 45
	at time 50 twistMod.angle = 0
	at time 75 twistMod.angle = -45
	at time 100 twistMod.angle = 0
)

nbObjects = objects.count

-- Apply modifier
for i=1 to nbObjects do (
	obj = objects[i]
	if (isGroupHead obj) then (
		continue
	)
	addmodifier obj twistMod
)

logsystem.logEntry "Done applying the twist!" info:true broadcast:true
saveMaxFile (maxFilePath + maxFileName) quiet:true