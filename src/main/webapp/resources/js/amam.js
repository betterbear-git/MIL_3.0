//이전 버튼 이벤트

function fn_prev(page, range, rangeSize) {

    var page = ((range - 2) * rangeSize) + 1;

    var range = range - 1;



    var url = "aam";

    url = url + "?page=" + page;

    url = url + "&range=" + range;



    location.href = url;

}



//페이지 번호 클릭

function fn_pagination(page, range, rangeSize, searchType, keyword) {

    var url = "aam";

    url = url + "?page=" + page;

    url = url + "&range=" + range;



    location.href = url;

}



//다음 버튼 이벤트

function fn_next(page, range, rangeSize) {

    var page = parseInt((range * rangeSize)) + 1;

    var range = parseInt(range) + 1;



    var url = "aam";

    url = url + "?page=" + page;

    url = url + "&range=" + range;



    location.href = url;

}