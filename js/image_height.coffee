---
---

$ ->
    $(".featurette-image").each ->
        cur_height = $(this).height()
        cur_width = $(this).width()
        height = $(this).parent().siblings("div").height()
        width = cur_width * height / cur_height
        $(this).css("height", height)
        $(this).css("width", width)
