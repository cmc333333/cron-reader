type
  TimePeriod* = ref object of RootObj

  Every* = ref object of TimePeriod
  Exact* = ref object of TimePeriod
    time: int

type
  Cron* = tuple[minute: TimePeriod, hour: TimePeriod]

proc newEvery*(): Every = Every()
proc newExact*(time: int): Exact = Exact(time: time)

proc time*(exact: Exact): int = exact.time
