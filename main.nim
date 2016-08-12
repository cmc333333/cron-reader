import cronreader.nlg
import cronreader.structs

when isMainModule:
  let cron:Cron = (minute: newExact(0), hour: newExact(10))
  echo $cron
