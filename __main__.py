from mongoengine import *


connect("apa123")


class Apartment(Document):
    name = StringField()
    address = StringField()


myapartment = Apartment(
    name="Nice apartment",
    address="Cool street 22"
)

myapartment.save()