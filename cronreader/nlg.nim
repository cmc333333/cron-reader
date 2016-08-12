from strutils import `%`, intToStr

import structs

method periodString(_: TimePeriod, periodName: string): string = "N/A"

method periodString(_: Every, periodName: string): string =
  "every " & periodName

method periodString(exact: Exact, _: string): string =
  intToStr(exact.time, 2)

proc `$`*(cron: Cron): string =
  "At $#:$#" % [periodString(cron.hour, "hour"),
                periodString(cron.minute, "minute")]
