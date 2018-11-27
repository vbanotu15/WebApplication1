/***********************************
* jQuery script to automatically rotate through reports/dashboards
* Implemented in ~/srd/Resources/Res_SalesReports.aspx
***********************************/
$(document).ready(function () {
    var visibleIndex = 0;
    var reportCnt = $('.report').length;

    //30 second rotation for each report
    setInterval(function () {
        visibleIndex = ((visibleIndex + 1) >= reportCnt) ? 0 : visibleIndex + 1;
        $('.report').each(function (index, element) {
            if (index == visibleIndex)
                $(this).removeClass('hidden').addClass('visible');
            else
                $(this).removeClass('visible').addClass('hidden');
        });
    }, 30 * 1000);
});
