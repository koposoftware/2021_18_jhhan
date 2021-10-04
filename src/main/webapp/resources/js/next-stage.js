/**
 * 다음 라운드 주식페이지
 */



$(document).ready(function(){
	
	$('#nextLvl').click(function(){
		//alert('!!')
		
		$.ajax({
			method:'get',
			url: '/HN-Project/stock/changelist01',
			data:'json',
			success : function(data){
				console.log(data);
				$('#getList').empty();
				$('#spanspan').empty();
				
				var html=""
				
				var span=""
				
				span += "Round 2<button id='nextLvl' style='background-color:transparent; outline:0; '><i class='fa fa-sign-in' aria-hidden='true'></i></button>"
				
				data.forEach(function(d){
					console.log(d.stock_name)
					
					
					html += "<tr>";
					
					html += "<th scope='row'>"+ d.ticker +"</th>";
					html += "<td>"+ d.stock_name +"</td>";
					html += "<td>"+ d.end_p +"</td>";
					html += "<td>"+ d.compare +"</td>";
					html += "<td>"+ d.stocks_totalprice +"</td>";
					html += "<td><button data-toggle='modal' data-target='#buy' onclick=\"test('"+d.stock_name+"','"+d.end_p+"')\">매수</button><button>매도</button></td>";
					html += "</tr>"
				})
/*				for(var i=1;i<=data.length;i++){
					console.log(data[i].st)
					html += "<td>"+ data[i].ticker +"</td>";
					
				}
*/				
				
				$('#getList').append(html);
				$('#spanspan').append(span);
				
				
			}, //디비 접근 후 가져온 데이터 mav return 받았음
			error: function(){
				alert("error!!!")
			}
		})
		
	})
})

