/**
 * 히원이름으로 정보조회하기
 */

$(document).ready(function(){

	$('#search').on('click',function(){
	
	
	       $.ajax({
				url:'/HN-Project/admin/table',
				method:'post',
				data: $("#searchName").serialize(),
				
				dataType:'json',
				success : function(data){
					alert('성공');
					console.log("ajax sending:"+data);
					$('#schoolinfos').empty();
					
					
					var html=""
					var date=""
					var phone=""
					
						data.forEach(function(d){
					console.log(d.name)
					
					html += "<tr>";
					html += "<td>";
					
					
					html += "<th scope='row'>"+ d.ticker +"</th>";
					html += "<td>"+ d.stock_name +"</td>";
					html += "<td>"+ d.end_p +"</td>";
					html += "<td>"+ d.compare +"</td>";
					html += "<td>"+ d.stocks_totalprice +"</td>";
					
					})
					
					
					
				$('#add').append(html);
				$('#date').append(date);
				$('#phone').append(phone);
				}
			})
	})


});

/*pdf save*/



