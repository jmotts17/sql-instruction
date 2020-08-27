-- 5 Table Join
SELECT * FROM user
	JOIN Request
	ON request.userID = user.ID
    JOIN LineItem
    ON LineItem.requestID = request.ID
    JOIN Product
    on Product.ID = LineItem.ProductID
    JOIN Vendor
    on Vendor.ID = Product.VendorID;