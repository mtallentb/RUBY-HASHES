stock_dict = Hash.new
stock_dict = { 
    'GM' => 'General Motors',
    'CAT' => 'Caterpillar', 
    'EK' => "Eastman Kodak" 
}

purchase_history = []

puts stock_dict

# [ticker symbol, number of shares, dates, price]
purchases = [ 
    [ 'GM', 100, '10-sep-2001', 48 ],
    [ 'CAT', 100, '1-apr-1999', 24 ],
    [ 'EK', 200, '1-jul-1998', 56 ] 
]

gm_purchase = purchases[0]
cat_purchase = purchases[1]
ek_purchase = purchases[2]

gm_full_purchases = gm_purchase[1] * gm_purchase[3]
cat_full_purchases = cat_purchase[1] * cat_purchase[3]
ek_full_purchases = ek_purchase[1] * ek_purchase[3]

for company in stock_dict.keys
    if gm_purchase.include? company
         purchase_history.push("#{stock_dict[company]} => #{gm_full_purchases}")
         puts "Purchased #{gm_purchase[0]} stock totalling $#{gm_full_purchases}"
    elsif cat_purchase.include? company
        purchase_history.push("#{stock_dict[company]} => #{cat_full_purchases}")
        puts "Purchased #{cat_purchase[0]} stock totalling $#{cat_full_purchases}"
    else ek_purchase.include? company
        purchase_history.push("#{stock_dict[company]} => #{ek_full_purchases}")
        puts "Purchased #{ek_purchase[0]} stock totalling  $#{ek_full_purchases}"
    end


end 

puts purchase_history



