---
---

$ ->
    normalize_heights = ->
        items = $("#myCarousel .carousel-caption")
        items.each -> $(this).css "min-height: 0 px;"
        tallest = items.get().reduce((previous_value, current) ->
                height = $(current).height()
                console.log height
                if height > previous_value then height else previous_value
            , 0)
        items.each -> $(this).css "min-height: #{tallest} px;"

    $(window).on "resize orientationchange", normalize_heights

    normalize_heights()
