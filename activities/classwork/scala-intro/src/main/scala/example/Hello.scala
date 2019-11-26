package example

object Hello {
  val default = "World"


  def greeting(name: String = default): String = {
    s"Hello, $name"

      }
      //Main method
      // run with: sbt "runMain example.Hello Word"
      def main(args: Array[String]): Unit = {
      val  name = args.headOption.getOrElse(default)
      println(greeting(name))

      }
  "The Hello object" should "say 'hello test-a'" in {
    val greeting = Hello.greeting(name = "test-a").toLowerCase
    greeting shouldEqual "hello test-a!"
  }
}