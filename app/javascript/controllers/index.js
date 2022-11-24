// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"

import ClockController from "./clock_controller"
application.register("clock", ClockController)

import CountdownTimerController from "./countdown_timer_controller"
application.register("countdown-timer", CountdownTimerController)

import HelloController from "./hello_controller"
application.register("hello", HelloController)

import MyTimerController from "./my_timer_controller"
application.register("my-timer", MyTimerController)
