def fibs(n, ary = [])
  1.upto(n) { |i| i < 3 ? ary << i - 1 : ary << (ary[i-3] + ary[i-2]) }
  ary
end
p fibs(7)


def fibs_rec(n, ary = [0,1])
  n <= ary.length ? ary[0...n] : fibs_rec(n, (ary << ary[-1] + ary[-2]))
end
p fibs_rec(10)