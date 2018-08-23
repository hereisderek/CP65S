RefreshRateMultitool
====================

**Online Version:** There is a version of this tool (and many more useful ones) that runs in your browser, and is actively maintained. I recommend you use it instead:

https://www.testufo.com/#test=frameskipping

RefreshRateMultitool displays a sequence of easily distinguishable images at the rate of your monitor's refresh rate.

![RefreshRateMultitool in action, except the real thing runs much faster](https://dmitri.shuralyov.com/projects/RefreshRateMultitool/images/RefreshRateMultitool.gif)

```
Usage: RefreshRateMultitool.exe [columns rows]
 -columns - if specified, sets the number of columns, default 6
 -row     - if specified, sets the number of rows, default 1
```

This can be useful for a number of things:

-	Finding out the input lag of a monitor more precisely
-	Finding out if your monitor is actually dropping some of the input frames (e.g. monitor running in a 85 hz mode, but only displaying 60 frames/second, while dropping the other 25 every second)
-	Finding out the black-to-white and white-to-black pixel response times

See more advanced use cases and discussion of the tool [here](https://hardforum.com/showthread.php?t=1423433).

WARNING: This application will display FLASHING IMAGES.
