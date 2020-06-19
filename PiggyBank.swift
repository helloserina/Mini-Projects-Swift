var pesos: Double = 1
var reais: Double = 3
var soles: Double = 5

var total: Double

var pesosRate: Double = 0.045
var reaisRate: Double = 0.19
var solesRate: Double = 0.29

total = pesos*pesosRate + reaisRate*reais + soles*solesRate

print("US Dollars = $\(total)")
