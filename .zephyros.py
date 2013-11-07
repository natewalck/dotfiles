#!/usr/bin/env python
# -*- coding: UTF-8 -*-
# vim: set ft=python fenc=UTF-8 ts=4 sts=4 sw=4 et :

import sys
sys.path.insert(0, '/Applications/Zephyros.app/Contents/Resources/libs/')
import zephyros


def push_up():
    win = zephyros.api.focused_window()
    screen = win.screen()
    frame = screen.frame_without_dock_or_menu()
    frame.h /= 2
    win.set_frame(frame)


def push_down():
    win = zephyros.api.focused_window()
    screen = win.screen()
    frame = screen.frame_without_dock_or_menu()
    frame.y += frame.h / 2
    frame.h /= 2
    win.set_frame(frame)


def push_left():
    win = zephyros.api.focused_window()
    screen = win.screen()
    frame = screen.frame_without_dock_or_menu()
    frame.w /= 2
    win.set_frame(frame)


def push_right():
    win = zephyros.api.focused_window()
    screen = win.screen()
    frame = screen.frame_without_dock_or_menu()
    frame.x += frame.w / 2
    frame.w /= 2
    win.set_frame(frame)


def max_window():
    win = zephyros.api.focused_window()
    screen = win.screen()
    frame = screen.frame_without_dock_or_menu()
    win.set_frame(frame)


def center_window():
    win = zephyros.api.focused_window()
    wframe = win.frame()

    screen = zephyros.api.main_screen()
    sframe = screen.frame_without_dock_or_menu()

    frame = zephyros.Rect()
    frame.x = (sframe.w - wframe.w) / 2
    frame.y = (sframe.h - wframe.h) / 2
    frame.w = wframe.w
    frame.h = wframe.h

    win.set_frame(frame)


def show_window_title():
    zephyros.api.alert(zephyros.api.focused_window().title())


def nudge_window_left():
        win = zephyros.api.focused_window()
        f = win.frame()
        f.x -= 4
        win.set_frame(f)


def nudge_window_down():
        win = zephyros.api.focused_window()
        f = win.frame()
        f.y -= 4
        win.set_frame(f)


def nudge_window_up():
        win = zephyros.api.focused_window()
        f = win.frame()
        f.y += 4
        win.set_frame(f)


def nudge_window_right():
        win = zephyros.api.focused_window()
        f = win.frame()
        f.x += 4
        win.set_frame(f)


def increase_window_width():
        win = zephyros.api.focused_window()
        s = win.size()
        s.w += 4
        win.set_size(s)


def decrease_window_width():
        win = zephyros.api.focused_window()
        s = win.size()
        s.w -= 4
        win.set_size(s)


def increase_window_height():
        win = zephyros.api.focused_window()
        s = win.size()
        s.h += 4
        win.set_size(s)


def decrease_window_height():
        win = zephyros.api.focused_window()
        s = win.size()
        s.h -= 4
        win.set_size(s)


@zephyros.zephyros
def configuration():
    mash = ['Ctrl', 'Alt', 'Cmd']
    optionalt = ['Alt', 'Cmd']
    zephyros.api.bind('UP', mash, push_up)
    zephyros.api.bind('DOWN', mash, push_down)
    zephyros.api.bind('LEFT', mash, push_left)
    zephyros.api.bind('RIGHT', mash, push_right)
    zephyros.api.bind('M', mash, max_window)
    zephyros.api.bind('C', mash, center_window)
    zephyros.api.bind('D', mash, show_window_title)
    zephyros.api.bind('H', mash, nudge_window_left)
    zephyros.api.bind('J', mash, nudge_window_down)
    zephyros.api.bind('K', mash, nudge_window_up)
    zephyros.api.bind('L', mash, nudge_window_right)
    zephyros.api.bind('H', optionalt, decrease_window_width)
    zephyros.api.bind('L', optionalt, increase_window_width)
    zephyros.api.bind('J', optionalt, decrease_window_height)
    zephyros.api.bind('K', optionalt, increase_window_height)
