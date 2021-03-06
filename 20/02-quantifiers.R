# Квантификаторы

s <- c("a", "ab", "acb", "accb", "acccb", "accccb")

# Символ 'c', предшествующий '*', может повторяться любое число раз.
grep("ac*b", s, value=T)     # все, кроме 1-го

# Символ 'c' повторяется один или более раз.
grep("ac+b", s, value=T)     # c 3-го по 6-й

# Символ 'c' не встречается, либо встречается один раз.
grep("ac?b", s, value=T)     # 2-й и 3-й элементы

# Символ 'c' встречается ровно два раза.
grep("ac{2}b", s, value=T)   # 4-й элемент

# Символ 'c' встречается два и большее число раз.
grep("ac{2,}b", s, value=T)  # элементы с 4-го по 6-й 

# Символ 'c' встречается два или три раза.
grep("ac{2,3}b", s, value=T) # 4,5-й элементы
