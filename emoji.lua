local rand = Random.new()
local emoji = {"%%26%69%64=%30%30%36%37%38%38%31%36%35%39%33%37%%26%69%64=%30%30%36%37%30%31%30%31%36%33%34%38%%26%69%64=%30%30%36%37%31%35%33%39%36%32%32%39%%26%69%64=%30%30%36%37%36%36%33%31%33%39%30%36%%26%69%64=%30%30%36%37%36%39%38%37%31%31%37%33%%26%69%64=%30%30%36%37%37%31%33%34%32%38%33%35%%26%69%64=%30%30%36%37%31%34%33%34%30%32%37%39%%26%69%64=%30%30%36%37%33%36%39%32%39%37%35%30%%26%69%64=%30%30%36%37%35%38%36%35%35%39%35%30%%26%69%64=%30%30%36%37%37%31%32%37%38%32%32%38%%26%69%64=%30%30%36%37%39%37%34%36%35%33%32%38%%26%69%64=%30%30%36%37%37%38%33%36%39%34%32%35%%26%69%64=%30%30%36%37%36%36%31%38%33%39%39%35%%26%69%64=%30%30%36%37%36%30%34%35%34%34%39%33%%26%69%64=%30%30%36%37%36%38%36%33%32%34%37%33%%26%69%64=%30%30%36%37%35%30%30%30%38%35%36%30%%26%69%64=%30%30%36%37%31%31%31%33%34%33%37%35%%26%69%64=%30%30%36%37%38%30%34%35%33%31%36%33%%26%69%64=%30%30%36%37%31%32%31%36%30%32%37%38%%26%69%64=%30%30%36%37%31%37%36%31%37%34%35%34%%26%69%64=%30%30%36%37%36%32%35%36%34%31%39%30%%26%69%64=%30%30%36%37%33%33%37%36%31%34%33%37%%26%69%64=%30%30%36%37%39%39%30%30%37%35%38%35%%26%69%64=%30%30%36%37%36%31%32%34%30%34%36%30%%26%69%64=%30%30%36%37%31%31%30%37%31%32%32%35%%26%69%64=%30%30%36%37%31%34%34%37%31%34%35%34%%26%69%64=%30%30%36%37%34%36%39%32%34%30%37%39%%26%69%64=%30%30%36%37%36%38%37%39%30%36%33%30%%26%69%64=%30%30%36%37%39%34%35%38%39%37%31%36%%26%69%64=%30%30%36%37%30%36%39%36%30%37%39%31%%26%69%64=%30%30%36%37%37%38%39%31%34%35%33%31%%26%69%64=%30%30%36%37%33%30%36%30%37%34%30%35%%26%69%64=%30%30%36%37%35%33%31%36%34%30%39%32%%26%69%64=%30%30%36%37%34%39%38%34%37%36%39%30%%26%69%64=%30%30%36%37%30%38%35%37%30%31%36%33%%26%69%64=%30%30%36%37%32%34%35%32%36%39%38%37%%26%69%64=%30%30%36%37%33%30%34%30%30%36%34%30%%26%69%64=%30%30%36%37%37%35%39%36%37%32%38%30%%26%69%64=%30%30%36%37%33%35%39%39%30%35%38%39%%26%69%64=%30%30%36%37%39%32%33%37%37%39%35%39%%26%69%64=%30%30%36%37%31%35%38%30%37%34%35%31%%26%69%64=%30%30%36%37%33%30%37%32%34%39%36%34%%26%69%64=%30%30%36%37%39%39%34%39%36%33%36%39%%26%69%64=%30%30%36%37%35%37%31%38%34%37%39%39%%26%69%64=%30%30%36%37%35%36%37%34%33%32%39%30%%26%69%64=%30%30%36%37%39%30%37%35%35%30%36%36%%26%69%64=%30%30%36%37%33%35%37%37%32%34%38%34%%26%69%64=%30%30%36%37%32%30%30%36%36%33%39%33%%26%69%64=%30%30%36%37%32%37%38%30%37%30%31%31%%26%69%64=%30%30%36%37%36%39%33%31%31%34%33%33%%26%69%64=%30%30%36%37%39%35%38%38%32%37%34%39%%26%69%64=%30%30%36%37%33%31%30%36%39%35%36%39%%26%69%64=%30%30%36%37%31%30%35%37%32%37%35%33%%26%69%64=%30%30%36%37%35%31%35%34%30%35%37%37%%26%69%64=%30%30%36%37%35%39%35%34%37%37%31%35%%26%69%64=%30%30%36%37%36%38%39%32%30%34%32%32%%26%69%64=%30%30%36%37%35%37%30%38%31%33%31%31%%26%69%64=%30%30%36%37%32%34%38%32%31%32%38%35%%26%69%64=%30%30%36%37%30%38%33%37%32%38%32%39%%26%69%64=%30%30%36%37%39%38%33%31%35%32%35%32%%26%69%64=%30%30%36%37%33%35%30%38%39%36%36%32%%26%69%64=%30%30%36%37%36%33%38%36%30%37%30%38%%26%69%64=%30%30%36%37%35%34%33%35%35%39%38%31%%26%69%64=%30%30%36%37%39%35%34%34%36%32%31%33%%26%69%64=%30%30%36%37%32%39%33%33%37%34%36%31%%26%69%64=%30%30%36%37%31%34%30%39%38%39%39%35%%26%69%64=%30%30%36%37%31%38%38%36%39%32%33%36%%26%69%64=%30%30%36%37%34%35%30%30%32%38%38%30%%26%69%64=%30%30%36%37%34%36%31%36%39%31%34%38%%26%69%64=%30%30%36%37%30%35%31%32%36%35%34%31%%26%69%64=%30%30%36%37%31%37%30%35%37%30%31%37%%26%69%64=%30%30%36%37%37%30%31%33%38%31%35%37%%26%69%64=%30%30%36%37%35%35%30%36%33%31%31%31%%26%69%64=%30%30%36%37%33%36%36%37%34%35%33%33%%26%69%64=%30%30%36%37%31%30%38%39%33%36%33%34%%26%69%64=%30%30%36%37%36%33%33%35%36%32%39%36%%26%69%64=%30%30%36%37%32%32%31%38%32%39%35%31%%26%69%64=%30%30%36%37%36%34%32%34%36%38%30%35%%26%69%64=%30%30%36%37%32%37%35%38%37%31%31%39%%26%69%64=%30%30%36%37%35%39%31%33%35%38%35%31%%26%69%64=%30%30%36%37%31%39%38%31%38%38%32%38%%26%69%64=%30%30%36%37%33%30%32%31%31%30%31%37%%26%69%64=%30%30%36%37%36%37%34%31%39%34%36%32%%26%69%64=%30%30%36%37%33%32%34%37%37%30%35%31%%26%69%64=%30%30%36%37%38%36%39%33%34%32%35%36%%26%69%64=%30%30%36%37%38%39%32%38%32%32%33%37%%26%69%64=%30%30%36%37%38%30%32%36%33%35%39%32%%26%69%64=%30%30%36%37%35%30%30%38%36%34%34%34%%26%69%64=%30%30%36%37%36%39%34%33%32%32%32%35%%26%69%64=%30%30%36%37%30%30%38%37%39%31%32%36%%26%69%64=%30%30%36%37%33%35%39%36%35%35%31%32%%26%69%64=%30%30%36%37%37%39%38%30%38%34%37%37%%26%69%64=%30%30%36%37%34%39%31%39%35%36%39%36%%26%69%64=%30%30%36%37%37%32%34%38%39%38%36%32%%26%69%64=%30%30%36%37%35%36%36%34%35%32%39%31%%26%69%64=%30%30%36%37%35%36%33%39%31%34%33%31%%26%69%64=%30%30%36%37%39%34%38%36%38%36%34%39%%26%69%64=%30%30%36%37%36%34%37%35%38%30%37%39%%26%69%64=%30%30%36%37%34%38%36%34%33%31%37%30%%26%69%64=%30%30%36%37%38%30%37%33%34%38%37%34%%26%69%64=%30%30%36%37%38%31%32%34%38%36%34%37%%26%69%64=%30%30%36%37%33%31%39%31%30%36%39%32%%26%69%64=%30%30%36%37%30%34%34%39%37%30%32%35%%26%69%64=%30%30%36%37%31%31%38%39%30%39%37%33%%26%69%64=%30%30%36%37%33%31%35%35%33%33%30%36%%26%69%64=%30%30%36%37%38%37%38%36%32%38%33%33%%26%69%64=%30%30%36%37%33%33%35%39%31%38%35%38%%26%69%64=%30%30%36%37%30%36%38%30%30%39%30%31%%26%69%64=%30%30%36%37%36%31%32%37%30%30%37%30%%26%69%64=%30%30%36%37%38%33%34%38%38%33%36%35%%26%69%64=%30%30%36%37%38%32%39%33%33%37%33%30%%26%69%64=%30%30%36%37%38%30%37%39%39%34%31%34%%26%69%64=%30%30%36%37%33%32%38%31%39%33%33%35%%26%69%64=%30%30%36%37%30%34%30%37%33%39%35%37%%26%69%64=%30%30%36%37%33%39%35%32%35%32%36%37%%26%69%64=%30%30%36%37%30%33%38%32%38%34%32%30%%26%69%64=%30%30%36%37%32%31%37%37%31%32%30%35%%26%69%64=%30%30%36%37%35%37%39%33%35%30%38%38%%26%69%64=%30%30%36%37%31%36%35%38%35%37%32%30%%26%69%64=%30%30%36%37%33%30%34%38%31%39%35%37%%26%69%64=%30%30%36%37%35%33%38%35%39%35%34%32%%26%69%64=%30%30%36%37%39%30%39%33%36%35%36%30%%26%69%64=%30%30%36%37%33%30%39%32%32%38%36%32%%26%69%64=%30%30%36%37%37%30%31%35%37%31%38%36%%26%69%64=%30%30%36%37%32%30%34%36%31%34%30%34%%26%69%64=%30%30%36%37%37%39%35%35%35%32%39%30%%26%69%64=%30%30%36%37%33%34%38%36%37%35%33%31%%26%69%64=%30%30%36%37%32%32%33%39%32%34%30%36%%26%69%64=%30%30%36%37%30%32%36%39%30%33%30%36%%26%69%64=%30%30%36%37%31%30%33%37%36%35%37%30%%26%69%64=%30%30%36%37%39%39%35%30%37%31%30%32%%26%69%64=%30%30%36%37%39%39%37%30%35%31%38%31%%26%69%64=%30%30%36%37%33%39%32%37%37%30%34%39%%26%69%64=%30%30%36%37%35%34%38%38%37%32%36%35%%26%69%64=%30%30%36%37%33%38%39%37%36%34%35%37%%26%69%64=%30%30%36%37%38%38%30%39%32%35%38%34%%26%69%64=%30%30%36%37%31%32%31%33%38%37%36%38%%26%69%64=%30%30%36%37%30%30%39%30%30%36%37%35%%26%69%64=%30%30%36%37%30%38%32%39%32%39%36%32%%26%69%64=%30%30%36%37%34%31%30%39%38%30%38%34%%26%69%64=%30%30%36%37%35%30%34%38%34%37%34%36%%26%69%64=%30%30%36%37%33%35%33%30%31%34%30%31%%26%69%64=%30%30%36%37%33%32%36%30%30%37%30%30%%26%69%64=%30%30%36%37%32%35%36%32%38%30%35%34%%26%69%64=%30%30%36%37%35%37%37%31%39%37%37%39%%26%69%64=%30%30%36%37%36%39%33%37%34%30%34%37%%26%69%64=%30%30%36%37%30%35%38%34%35%39%30%37%%26%69%64=%30%30%36%37%32%36%36%36%37%39%35%30%%26%69%64=%30%30%36%37%36%30%39%32%33%31%39%37%%26%69%64=%30%30%36%37%34%30%31%36%36%38%35%32%%26%69%64=%30%30%36%37%38%31%39%33%34%37%37%35%%26%69%64=%30%30%36%37%31%34%38%31%37%31%31%30%%26%69%64=%30%30%36%37%34%37%34%38%31%38%37%34%%26%69%64=%30%30%36%37%34%32%37%34%38%35%32%33%%26%69%64=%30%30%36%37%30%30%38%33%32%35%33%35%%26%69%64=%30%30%36%37%37%34%33%38%39%31%36%35%%26%69%64=%30%30%36%37%34%32%36%30%37%30%32%33%%26%69%64=%30%30%36%37%37%36%37%36%35%33%35%39%%26%69%64=%30%30%36%37%31%32%34%36%30%38%37%37%%26%69%64=%30%30%36%37%33%30%39%32%35%34%34%32%%26%69%64=%30%30%36%37%30%39%32%31%31%31%34%39%%26%69%64=%30%30%36%37%37%31%34%39%33%35%36%31%%26%69%64=%30%30%36%37%37%36%37%38%35%37%34%32%%26%69%64=%30%30%36%37%34%33%35%38%32%35%33%34%%26%69%64=%30%30%36%37%33%37%36%34%31%31%36%36%%26%69%64=%30%30%36%37%33%36%34%35%32%38%38%33%%26%69%64=%30%30%36%37%38%33%32%30%38%34%39%33%%26%69%64=%30%30%36%37%31%38%36%33%34%31%37%37%%26%69%64=%30%30%36%37%34%33%36%33%33%30%37%34%%26%69%64=%30%30%36%37%32%38%36%37%31%34%38%30%%26%69%64=%30%30%36%37%30%37%39%38%32%30%33%39%%26%69%64=%30%30%36%37%37%34%35%33%38%38%32%38%%26%69%64=%30%30%36%37%33%35%37%31%38%38%33%33%%26%69%64=%30%30%36%37%35%31%35%35%38%30%36%38%%26%69%64=%30%30%36%37%39%30%37%36%30%37%33%32%%26%69%64=%30%30%36%37%38%39%30%35%35%39%31%35%%26%69%64=%30%30%36%37%35%38%31%36%32%38%36%31%%26%69%64=%30%30%36%37%33%37%33%38%37%31%34%34%%26%69%64=%30%30%36%37%36%36%34%33%31%34%36%39%%26%69%64=%30%30%36%37%35%33%30%30%39%32%38%31%%26%69%64=%30%30%36%37%37%36%30%36%39%35%39%38%%26%69%64=%30%30%36%37%35%38%33%37%33%36%38%38%%26%69%64=%30%30%36%37%33%32%31%37%37%30%34%37%%26%69%64=%30%30%36%37%39%30%34%30%39%37%39%37%%26%69%64=%30%30%36%37%33%32%36%34%35%31%34%32%%26%69%64=%30%30%36%37%39%30%32%37%31%30%39%39%%26%69%64=%30%30%36%37%38%32%34%37%38%32%35%33%%26%69%64=%30%30%36%37%39%38%31%35%36%34%36%30%%26%69%64=%30%30%36%37%35%39%36%38%31%35%37%34%%26%69%64=%30%30%36%37%33%32%33%38%31%33%39%33%%26%69%64=%30%30%36%37%37%39%38%39%31%39%38%30%%26%69%64=%30%30%36%37%31%32%39%38%33%31%33%35%%26%69%64=%30%30%36%37%32%32%35%35%32%36%39%32%%26%69%64=%30%30%36%37%37%35%30%31%30%36%31%32%%26%69%64=%30%30%36%37%32%38%38%39%39%35%32%36%%26%69%64=%30%30%36%37%30%32%39%32%34%31%34%30%%26%69%64=%30%30%36%37%38%31%33%30%39%34%39%36%%26%69%64=%30%30%36%37%30%34%33%36%32%32%33%36%%26%69%64=%30%30%36%37%33%33%36%37%30%30%33%37%%26%69%64=%30%30%36%37%38%34%32%31%33%36%32%30%%26%69%64=%30%30%36%37%33%38%33%37%34%37%32%32%%26%69%64=%30%30%36%37%32%30%39%37%33%35%31%39%%26%69%64=%30%30%36%37%34%39%38%35%34%30%36%37%%26%69%64=%30%30%36%37%36%33%33%36%33%33%35%34%%26%69%64=%30%30%36%37%39%30%33%36%32%31%36%30%%26%69%64=%30%30%36%37%35%31%32%39%31%39%32%37%%26%69%64=%30%30%36%37%30%31%30%39%36%37%32%35%%26%69%64=%30%30%36%37%36%33%32%36%30%35%30%38%%26%69%64=%30%30%36%37%32%33%34%39%39%37%38%32%%26%69%64=%30%30%36%37%38%39%39%36%35%36%38%37%%26%69%64=%30%30%36%37%32%32%36%33%32%31%38%34%%26%69%64=%30%30%36%37%30%35%36%36%30%39%36%38%%26%69%64=%30%30%36%37%35%35%38%37%32%36%31%38%%26%69%64=%30%30%36%37%32%32%32%32%32%31%31%34%%26%69%64=%30%30%36%37%32%37%37%35%36%38%34%38%%26%69%64=%30%30%36%37%33%30%36%39%38%32%31%35%%26%69%64=%30%30%36%37%35%35%30%35%30%31%38%38%%26%69%64=%30%30%36%37%36%36%38%32%38%34%33%32%%26%69%64=%30%30%36%37%31%37%36%37%36%30%31%34%%26%69%64=%30%30%36%37%31%37%37%34%32%34%32%37%%26%69%64=%30%30%36%37%37%31%30%39%39%37%34%33%%26%69%64=%30%30%36%37%31%31%38%38%38%32%30%37%%26%69%64=%30%30%36%37%32%36%34%34%30%32%30%33%%26%69%64=%30%30%36%37%33%34%31%35%34%30%31%39%%26%69%64=%30%30%36%37%36%37%37%33%37%37%38%34%%26%69%64=%30%30%36%37%34%31%34%38%33%30%36%30%%26%69%64=%30%30%36%37%37%35%35%31%37%31%30%31%%26%69%64=%30%30%36%37%36%37%34%35%30%33%39%39%%26%69%64=%30%30%36%37%30%33%33%34%34%35%32%39%%26%69%64=%30%30%36%37%34%34%38%31%38%37%30%38%%26%69%64=%30%30%36%37%37%36%33%34%31%38%31%37%%26%69%64=%30%30%36%37%38%33%39%36%30%35%37%39%%26%69%64=%30%30%36%37%36%39%31%35%35%38%31%33%%26%69%64=%30%30%36%37%39%38%38%33%37%36%32%39%%26%69%64=%30%30%36%37%31%34%31%38%31%38%31%34%%26%69%64=%30%30%36%37%35%36%39%30%39%32%33%37%%26%69%64=%30%30%36%37%33%32%33%32%37%35%37%32%%26%69%64=%30%30%36%37%37%30%32%30%37%30%39%35%%26%69%64=%30%30%36%37%33%32%37%36%30%36%33%36%%26%69%64=%30%30%36%37%30%35%36%30%38%39%37%32%%26%69%64=%30%30%36%37%36%34%34%32%39%32%35%36%%26%69%64=%30%30%36%37%34%32%37%31%32%38%33%37%%26%69%64=%30%30%36%37%39%34%37%30%37%30%31%37%%26%69%64=%30%30%36%37%36%36%35%34%36%30%37%35%%26%69%64=%30%30%36%37%32%36%39%39%38%32%38%32%%26%69%64=%30%30%36%37%35%30%33%36%37%36%33%32%%26%69%64=%30%30%36%37%38%36%38%39%34%35%36%38%%26%69%64=%30%30%36%37%32%39%35%31%37%37%30%30%%26%69%64=%30%30%36%37%30%30%38%36%30%32%37%32%%26%69%64=%30%30%36%37%38%37%37%37%37%37%39%33%%26%69%64=%30%30%36%37%31%34%31%31%36%36%39%31%%26%69%64=%30%30%36%37%34%34%34%30%32%33%30%31%%26%69%64=%30%30%36%37%34%39%35%30%32%34%38%33%%26%69%64=%30%30%36%37%38%32%34%34%32%34%33%31%%26%69%64=%30%30%36%37%38%34%32%31%33%36%34%36%%26%69%64=%30%30%36%37%37%33%36%39%39%35%30%31%%26%69%64=%30%30%36%37%37%38%35%35%34%39%31%30%%26%69%64=%30%30%36%37%36%32%30%35%38%30%34%32%%26%69%64=%30%30%36%37%37%38%36%32%31%39%39%35%%26%69%64=%30%30%36%37%36%35%34%31%33%39%30%31%%26%69%64=%30%30%36%37%39%31%32%34%39%39%39%39%%26%69%64=%30%30%36%37%31%37%34%34%39%38%38%37%%26%69%64=%30%30%36%37%38%32%33%34%32%32%36%39%%26%69%64=%30%30%36%37%38%37%38%30%39%30%35%34%%26%69%64=%30%30%36%37%35%35%37%30%30%36%37%34%%26%69%64=%30%30%36%37%34%30%37%30%36%33%38%38%%26%69%64=%30%30%36%37%35%37%34%37%34%30%38%36%%26%69%64=%30%30%36%37%34%30%37%31%35%33%36%37%%26%69%64=%30%30%36%37%30%31%34%30%35%30%34%32%%26%69%64=%30%30%36%37%34%39%32%33%39%30%36%33%%26%69%64=%30%30%36%37%32%31%34%35%38%30%37%32%%26%69%64=%30%30%36%37%34%34%32%32%39%32%31%39%%26%69%64=%30%30%36%37%35%36%31%30%38%35%31%33%%26%69%64=%30%30%36%37%32%31%37%33%35%32%32%33%%26%69%64=%30%30%36%37%34%32%30%31%32%38%37%32%%26%69%64=%30%30%36%37%34%32%38%34%37%36%38%33%%26%69%64=%30%30%36%37%33%35%34%34%36%37%36%32%%26%69%64=%30%30%36%37%37%38%39%31%34%31%30%36%%26%69%64=%30%30%36%37%38%34%34%30%38%31%39%37%%26%69%64=%30%30%36%37%37%30%37%30%30%31%32%37%%26%69%64=%30%30%36%37%39%38%30%39%36%35%34%30%%26%69%64=%30%30%36%37%38%32%33%33%34%35%34%33%%26%69%64=%30%30%36%37%33%35%30%36%39%36%39%30%%26%69%64=%30%30%36%37%37%33%38%34%37%30%32%33%%26%69%64=%30%30%36%37%35%39%30%36%39%32%32%33%%26%69%64=%30%30%36%37%35%31%31%30%35%39%37%36%%26%69%64=%30%30%36%37%31%31%32%34%39%33%35%38%%26%69%64=%30%30%36%37%32%34%35%30%30%38%30%34%%26%69%64=%30%30%36%37%34%38%34%35%39%32%39%35%%26%69%64=%30%30%36%37%30%37%32%32%37%37%32%33%%26%69%64=%30%30%36%37%33%36%36%32%34%33%30%37%%26%69%64=%30%30%36%37%30%39%37%34%34%38%33%39%%26%69%64=%30%30%36%37%32%33%33%34%32%30%33%33%%26%69%64=%30%30%36%37%30%38%32%39%39%33%38%35%%26%69%64=%30%30%36%37%33%39%39%31%37%34%34%32%%26%69%64=%30%30%36%37%35%32%35%38%36%34%32%39%%26%69%64=%30%30%36%37%32%31%36%34%35%33%39%36%%26%69%64=%30%30%36%37%32%37%34%39%31%33%31%30%%26%69%64=%30%30%36%37%37%34%32%34%33%36%37%39%%26%69%64=%30%30%36%37%33%33%33%35%36%35%31%31%%26%69%64=%30%30%36%37%30%37%35%39%32%30%32%34%%26%69%64=%30%30%36%37%33%30%37%32%38%35%37%35%%26%69%64=%30%30%36%37%30%37%36%39%35%36%39%36%%26%69%64=%30%30%36%37%34%38%37%39%31%39%36%35%%26%69%64=%30%30%36%37%32%34%34%30%35%37%38%38%%26%69%64=%30%30%36%37%37%38%36%34%33%34%35%34%%26%69%64=%30%30%36%37%37%30%39%33%34%31%32%30%%26%69%64=%30%30%36%37%35%36%30%35%37%33%37%32%%26%69%64=%30%30%36%37%34%34%31%34%35%36%35%37%%26%69%64=%30%30%36%37%38%34%36%35%30%38%32%39%%26%69%64=%30%30%36%37%33%32%37%32%31%34%39%31%%26%69%64=%30%30%36%37%32%30%36%37%37%36%37%32%%26%69%64=%30%30%36%37%35%36%39%37%38%36%38%39%%26%69%64=%30%30%36%37%39%30%38%35%33%34%37%34%%26%69%64=%30%30%36%37%35%31%35%34%31%37%33%32%%26%69%64=%30%30%36%37%36%35%33%33%36%34%34%30%%26%69%64=%30%30%36%37%30%38%35%36%33%36%37%34%%26%69%64=%30%30%36%37%33%36%39%33%33%35%34%38%%26%69%64=%30%30%36%37%33%36%37%35%36%36%37%33%%26%69%64=%30%30%36%37%30%33%38%31%37%36%32%39%%26%69%64=%30%30%36%37%39%30%38%35%38%32%32%30%%26%69%64=%30%30%36%37%36%38%35%37%34%35%38%32%%26%69%64=%30%30%36%37%30%39%30%35%33%32%34%39%%26%69%64=%30%30%36%37%39%30%34%38%38%33%39%31%%26%69%64=%30%30%36%37%37%37%35%37%38%33%37%34%%26%69%64=%30%30%36%37%32%38%33%37%37%38%35%30%%26%69%64=%30%30%36%37%30%35%30%36%36%33%33%37%%26%69%64=%30%30%36%37%34%33%31%35%36%39%37%33%%26%69%64=%30%30%36%37%34%36%34%36%32%32%39%38%%26%69%64=%30%30%36%37%35%32%31%39%37%30%33%34%%26%69%64=%30%30%36%37%36%32%39%33%34%33%39%30%%26%69%64=%30%30%36%37%30%30%39%38%39%36%39%36%%26%69%64=%30%30%36%37%38%38%35%34%39%31%33%35%%26%69%64=%30%30%36%37%33%31%30%36%30%37%35%30%%26%69%64=%30%30%36%37%39%34%31%35%39%39%31%30%%26%69%64=%30%30%36%37%38%34%37%39%35%31%31%38%%26%69%64=%30%30%36%37%35%35%34%30%39%38%36%32%%26%69%64=%30%30%36%37%31%35%33%36%35%39%35%30%%26%69%64=%30%30%36%37%31%39%33%33%38%35%34%36%%26%69%64=%30%30%36%37%35%39%32%33%39%34%30%34%%26%69%64=%30%30%36%37%38%33%35%36%39%31%32%39%%26%69%64=%30%30%36%37%30%33%37%38%32%37%31%35%%26%69%64=%30%30%36%37%34%36%38%32%34%35%37%39%%26%69%64=%30%30%36%37%30%31%37%34%32%35%34%37%%26%69%64=%30%30%36%37%38%30%37%33%33%39%37%39%%26%69%64=%30%30%36%37%33%31%36%30%39%33%39%38%%26%69%64=%30%30%36%37%36%32%33%31%32%38%32%31%%26%69%64=%30%30%36%37%30%31%39%32%38%30%37%39%%26%69%64=%30%30%36%37%38%30%36%35%37%30%33%33%%26%69%64=%30%30%36%37%34%32%39%36%37%38%30%35%%26%69%64=%30%30%36%37%33%31%30%33%37%33%30%32%%26%69%64=%30%30%36%37%38%32%31%39%34%39%36%36%%26%69%64=%30%30%36%37%35%39%38%33%31%38%36%36%%26%69%64=%30%30%36%37%36%39%38%33%37%32%36%39%%26%69%64=%30%30%36%37%36%39%35%31%31%33%33%36%%26%69%64=%30%30%36%37%35%36%39%34%31%31%38%39%%26%69%64=%30%30%36%37%33%33%31%39%34%32%37%32%%26%69%64=%30%30%36%37%37%31%33%36%38%39%35%36%%26%69%64=%30%30%36%37%38%34%38%31%36%39%36%35%%26%69%64=%30%30%36%37%34%32%30%30%31%37%36%33%%26%69%64=%30%30%36%37%34%35%37%30%32%31%31%32%%26%69%64=%30%30%36%37%33%38%30%39%37%38%33%30%%26%69%64=%30%30%36%37%32%34%39%30%30%39%39%33%%26%69%64=%30%30%36%37%37%33%37%37%37%32%33%36%%26%69%64=%30%30%36%37%34%36%35%30%31%39%37%31%%26%69%64=%30%30%36%37%35%34%33%36%38%37%37%34%%26%69%64=%30%30%36%37%30%37%33%36%31%39%38%34%%26%69%64=%30%30%36%37%32%33%31%39%30%39%34%34%%26%69%64=%30%30%36%37%34%36%32%38%32%36%38%33%%26%69%64=%30%30%36%37%30%39%38%33%30%33%38%37%%26%69%64=%30%30%36%37%35%30%34%34%39%39%30%31%%26%69%64=%30%30%36%37%30%39%35%30%30%38%34%31%%26%69%64=%30%30%36%37%31%33%38%35%39%39%36%33%%26%69%64=%30%30%36%37%33%33%36%31%33%37%39%36%%26%69%64=%30%30%36%37%36%39%32%34%31%30%38%38%%26%69%64=%30%30%36%37%39%31%35%31%31%38%38%34%%26%69%64=%30%30%36%37%32%35%38%36%34%39%37%38%%26%69%64=%30%30%36%37%34%33%35%32%30%36%37%34%%26%69%64=%30%30%36%37%35%37%37%34%38%39%39%38%%26%69%64=%30%30%36%37%37%39%31%36%36%31%39%36%%26%69%64=%30%30%36%37%39%36%35%38%33%36%36%38%%26%69%64=%30%30%36%37%38%38%38%34%31%32%32%33%%26%69%64=%30%30%36%37%32%35%33%39%30%39%39%35%%26%69%64=%30%30%36%37%31%38%34%31%33%31%39%38%%26%69%64=%30%30%36%37%38%36%38%38%39%32%36%30%%26%69%64=%30%30%36%37%30%34%31%36%34%36%38%37%%26%69%64=%30%30%36%37%36%30%32%30%31%33%33%38%%26%69%64=%30%30%36%37%37%36%37%38%37%38%30%37%%26%69%64=%30%30%36%37%32%36%35%33%36%34%35%30%%26%69%64=%30%30%36%37%33%39%33%38%38%36%39%33%%26%69%64=%30%30%36%37%38%33%30%32%34%32%32%30%%26%69%64=%30%30%36%37%34%34%37%39%34%35%39%30%%26%69%64=%30%30%36%37%37%31%30%30%37%37%37%37%%26%69%64=%30%30%36%37%35%32%30%35%33%39%30%38%%26%69%64=%30%30%36%37%31%33%37%37%31%30%39%37%%26%69%64=%30%30%36%37%39%32%36%37%32%34%32%31%%26%69%64=%30%30%36%37%30%37%38%36%32%33%37%34%%26%69%64=%30%30%36%37%38%37%30%34%31%38%31%39%%26%69%64=%30%30%36%37%32%36%30%39%39%37%31%37%%26%69%64=%30%30%36%37%34%37%39%36%39%33%39%35%%26%69%64=%30%30%36%37%34%31%39%34%37%33%38%37%%26%69%64=%30%30%36%37%30%38%31%37%31%34%34%31%%26%69%64=%30%30%36%37%35%32%39%39%34%32%32%36%%26%69%64=%30%30%36%37%36%37%38%38%38%30%36%37%%26%69%64=%30%30%36%37%32%34%35%36%31%34%33%39%%26%69%64=%30%30%36%37%38%37%38%37%35%30%38%33%%26%69%64=%30%30%36%37%32%38%36%34%34%35%35%30%%26%69%64=%30%30%36%37%38%37%31%37%39%32%33%39%%26%69%64=%30%30%36%37%35%30%34%30%33%35%38%36%%26%69%64=%30%30%36%37%30%39%30%35%35%31%39%32%%26%69%64=%30%30%36%37%34%32%33%38%37%32%32%30%%26%69%64=%30%30%36%37%36%33%36%38%30%32%33%33%%26%69%64=%30%30%36%37%33%39%35%35%34%37%34%32%%26%69%64=%30%30%36%37%31%32%37%37%34%32%32%30%%26%69%64=%30%30%36%37%34%37%38%31%35%35%35%33%%26%69%64=%30%30%36%37%30%38%36%37%38%32%33%30%%26%69%64=%30%30%36%37%39%31%37%38%32%35%35%33%%26%69%64=%30%30%36%37%38%34%37%30%34%31%33%39%%26%69%64=%30%30%36%37%36%36%33%33%36%35%33%35%%26%69%64=%30%30%36%37%38%38%39%39%30%30%32%36%%26%69%64=%30%30%36%37%33%30%31%32%38%34%32%31%%26%69%64=%30%30%36%37%32%31%32%38%31%38%36%38%%26%69%64=%30%30%36%37%39%32%32%35%35%34%35%35%%26%69%64=%30%30%36%37%37%37%30%35%36%30%35%32%%26%69%64=%30%30%36%37%35%30%36%37%37%37%38%39%%26%69%64=%30%30%36%37%34%31%32%30%32%39%39%39%%26%69%64=%30%30%36%37%35%36%36%37%32%35%32%38%%26%69%64=%30%30%36%37%39%32%36%37%37%37%38%37%%26%69%64=%30%30%36%37%37%37%33%38%33%39%31%37%%26%69%64=%30%30%36%37%34%37%30%32%31%32%38%37%%26%69%64=%30%30%36%37%37%33%30%31%33%38%33%35%%26%69%64=%30%30%36%37%35%31%39%38%34%33%34%33%%26%69%64=%30%30%36%37%36%38%39%31%34%36%36%34%%26%69%64=%30%30%36%37%38%37%39%35%37%36%31%31%%26%69%64=%30%30%36%37%33%39%39%34%37%30%36%35%%26%69%64=%30%30%36%37%38%35%31%35%34%36%36%33%%26%69%64=%30%30%36%37%36%38%37%37%39%34%32%31%%26%69%64=%30%30%36%37%39%39%34%37%38%33%30%39%%26%69%64=%30%30%36%37%36%30%36%36%30%33%37%31%%26%69%64=%30%30%36%37%32%36%31%30%38%37%33%30%%26%69%64=%30%30%36%37%35%31%30%38%33%32%38%37%%26%69%64=%30%30%36%37%34%33%37%31%32%33%35%39%%26%69%64=%30%30%36%37%39%33%35%31%38%31%33%38%%26%69%64=%30%30%36%37%33%35%34%31%37%33%32%37%%26%69%64=%30%30%36%37%35%35%38%31%30%34%31%32%%26%69%64=%30%30%36%37%37%39%35%36%37%31%32%37%%26%69%64=%30%30%36%37%30%33%30%31%34%32%37%31%%26%69%64=%30%30%36%37%36%35%32%32%37%32%36%31%%26%69%64=%30%30%36%37%33%37%32%37%31%36%33%32%%26%69%64=%30%30%36%37%30%31%37%30%33%39%37%39%%26%69%64=%30%30%36%37%31%32%36%39%35%34%34%39%%26%69%64=%30%30%36%37%33%30%32%33%39%30%32%32%%26%69%64=%30%30%36%37%33%30%30%30%37%31%34%32%%26%69%64=%30%30%36%37%39%38%37%31%30%36%34%33%%26%69%64=%30%30%36%37%33%36%34%38%32%35%35%36%%26%69%64=%30%30%36%37%38%34%30%39%30%35%31%30%%26%69%64=%30%30%36%37%31%36%39%38%38%38%31%39%%26%69%64=%30%30%36%37%32%33%37%37%34%36%38%30%%26%69%64=%30%30%36%37%38%31%36%31%37%38%32%33%%26%69%64=%30%30%36%37%32%34%35%30%35%38%34%36%%26%69%64=%30%30%36%37%31%32%37%38%35%38%32%36%%26%69%64=%30%30%36%37%33%35%36%39%31%32%31%35%%26%69%64=%30%30%36%37%34%36%35%35%30%31%35%31%%26%69%64=%30%30%36%37%33%35%36%33%34%34%39%38%%26%69%64=%30%30%36%37%38%37%38%31%39%31%36%30%%26%69%64=%30%30%36%37%36%37%37%30%34%36%39%36%%26%69%64=%30%30%36%37%35%36%34%30%38%31%35%35%%26%69%64=%30%30%36%37%33%39%30%39%35%30%34%30%%26%69%64=%30%30%36%37%32%39%34%33%35%33%34%30%%26%69%64=%30%30%36%37%37%33%35%31%39%30%37%36%%26%69%64=%30%30%36%37%35%33%32%33%31%35%31%37%%26%69%64=%30%30%36%37%33%39%34%34%34%31%31%36%%26%69%64=%30%30%36%37%38%33%31%32%31%38%34%37%%26%69%64=%30%30%36%37%30%37%37%30%36%34%35%34%%26%69%64=%30%30%36%37%32%31%36%37%35%34%37%35%%26%69%64=%30%30%36%37%39%30%37%34%39%36%30%30%%26%69%64=%30%30%36%37%33%37%39%35%33%34%34%36%%26%69%64=%30%30%36%37%39%30%38%33%31%36%37%39%%26%69%64=%30%30%36%37%39%36%36%35%33%32%30%34%%26%69%64=%30%30%36%37%31%35%39%34%36%32%30%36%%26%69%64=%30%30%36%37%30%37%31%38%33%34%35%39%%26%69%64=%30%30%36%37%31%36%34%32%39%32%33%35%%26%69%64=%30%30%36%37%36%31%32%39%32%38%34%34%%26%69%64=%30%30%36%37%38%31%31%32%35%33%39%37%%26%69%64=%30%30%36%37%36%31%33%36%30%33%35%33%%26%69%64=%30%30%36%37%31%36%33%35%38%35%31%30%%26%69%64=%30%30%36%37%36%38%31%33%35%38%38%34%%26%69%64=%30%30%36%37%37%30%30%38%36%31%36%34%%26%69%64=%30%30%36%37%33%33%37%35%31%37%32%35%%26%69%64=%30%30%36%37%32%35%33%37%32%38%30%34%%26%69%64=%30%30%36%37%39%32%39%30%39%30%34%34%%26%69%64=%30%30%36%37%38%30%32%37%34%35%39%30%%26%69%64=%30%30%36%37%31%33%34%37%30%38%39%31%%26%69%64=%30%30%36%37%31%38%31%36%32%34%37%37%%26%69%64=%30%30%36%37%38%35%31%33%36%31%32%31%%26%69%64=%30%30%36%37%32%32%35%38%38%38%37%32%%26%69%64=%30%30%36%37%31%39%31%31%30%34%38%34%%26%69%64=%30%30%36%37%30%36%30%30%34%38%30%37%%26%69%64=%30%30%36%37%36%37%33%38%30%38%37%37%%26%69%64=%30%30%36%37%39%33%37%36%31%39%36%30%%26%69%64=%30%30%36%37%36%36%32%38%33%36%30%38%%26%69%64=%30%30%36%37%31%37%34%34%39%33%38%32%%26%69%64=%30%30%36%37%31%36%38%33%35%30%37%39%%26%69%64=%30%30%36%37%31%30%32%38%31%37%34%36%%26%69%64=%30%30%36%37%33%33%33%36%34%30%36%38%%26%69%64=%30%30%36%37%36%36%32%38%36%37%34%33%%26%69%64=%30%30%36%37%34%31%37%34%30%38%32%36%%26%69%64=%30%30%36%37%39%35%34%31%31%33%39%39%%26%69%64=%30%30%36%37%33%31%36%33%34%34%30%35%%26%69%64=%30%30%36%37%37%37%32%33%33%32%38%36%%26%69%64=%30%30%36%37%33%30%33%38%33%37%37%32%%26%69%64=%30%30%36%37%34%33%32%30%33%36%36%31%%26%69%64=%30%30%36%37%33%32%30%39%30%38%34%35%%26%69%64=%30%30%36%37%35%36%31%32%35%33%35%33%%26%69%64=%30%30%36%37%39%31%32%35%39%36%37%37%%26%69%64=%30%30%36%37%34%31%39%35%32%36%39%33%%26%69%64=%30%30%36%37%35%33%38%32%35%36%31%39%%26%69%64=%30%30%36%37%34%32%32%33%33%36%37%38%%26%69%64=%30%30%36%37%36%36%34%39%37%31%38%32%%26%69%64=%30%30%36%37%36%32%32%39%36%36%34%31%%26%69%64=%30%30%36%37%32%32%38%38%33%30%36%38%%26%69%64=%30%30%36%37%34%38%31%39%30%30%38%39%%26%69%64=%30%30%36%37%39%38%39%39%32%35%36%31%%26%69%64=%30%30%36%37%32%36%35%39%32%37%39%36%%26%69%64=%30%30%36%37%36%36%32%35%35%36%31%34%%26%69%64=%30%30%36%37%37%33%30%33%35%30%34%39%%26%69%64=%30%30%36%37%36%37%39%39%39%38%39%37%%26%69%64=%30%30%36%37%39%39%39%32%34%35%35%30%%26%69%64=%30%30%36%37%33%33%32%37%39%30%35%30%%26%69%64=%30%30%36%37%31%35%38%37%39%37%33%37%%26%69%64=%30%30%36%37%39%34%35%36%32%34%30%34%%26%69%64=%30%30%36%37%39%33%37%37%39%39%38%36%%26%69%64=%30%30%36%37%31%31%36%30%30%32%34%30%%26%69%64=%30%30%36%37%30%33%35%34%34%34%34%39%%26%69%64=%30%30%36%37%32%30%39%35%36%34%32%33%%26%69%64=%30%30%36%37%33%33%35%33%31%36%39%33%%26%69%64=%30%30%36%37%38%36%36%33%36%38%32%39%%26%69%64=%30%30%36%37%33%33%33%37%33%35%32%36%%26%69%64=%30%30%36%37%30%33%31%30%33%31%38%30%%26%69%64=%30%30%36%37%37%33%35%32%31%37%38%36%%26%69%64=%30%30%36%37%39%33%39%38%35%33%38%39%%26%69%64=%30%30%36%37%39%31%31%39%32%31%30%34%%26%69%64=%30%30%36%37%33%38%34%35%34%30%30%36%%26%69%64=%30%30%36%37%39%39%31%38%32%37%32%30%%26%69%64=%30%30%36%37%39%32%32%34%30%30%31%32%%26%69%64=%30%30%36%37%32%30%33%35%33%32%31%33%%26%69%64=%30%30%36%37%37%37%38%34%31%35%32%39%%26%69%64=%30%30%36%37%34%39%34%35%34%37%38%31%%26%69%64=%30%30%36%37%37%36%36%33%32%34%36%38%%26%69%64=%30%30%36%37%33%37%39%39%34%33%32%37%%26%69%64=%30%30%36%37%39%31%34%36%36%35%39%34%%26%69%64=%30%30%36%37%30%39%34%31%35%37%31%33%%26%69%64=%30%30%36%37%37%31%38%31%30%36%34%39%%26%69%64=%30%30%36%37%34%36%36%38%33%38%32%36%%26%69%64=%30%30%36%37%36%37%38%31%30%31%32%33%%26%69%64=%30%30%36%37%31%35%36%31%34%32%34%38%%26%69%64=%30%30%36%37%31%35%34%37%30%35%36%31%%26%69%64=%30%30%36%37%34%38%31%32%37%38%34%38%%26%69%64=%30%30%36%37%31%32%32%37%30%39%30%37%%26%69%64=%30%30%36%37%37%33%39%33%31%30%38%35%%26%69%64=%30%30%36%37%30%34%31%34%38%39%38%36%%26%69%64=%30%30%36%37%38%31%36%38%31%38%33%39%%26%69%64=%30%30%36%37%38%38%34%38%34%30%30%32%%26%69%64=%30%30%36%37%33%34%31%35%31%38%35%39%%26%69%64=%30%30%36%37%37%37%37%30%38%34%32%34%%26%69%64=%30%30%36%37%36%39%36%36%39%34%33%36%%26%69%64=%30%30%36%37%34%30%30%31%38%39%39%37%%26%69%64=%30%30%36%37%32%34%34%39%34%33%37%35%%26%69%64=%30%30%36%37%35%38%33%38%36%34%30%37%%26%69%64=%30%30%36%37%35%35%31%39%35%32%33%39%%26%69%64=%30%30%36%37%36%38%39%39%33%35%37%38%%26%69%64=%30%30%36%37%35%39%31%30%36%33%33%34%%26%69%64=%30%30%36%37%34%39%30%35%38%34%38%35%%26%69%64=%30%30%36%37%31%37%37%36%37%37%36%31%%26%69%64=%30%30%36%37%39%37%34%34%34%35%39%38%%26%69%64=%30%30%36%37%33%39%33%34%32%34%37%38%%26%69%64=%30%30%36%37%39%30%34%32%32%38%32%36%%26%69%64=%30%30%36%37%39%34%37%37%31%34%38%38%%26%69%64=%30%30%36%37%32%35%34%37%39%37%31%38%%26%69%64=%30%30%36%37%34%36%38%32%39%39%31%39%%26%69%64=%30%30%36%37%30%33%33%33%31%36%34%33%%26%69%64=%30%30%36%37%38%38%38%37%30%31%34%38%%26%69%64=%30%30%36%37%33%31%33%31%36%39%39%31%%26%69%64=%30%30%36%37%34%36%33%34%31%30%35%38%%26%69%64=%30%30%36%37%32%33%38%35%35%36%36%38%%26%69%64=%30%30%36%37%30%39%39%30%35%30%39%31%%26%69%64=%30%30%36%37%39%37%35%30%36%37%38%33%%26%69%64=%30%30%36%37%30%31%31%37%32%33%32%37%%26%69%64=%30%30%36%37%34%30%38%35%33%37%38%34%%26%69%64=%30%30%36%37%30%36%34%30%31%33%38%31%%26%69%64=%30%30%36%37%30%35%34%34%30%36%37%34%%26%69%64=%30%30%36%37%30%36%34%31%37%39%30%33%%26%69%64=%30%30%36%37%37%36%36%34%31%37%34%38%%26%69%64=%30%30%36%37%39%32%30%36%38%37%36%31%%26%69%64=%30%30%36%37%36%32%39%31%39%31%39%34%%26%69%64=%30%30%36%37%31%34%34%37%37%39%36%38%%26%69%64=%30%30%36%37%38%34%31%32%38%30%36%30%%26%69%64=%30%30%36%37%31%33%38%38%35%30%30%37%%26%69%64=%30%30%36%37%34%32%35%35%31%35%32%32%%26%69%64=%30%30%36%37%32%37%32%39%36%30%35%37%%26%69%64=%30%30%36%37%31%37%36%37%35%32%32%31%%26%69%64=%30%30%36%37%31%32%39%36%38%32%30%31%%26%69%64=%30%30%36%37%39%32%34%35%35%38%39%37%%26%69%64=%30%30%36%37%32%34%39%39%39%32%30%30%%26%69%64=%30%30%36%37%34%34%36%32%35%36%30%39%%26%69%64=%30%30%36%37%32%32%34%34%39%36%32%37%%26%69%64=%30%30%36%37%34%31%34%30%31%31%35%32%%26%69%64=%30%30%36%37%31%32%36%38%36%34%35%34%%26%69%64=%30%30%36%37%34%34%30%39%32%39%31%38%%26%69%64=%30%30%36%37%38%37%33%37%39%30%33%34%%26%69%64=%30%30%36%37%30%39%32%32%35%33%31%30%%26%69%64=%30%30%36%37%33%33%32%38%39%38%37%30%%26%69%64=%30%30%36%37%38%32%35%37%31%38%33%33%%26%69%64=%30%30%36%37%33%39%39%39%35%33%39%32%%26%69%64=%30%30%36%37%38%39%30%33%39%30%35%36%%26%69%64=%30%30%36%37%38%35%32%38%37%38%38%31%%26%69%64=%30%30%36%37%38%36%38%33%31%32%34%31%%26%69%64=%30%30%36%37%31%38%34%36%32%38%37%33%%26%69%64=%30%30%36%37%37%30%34%33%38%37%31%34%%26%69%64=%30%30%36%37%35%31%39%30%34%34%36%35%%26%69%64=%30%30%36%37%35%38%38%35%36%39%36%36%%26%69%64=%30%30%36%37%36%34%37%36%30%30%34%36%%26%69%64=%30%30%36%37%37%36%38%34%38%37%38%32%%26%69%64=%30%30%36%37%34%33%37%39%39%31%31%34%%26%69%64=%30%30%36%37%37%32%34%30%32%31%33%30%%26%69%64=%30%30%36%37%37%35%33%31%30%34%39%39%%26%69%64=%30%30%36%37%36%38%30%35%30%33%39%37%%26%69%64=%30%30%36%37%36%38%36%35%33%39%34%30%%26%69%64=%30%30%36%37%38%33%34%38%35%33%35%30%%26%69%64=%30%30%36%37%38%36%34%37%38%39%38%33%%26%69%64=%30%30%36%37%34%35%38%36%37%32%38%39%%26%69%64=%30%30%36%37%38%37%35%31%34%35%37%31%%26%69%64=%30%30%36%37%38%32%36%38%36%31%31%37%%26%69%64=%30%30%36%37%30%39%36%35%35%32%34%38%%26%69%64=%30%30%36%37%38%37%34%33%37%31%33%38%%26%69%64=%30%30%36%37%34%35%34%33%31%35%35%38%%26%69%64=%30%30%36%37%36%30%31%38%38%30%32%36%%26%69%64=%30%30%36%37%37%36%38%30%38%39%36%37%%26%69%64=%30%30%36%37%33%35%38%33%32%32%39%37%%26%69%64=%30%30%36%37%33%30%32%39%37%39%36%37%%26%69%64=%30%30%36%37%30%37%36%39%38%34%38%36%%26%69%64=%30%30%36%37%33%36%33%34%38%31%39%39%%26%69%64=%30%30%36%37%31%38%30%32%34%35%38%30%%26%69%64=%30%30%36%37%38%37%38%33%37%30%34%35%%26%69%64=%30%30%36%37%30%32%36%35%38%38%38%37%%26%69%64=%30%30%36%37%33%33%35%32%37%38%38%38%%26%69%64=%30%30%36%37%38%37%37%33%34%39%33%34%%26%69%64=%30%30%36%37%38%35%31%33%30%37%32%30%%26%69%64=%30%30%36%37%33%32%31%32%32%32%33%37%%26%69%64=%30%30%36%37%32%34%34%33%38%35%30%34%%26%69%64=%30%30%36%37%35%35%31%34%31%35%34%37%%26%69%64=%30%30%36%37%35%33%33%35%36%34%38%39%%26%69%64=%30%30%36%37%32%36%32%37%38%36%36%38%%26%69%64=%30%30%36%37%35%30%30%34%33%31%36%31%%26%69%64=%30%30%36%37%38%36%34%36%36%31%30%36%%26%69%64=%30%30%36%37%32%31%34%36%32%36%35%33%%26%69%64=%30%30%36%37%31%30%31%31%36%32%36%34%%26%69%64=%30%30%36%37%35%38%34%32%32%39%33%37%%26%69%64=%30%30%36%37%33%35%32%37%38%31%32%39%%26%69%64=%30%30%36%37%31%33%30%34%38%39%31%39%%26%69%64=%30%30%36%37%39%39%32%30%32%39%39%39%%26%69%64=%30%30%36%37%32%35%31%33%35%31%34%31%%26%69%64=%30%30%36%37%32%32%33%34%31%38%34%39%%26%69%64=%30%30%36%37%37%37%39%36%37%34%37%31%%26%69%64=%30%30%36%37%34%35%31%35%37%35%37%32%%26%69%64=%30%30%36%37%39%33%35%39%35%37%39%37%%26%69%64=%30%30%36%37%35%30%31%33%33%34%36%33%%26%69%64=%30%30%36%37%31%38%38%30%34%36%33%30%%26%69%64=%30%30%36%37%38%33%35%35%35%31%37%39%%26%69%64"}

function getRandomLetter()
    return emoji[rand:NextInteger(1,#emoji)]
end

function str(length, includeCapitals)
    local length = length or 10
    local str = ''
    for i=1,length do
        local randomLetter = getRandomLetter()
        if includeCapitals and rand:NextNumber() > .5 then
            randomLetter = string.upper(randomLetter)
        end
        str = str .. randomLetter
    end
    return str
end
