

	local json = {
		["cmd"] = "INVITE_BROWSER",
		["args"] = {
			["code"] = ""
		},
		["nonce"] = 'a'
	}
	spawn(function()
		print(syn.request({
			Url = 'http://127.0.0.1:6463/rpc?v=1',
			Method = 'POST',
			Headers = {
				['Content-Type'] = 'application/json',
				['Origin'] = 'https://discord.com'
			},
			Body = game:GetService('HttpService'):JSONEncode(json),
		}).Body)
	end)
