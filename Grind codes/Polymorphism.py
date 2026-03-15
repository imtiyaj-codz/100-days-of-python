# Base class
class Shape:
    def area(self):
        # This method is meant to be overridden
        return 0


# Child class 1
class Rectangle(Shape):
    def area(self):
        # Area formula for rectangle
        return 10 * 5


# Child class 2
class Circle(Shape):
    def area(self):
        # Area formula for circle
        return 3.14 * 7 * 7


# Polymorphic function
def print_area(shape):
    # Same function works for different object types
    print("Area:", shape.area())


# Creating objects
rect = Rectangle()
circle = Circle()

# Polymorphism in action
print_area(rect)
print_area(circle)
