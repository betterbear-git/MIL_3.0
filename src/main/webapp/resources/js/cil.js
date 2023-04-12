

var gi_flag=1;
var cd_flag=1;
var de_flag=1;
var vc_flag=1;
var md_flag=1;

function getDetail(subjectCode){
	$.ajax({
			type: 'POST',
			url: '/cil/detail',
			async: true,
			data: { "subject" : subjectCode
			},
			success: function (data) {
				var modal = $("#detailModal");
                //modal.empty();
                //modal.append(data);
                //modal.find(".main_subject").empty();
                //modal.find(".main_subject").append(data.subjectPreList.main_subject);
                //alert(data.subjectPreList.main_subject);
				modal.find(".course_cont").empty();
                modal.find(".course_cont").append(data.subjectDetailList[0].name);
				modal.find(".keyword_cont").empty();
                modal.find(".keyword_cont").append(data.subjectDetailList[0].keyword);
				modal.find(".detail_cont").empty();
                modal.find(".detail_cont").append(data.subjectDetailList[0].detail);
				modal.find(".tools_cont").empty();
                modal.find(".tools_cont").append(data.subjectDetailList[0].tool);
                modal.find("#gi_icon").attr("src", "/resources/img/TrackIcon/CIL_subject_game_off.png");
                modal.find("#de_icon").attr("src", "/resources/img/TrackIcon/CIL_subject_df_off.png");
                modal.find("#cd_icon").attr("src", "/resources/img/TrackIcon/CIL_subject_dd_off.png");
                modal.find("#vc_icon").attr("src", "/resources/img/TrackIcon/CIL_subject_it_off.png");
                modal.find("#md_icon").attr("src", "/resources/img/TrackIcon/CIL_subject_ct_off.png");
                for(i = 0; i<data.subjectDetailList.length; i++)
                {
                    if(data.subjectDetailList[i].page_id == 133)
                        modal.find("#gi_icon").attr("src", "/resources/img/TrackIcon/CIL_subject_game_on.png");
                    else if(data.subjectDetailList[i].page_id == 129)
                        modal.find("#de_icon").attr("src", "/resources/img/TrackIcon/CIL_subject_df_on.png");
                    else if(data.subjectDetailList[i].page_id == 130)
                        modal.find("#cd_icon").attr("src", "/resources/img/TrackIcon/CIL_subject_dd_on.png");
                    else if(data.subjectDetailList[i].page_id == 131)
                        modal.find("#vc_icon").attr("src", "/resources/img/TrackIcon/CIL_subject_it_on.png");
                    else if(data.subjectDetailList[i].page_id == 132)
                        modal.find("#md_icon").attr("src", "/resources/img/TrackIcon/CIL_subject_ct_on.png");
                }
                //modal.find(".pre_cont").append(data.subjectDetailList[0].name);
				modal.find(".related_cont").empty();
                modal.find(".related_cont").append(data.subjectDetailList[0].relate_subject);
                modal.find(".modal_wrap").attr("style", "display:flex");
                modal.find(".modal_side_wrap").attr("style", "display:flex");
                modal.find(".black_bg").attr("style", "display:block");
			},
			complete: function() {
			},
			error:function(request, status, error){
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
                console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);

			}			
		});
}

function reset_color(){
    var ch_td;

    for(i=2;i<=16;i++)
    {
        for(j=1;j<=8;j++)
        {
            str = "tr"+i+"td"+j;
            
 			if(document.getElementById(str)){
				ch_td = document.getElementById(str);
				if(ch_td!=null)
            		ch_td.style.background = "#f5f5f5";
			}else{
			}

            //alert(subjects[i]);
            console.log(document.querySelector('#cs_'.concat(str)));
            var cs = document.querySelector('#cs_'.concat(str));
            //var cs = document.querySelector('#cs_tr8td8');

            if (cs!=null && cs.classList.contains('show')) {
                cs.classList.remove('show');
            }
        }
    }
}
function trackClick(page_id,job_id){
    var ch_td;
	var core = new Array();
    var support = new Array();
    reset_color();

    $.ajax({
			type: 'POST',
			url: '/cil/track',
			async: true,
			data: {"page_id" : page_id},
			dataType : 'json',
			success: function (data) {
				for(var i=0; i<data.subjectTrackList.length; i++)
				{
					if(data.subjectTrackList[i].type=='core')
					{
						core.push('tr'+data.subjectTrackList[i].row_id+'td'+data.subjectTrackList[i].col_id);
					}
					if(data.subjectTrackList[i].type=='support')
					{
						support.push('tr'+data.subjectTrackList[i].row_id+'td'+data.subjectTrackList[i].col_id);
					}
				}
				switch(page_id)
				{
					case 129:
						deClick(core,support);
						break;
					case 130:
						cdClick(core,support);
						break;
					case 131:
						vcClick(core,support);
						break;
					case 132:
						mdClick(core,support);
						break;
					case 133:
						giClick(core,support);
						break;
                    case 777:
                        micro7Click(core);
                        break;
                    case 888:
                        micro8Click(core);
                        break;
                    case 999:
                        micro9Click(core);
                        break;
				}
			},
			complete: function() {
			},
			error:function(request, status, error){
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
                console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}			
		});
}

function areaChange(div){
    var ch_td;
    var core = new Array();
    var support = new Array();
    reset_color();

    $.ajax({
        type: 'POST',
        url: '/cil/area',
        async: true,
        data: {"div" : div},
        dataType : 'json',
        success: function (data) {
            switch(div)
            {
                case 0: //track 선택
                    //deClick(core,support);
                    //alert("track선택");
                    document.getElementById('area_micro').style.background = "white";
                    document.getElementById('area_micro').style.color = "#3462DC";
                    document.getElementById('area_track').style.background = "#3462DC";
                    document.getElementById('area_track').style.color = "white";

                    document.getElementById('area_table').style.removeProperty('display');
                    document.getElementById('micro_table').style.display = "none";
                    break;
                case 1: //micro 선택
                    //cdClick(core,support);
                    //alert("micro선택");
                    document.getElementById('area_track').style.background = "white";
                    document.getElementById('area_track').style.color = "#3462DC";
                    document.getElementById('area_micro').style.background = "#3462DC";
                    document.getElementById('area_micro').style.color = "white";

                    document.getElementById('area_table').style.display = "none";
                    document.getElementById('micro_table').style.display = "flex";

                    break;
            }
        },
        complete: function() {
        },
        error:function(request, status, error){
            alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
            console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
        }
    });
}

function micro7Click(core)
{
    reset_color();

    for(i=0;i<core.length;i++)
    {
        ch_td = document.getElementById(core[i]);
        ch_td.style.background = "#F0E959";
    }
}

function micro8Click(core)
{
    reset_color();

    for(i=0;i<core.length;i++)
    {
        ch_td = document.getElementById(core[i]);
        ch_td.style.background = "#F0758A";
    }
}

function micro9Click(core)
{
    reset_color();

    for(i=0;i<core.length;i++)
    {
        ch_td = document.getElementById(core[i]);
        ch_td.style.background = "#5DC4F0";
    }
}

function giClick(core,support)
{
	reset_color();
    var c_mark = document.querySelector('.c_mark');
    var s_mark = document.querySelector('.s_mark');
    c_mark.style.background = "#59bb4f";
    s_mark.style.background = "#c1dfbf";

    if(gi_flag>0)
    {
        for(i=0;i<core.length;i++)
        {
            ch_td = document.getElementById(core[i]);
            ch_td.style.background = "#59bb4f";
            var cs = document.querySelector('#cs_'.concat(core[i]));
            var cs_text = document.querySelector('.cs_txt_'.concat(core[i]));
            cs.classList.toggle('show');
            cs.style.background = "#59bb4f";
            cs_text.innerText="C";
        }

        for(i=0;i<support.length;i++)
        {
            ch_td = document.getElementById(support[i]);
            ch_td.style.background = "#c1dfbf";
            var cs = document.querySelector('#cs_'.concat(support[i]));
            var cs_text = document.querySelector('.cs_txt_'.concat(support[i]));
            cs.classList.toggle('show');
            //document.getElementsByClassName('show').style.display = "block";
            cs.style.background = "#c1dfbf";
            cs_text.innerText="S";
        }
    }
    if(gi_flag<0)
    {
        reset_color();
    }
    gi_flag*=-1;

    cd_flag=1;
    de_flag=1;
    vc_flag=1;
    md_flag=1;
}
function cdClick(core,support){
	reset_color();
    var c_mark = document.querySelector('.c_mark');
    var s_mark = document.querySelector('.s_mark');
    c_mark.style.background = "#f19a48";
    s_mark.style.background = "#ecb887";

    if(cd_flag>0)
    {
        for(i=0;i<core.length;i++)
        {
            ch_td = document.getElementById(core[i]);
            ch_td.style.background = "#f19a48";
            var cs = document.querySelector('#cs_'.concat(core[i]));
            var cs_text = document.querySelector('.cs_txt_'.concat(core[i]));
            cs.classList.toggle('show');
            cs.style.background = "#f19a48";
            cs_text.innerText="C";
        }

        for(i=0;i<support.length;i++)
        {
            ch_td = document.getElementById(support[i]);
            ch_td.style.background = "#ecb887";
            var cs = document.querySelector('#cs_'.concat(support[i]));
            var cs_text = document.querySelector('.cs_txt_'.concat(support[i]));
            cs.classList.toggle('show');
            //document.getElementsByClassName('show').style.display = "block";
            cs.style.background = "#ecb887";
            cs_text.innerText="S";
        }
    }
    if(cd_flag<0)
    {
        reset_color();
    }
    cd_flag*=-1;

    gi_flag=1;
    de_flag=1;
    vc_flag=1;
    md_flag=1;
}

function deClick(core,support){
	reset_color();

    var c_mark = document.querySelector('.c_mark');
    var s_mark = document.querySelector('.s_mark');
    c_mark.style.background = "rgb(191, 122, 231)";
    s_mark.style.background = "rgb(240, 213, 255)";

    if(de_flag>0)
    {
        for(i=0;i<core.length;i++)
        {
            ch_td = document.getElementById(core[i]);
            ch_td.style.background = "rgb(191, 122, 231)";
            var cs = document.querySelector('#cs_'.concat(core[i]));
            var cs_text = document.querySelector('.cs_txt_'.concat(core[i]));
            cs.classList.toggle('show');
            cs.style.background = "rgb(191, 122, 231)";
            cs_text.innerText="C";
        }

        for(i=0;i<support.length;i++)
        {
            ch_td = document.getElementById(support[i]);
            ch_td.style.background = "rgb(240, 213, 255)";
            var cs = document.querySelector('#cs_'.concat(support[i]));
            var cs_text = document.querySelector('.cs_txt_'.concat(support[i]));
            cs.classList.toggle('show');
            //document.getElementsByClassName('show').style.display = "block";
            cs.style.background = "rgb(240, 213, 255)";
            cs_text.innerText="S";
        }
    }
    if(de_flag<0)
    {
        reset_color();
    }
    de_flag*=-1;

    gi_flag=1;
    cd_flag=1;
    vc_flag=1;
    md_flag=1;
}

function vcClick(core,support){
	reset_color();

    var c_mark = document.querySelector('.c_mark');
    var s_mark = document.querySelector('.s_mark');
    c_mark.style.background = "#3bd1ff";
    s_mark.style.background = "#caeff0";

    if(vc_flag>0)
    {
        for(i=0;i<core.length;i++)
        {
            ch_td = document.getElementById(core[i]);
            ch_td.style.background = "#3bd1ff";
            var cs = document.querySelector('#cs_'.concat(core[i]));
            var cs_text = document.querySelector('.cs_txt_'.concat(core[i]));
            cs.classList.toggle('show');
            cs.style.background = "#3bd1ff";
            cs_text.innerText="C";
        }

        for(i=0;i<support.length;i++)
        {
            ch_td = document.getElementById(support[i]);
            ch_td.style.background = "#caeff0";
            var cs = document.querySelector('#cs_'.concat(support[i]));
            var cs_text = document.querySelector('.cs_txt_'.concat(support[i]));
            cs.classList.toggle('show');
            //document.getElementsByClassName('show').style.display = "block";
            cs.style.background = "#caeff0";
            cs_text.innerText="S";
        }
    }
    if(vc_flag<0)
    {
        reset_color();
    }
    vc_flag*=-1;

    gi_flag=1;
    cd_flag=1;
    de_flag=1;
    md_flag=1;
}

function mdClick(core,support){
	reset_color();

    var c_mark = document.querySelector('.c_mark');
    var s_mark = document.querySelector('.s_mark');
    c_mark.style.background = "#ff6f6f";
    s_mark.style.background = "#f7b9b9";

    if(md_flag>0)
    {
        for(i=0;i<core.length;i++)
        {
            ch_td = document.getElementById(core[i]);
            ch_td.style.background = "#ff6f6f";
            var cs = document.querySelector('#cs_'.concat(core[i]));
            var cs_text = document.querySelector('.cs_txt_'.concat(core[i]));
            cs.classList.toggle('show');
            cs.style.background = "#ff6f6f";
            cs_text.innerText="C";
        }

        for(i=0;i<support.length;i++)
        {
            ch_td = document.getElementById(support[i]);
            ch_td.style.background = "#f7b9b9";
            var cs = document.querySelector('#cs_'.concat(support[i]));
            var cs_text = document.querySelector('.cs_txt_'.concat(support[i]));
            cs.classList.toggle('show');
            //document.getElementsByClassName('show').style.display = "block";
            cs.style.background = "#f7b9b9";
            cs_text.innerText="S";
        }
    }
    if(md_flag<0)
    {
        reset_color();
    }
    md_flag*=-1;

    gi_flag=1;
    cd_flag=1;
    de_flag=1;
    vc_flag=1;
}