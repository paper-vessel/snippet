package logger

import (
    "io"
    "io/ioutil"
    "log"
    "os"
)

const (
    DEBUG = 3
    INFO = 2
    WARNING = 1
    ERROR = 0
)

var (
    Debug   *log.Logger
    Info    *log.Logger
    Warning *log.Logger
    Error   *log.Logger
)

func newLooger(loggerLv int, logLv int, pre string, flag int) *log.Logger{
    var handler io.Writer = os.Stdout
    if loggerLv > logLv {
        handler = ioutil.Discard
    }
    return log.New(handler, pre, flag)
}

func New(logLevel int) {
    Debug = newLooger(DEBUG, logLevel, "[DEBUG]: ", log.Ldate|log.Ltime|log.Lshortfile)
    Info = newLooger(INFO, logLevel, "[INFO]: ", log.Ldate|log.Ltime|log.Lshortfile)
    Warning = newLooger(WARNING, logLevel, "[WARN]: ", log.Ldate|log.Ltime|log.Lshortfile)
    Error = newLooger(ERROR, logLevel,"[ERROR]: ", log.Ldate|log.Ltime|log.Lshortfile)
}