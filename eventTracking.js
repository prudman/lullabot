
$(document).ready(function () {
  //Function for Auto Generating Event Tracking
  var etID = ""; //Event Tracking ID

  $.extend($.expr[':'], { //Creates a custom selector called "track" and applies it to the appropriate elements
    track: function (obj) {
      if (obj == null)
        return false;
      else {
        var $obj = $(obj);
        return $(obj).attr('id') !== undefined && $(obj).attr('id') !== '' && // Has ID
                  !$(obj).attr('onclick') && !$(obj).attr('onclientclick'); // Does not have "onclick" or "onclientclick" attr.
      }
    }
  });

  $('a:track, input[type="submit"]:track').click(function () {
    etID = $(this).attr('id').split('_').reverse()[0]; //Creates Array split by '_', reverse it & gets first item
    _gaq.push(['_trackEvent', 'Events', 'Links', etID]);
    //window.alert('its working');
  });

  //Track PDF downloads
  $("a[href$='pdf']").each(function (index) { //Looks if the href has "pdf" in it.
    pdfLabel = 'PDF - ' + $(this).attr('href').split('/').reverse()[0]; //Prepends with 'PDF - ' then creates Array split by '/', reverse it & gets first item

    pdfOnClick = "_gaq.push(['_trackEvent', 'Events', 'Links', '" + pdfLabel + "']);";
    $(this).attr("onClick", pdfOnClick);
  });
});
