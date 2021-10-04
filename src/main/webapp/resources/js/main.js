/**
 * youtube
 */
const apiKey ='AIzaSyC0a50DEQnEK1__7XUKo925vkxaxu4HifY';
const channelId = 'UCejh7cdlFSkCh_rqQT6WB8Q';

const videoChannel = document.querySelector('#video-channel')
const videoContainer = document.querySelector('#video-container');

const channelEndpoint = `https://www.googleapis.com/youtube/v3/channels?key=${apiKey}&id=${channelId}&part=snippet,contentDetails,statistics`;

const ytPromise = fetch(channelEndpoint).then(res => res.json()).then(data => {console.log(data)
	showChannel(data);
	
	const playlistId = data.items[0].contentDetails.relatedPlaylists.uploads;
	requestPlaylist(playlistId);
	});
	

function showChannel(data){
	const imageLink = data.items[0].snippet.thumbnails.medium.url;
	const title =data.items[0].snippet.title;
	const description = data.items[0].snippet.description;
	const videos = data.items[0].statistics.videoCount;
	const subscribers = data.items[0].statistics.subscriberCount;
	const views = data.items[0].statistics.viewCount;
	let output = `
	<div class="col-md-6 mb-4 text-center">
		<img class="img-fluid" src="${imageLink}">
		<br>
		<a class="btn btn-danger btn-sm"
		href="https://www.youtube.com/channel/${channelId}"
		target="_blank">채널 바로가기!</a>
	</div>
	<div class="col-md-6 mb-4">
		<ul class="list-group shadow-lg">
			<li class="list-group-item bg-danger text-black"><strong> ${title} </strong></li>
			<li class="list-group-item"><strong>채널 소개: <br>${description} </strong></li>
			<li class="list-group-item"><strong> 동영상수: ${numberWithCommas(videos)} </strong></li>
			<li class="list-group-item"><strong> 구독자수: ${numberWithCommas(subscribers)} </strong></li>
			<li class="list-group-item"><strong> 조회수: ${numberWithCommas(views)} </strong></li>
		</ul>
	</div>
	`;
	videoChannel.innerHTML = output;
}

function numberWithCommas(x) {
    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}

function requestPlaylist(playlistId){
	const maxResults =12;
	const playlistURL = `https://www.googleapis.com/youtube/v3/playlistItems?key=${apiKey}&
	playlistId=${playlistId}&part=snippet&maxResults=${maxResults}`;
	
	fetch(playlistURL).then(res => res.json()).then(data => loadVideo(data));
}

function loadVideo(data){
	const playListItems = data.items;
	
	if(playListItems){
		let output = '';
		
		playListItems.map(item => {
			const videoId = item.snippet.resourceId.videoId;
			
			output += `
				<div class="col-lg-4 col-md-6 mb-4">
					<div class="card card-body p-0 shadow embed-responsive embed-responsive-16by9">
						<iframe height="auto" src="https://www.youtube.com/embed/${videoId}" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
						<br>
					</div>
				</div>
			`
		});
		
		videoContainer.innerHTML = output;
	}else{
		videoContainer.innerHTML = '동영상이 존재하지 않습니다.';
		
	}
}
