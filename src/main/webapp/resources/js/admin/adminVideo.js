function getVideoDetail(id){
    alert("비디오"+id);
    if(id >0) {
        $.ajax({
            type: 'POST',
            url: '/admin/video/detail',
            async: true,
            data: {
                "id": id
            },
            success: function (data) {
                //$("#create_mentor_form").load("/admin/mentor/detail #create_mentor_form");
                document.getElementById('video_title').value = data.videoDetailList[0].video_title;
                document.getElementById('video_link').value = data.videoDetailList[0].video_link;
                document.getElementById('thumbnail_url').src = "/resources/img/"+data.videoDetailList[0].thumbnail_url;
            }
        });
    }
    else{
        /*document.getElementById('mentor_name').value = "";
        document.getElementById('mentor_industry_name').value = "";
        document.getElementById('mentor_email').value = "";
        document.getElementById("mentor_area").value = "";*/
    }
}

function submitVideoInfo(){
    alert("비디오"+document.getElementById('set_video').value);
    var id = document.getElementById('set_video').value;
    if(id >0) {
        $.ajax({
            type: 'POST',
            url: '/admin/mentor/update',
            async: true,
            data: {
                "id": id,
                "name":document.getElementById('video_title').value,
                "industry_name":document.getElementById('mentor_industry_name').value,
                "email":document.getElementById('mentor_email').value,
                "area":document.getElementById("mentor_area").value
            },
            success: function (data) {
                $("#create_mentor_form").load("/admin/mentor/detail #create_mentor_form");
            }
        });
    }
    else{
        alert("add");
        $.ajax({
            type: 'POST',
            url: '/admin/mentor/add',
            async: true,
            data: {
                "name":document.getElementById('mentor_name').value,
                "industry_name":document.getElementById('mentor_industry_name').value,
                "email":document.getElementById('mentor_email').value,
                "area":document.getElementById("mentor_area").value
            },
            success: function (data) {
                $("#create_mentor_form").load("/admin/mentor/detail #create_mentor_form");
            }
        });
    }
}
