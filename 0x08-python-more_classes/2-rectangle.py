#!/usr/bin/python3
""" You can create instances of objects related to geometric figures
    Class:
        Rectangule
"""


class Rectangle:
    """ Define the Rectangle class
    """
    def __init__(self, width=0, height=0):
        self.width = width
        self.height = height

    @property
    def width(self):
        return self.__width

    @width.setter
    def width(self, value):
        if not isinstance(value, int):
            raise Exception("width must be an integer")
        if value < 0:
            raise Exception("width must be >= 0")
        self.__width = value

    @property
    def height(self):
        return self.__height

    @height.setter
    def height(self, value):
        if not isinstance(value, int):
            raise Exception("height must be an integer")
        if value < 0:
            raise Exception("height must be >= 0")
        self.__height = value

    def area(self):
        return self.width * self.height

    def perimeter(self):
        A = 2 * (self.width + self.height)
        if self.width == 0 or self.height == 0:
            A = 0
        return A
