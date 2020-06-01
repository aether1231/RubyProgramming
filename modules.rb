module Quadratic
    def Quadratic.solve(a, b, c)
        root = (b ** 2 - (4 * a * c)) ** 0.5
        return [(-b - root) / (2.0 * a), (-b + root) / (2.0 * a)]
    end
end
