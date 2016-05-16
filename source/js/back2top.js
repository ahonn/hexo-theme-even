window.onload = function() {
    var b2t = document.getElementById('back2top');
    var timer = null;
    var isTop = true;
    window.onscroll = function(){
    	if (!isTop) {
    		clearInterval(timer);
    	}
    	isTop = false;
    }
    b2t.onclick = function() {
        timer = setInterval(function() {
            var osTop = document.documentElement.scrollTop ||
                        document.body.scrollTop;
            var ispeed = Math.floor(-osTop / 5);
            document.documentElement.scrollTop = document.body.scrollTop = osTop + ispeed;
            isTop = true;
            if (osTop == 0) {
                clearInterval(timer);
            }
        }, 30)
    }
}
