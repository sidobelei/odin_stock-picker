def stock_picker(stock_prices)
    best_sell_day_index = 0
    best_buy_day_index = 0
    profit = 0
    offset = 0
    stock_prices.each_with_index do |buy_price, index|
        offset += 1
        if offset < stock_prices.length
            stock_prices.drop(offset).each_with_index do |sell_price, offset_index|
                if sell_price - buy_price > profit
                    profit = sell_price - buy_price
                    best_sell_day_index = offset_index + offset
                    best_buy_day_index = index
                end
            end
        end 
    end
    p [best_buy_day_index, best_sell_day_index]
end

# Uncomment to run and change parameters
#stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])