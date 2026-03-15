from abc import ABC, abstractmethod

# Define the abstract base class 'Animal'
class Animal(ABC):
    def __init__(self, name):
        self.name = name
        super().__init__()

    @abstractmethod
    def speak(self):
        """Abstract method that must be implemented by subclasses."""
        pass

    # You can also have concrete (implemented) methods in an abstract class
    def jump(self):
        return f"{self.name} is jumping"

# Define a concrete subclass 'Dog' that inherits from 'Animal'
class Dog(Animal):
    def speak(self):
        """Implementation of the abstract 'speak' method for Dog."""
        return "Woof Woof"

# Define another concrete subclass 'Cat'
class Cat(Animal):
    def speak(self):
        """Implementation of the abstract 'speak' method for Cat."""
        return "Meow"

# --- Usage Examples ---

# You CANNOT instantiate the abstract class directly
try:
    generic_animal = Animal("Generic")
except TypeError as e:
    print(f"Error: {e}") # This will raise a TypeError


# You CAN instantiate the concrete subclasses
dog = Dog("Buddy")
cat = Cat("Whiskers")

print(f"{dog.name} says: {dog.speak()}")
print(f"{cat.name} says: {cat.speak()}")

# Subclasses inherit concrete methods
print(dog.jump())
print(cat.jump())

# Example of a class that inherits from Animal but doesn't implement 'speak'
class IncompleteAnimal(Animal):
    pass

try:
    incomplete = IncompleteAnimal("Spot")
except TypeError as e:
    print(f"\nError creating IncompleteAnimal: {e}") # This will also raise a TypeError
