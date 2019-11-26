package example.a.model

case class Timestamp(seconds: Int) {
def add(other: Timestamp): Timestamp =
Timestamp(seconds + other.se
object Timestamp{
  val secondsInHour: Int = 60*60
  val secondInMinutes = 60

  def apply(hours: Int, minutes: Int, seconds: Int): Timestamp = Timestamp(seconds = secondsInHour * hours + secondInMinutes * minutes + seconds)
}
