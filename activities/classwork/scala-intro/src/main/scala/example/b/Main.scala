package example.b

import example.b.model.Person
object Main {

  def main(args: Array[String]): Unit = {
    args match {
      case Array(familyName) =>
        print(familyName)
      case Array(familyName, nameA) =>
        val a = Person(nameA, familyName, gender = Person.Gender.undefined)
        print(a)
      case Array(familyName, nameA, nameB) =>
        val a = Person(nameA, familyName, gender = Person.Gender.undefined)
        val b = Person(nameA, familyName, gender = Person.Gender.undefined)
        print(a.greeting(b))
      case _ => println("Invalid arguments")
    }
  }

}
