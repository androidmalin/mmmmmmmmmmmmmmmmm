#!/bin/bash
sudo chown -R malin:malin . && adb uninstall meizhi.meizhi.malin && gradle installXiaomiDebug -x lint --daemon --parallel --offline && adb shell am start meizhi.meizhi.malin/.activity.TestActivity && adb logcat -c && pidcat.py meizhi.meizhi.malin
