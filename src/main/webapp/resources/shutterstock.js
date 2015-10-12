

$.fn.shutterstock = function(options) {
    if (!options.videoWidth || options.videoHeight) {
        options.videoWidth = 400;
        options.videoHeight = 224;
    }

    if (options !== undefined && options.query !== undefined) {
        var query = options.query;
    } else {
        var query = '';
    }
    if (options !== undefined && options.num !== undefined) {
        var num = options.num;
    } else {
        var num = 40;
    }

    var t = this;
    var url = '/lib/shutterstock/';

    function initImage() {
        var out = '';
        out += "<ul>";
        for (var i=0; i<num; i++) {
            out += '<li><div class="shutter_image">';
            out += '<a href="#" rel="nofollow"><img src="'+url+'/ajax-loader.gif"></a>';
            out += '</div></li>';
        }
        out += '</ul>';
        t.html(out);        
    }

    function initVideo() {
        var out = '';
        out += "<ul>";
        for (var i=0; i<num; i++) {
            out += '<li>';
            out += '<a href="#" rel="nofollow">';
            out += '<div class="shutter_image">';
            out += '<img src="'+url+'/ajax-loader.gif">';
            out += '</div>';

            out += '<div class="shutter_video">';
            out += '<video controls="controls">';
            //out += '<source src="" type="video/mp4">';
            //out += '<source src="" type="video/webm">';
            out += '</video>';
            out += '</a>';
            out += '</div>';
            out += '</li>';
        }
        out += '</ul>';
        var response = t.html(out);

        $('.shutter_video', response).each(function(idx, elem) {
            var parent = $(elem).parent('li');
            var video = $('video', elem);
            video.attr('width', options.videoWidth);
            video.attr('height', options.videoHeight);
            $(elem).hide();
            parent.mouseenter(function() {
                $('.shutter_image', parent).hide();
                $('.shutter_video', parent).show();
                video.get(0).play();
            });
            parent.mouseleave(function() {
                $('.shutter_image', parent).show();
                $('.shutter_video', parent).hide();
                video.get(0).stop();
            })
        });

        $('.shutter_image img', response).each(function(idx, elem) {
            $('video', elem).attr('width', options.videoWidth);
            $('video', elem).attr('height', options.videoHeight);
        });

    }


    function init() {
        if (options.type == 'videos') {
            initVideo();
        } else {
            initImage();
        }
    }

    function renderImage(data) {
        var counter = 0;
        $('li', t).each(function(index, col) {
            var image = $('img', col);
            var link = $('a', col);
            var container = $('.shutter_image', col)
            $(image).fadeOut('fast');
            image.attr('src', data.results[index].img);
            link.attr('href', data.results[index].url);
            link.attr('title', data.results[index].description);
            container.css('overflow', 'hidden');
            container.css('width', data.results[index].width);
            container.css('height', data.results[index].height);
            $(image).fadeIn('slow');
        });
    }

    function renderVideo(data) {
        var counter = 0;
        $('li', t).each(function(index, col) {
            var row = data.results[index];
            var image = $('img', col);
            var link = $('a', col);
            var imageContainer = $('.shutter_image', col);
            var videoContainer = $('.shutter_video', col);
            var video = $('video', videoContainer);
            video.html('');

            //var webm = $("source[type='video/webm']", videoContainer);
            //var mp4 = $("source[type='video/mp4']", videoContainer);
            $(image).fadeOut('fast');
            image.attr('src', data.results[index].img);
            link.attr('href', data.results[index].url);
            link.attr('title', data.results[index].description);
            if (row.mp4) {
                video.append('<source src="'+row.mp4+'" type="video/mp4">')
            }
            if (row.webm) {
                video.append('<source src="'+row.webm+'" type="video/webm">')
            }
            //mp4.attr('src', data.results[index].mp4);
            //webm.attr('src', data.results[index].webm);
            imageContainer.css('overflow', 'hidden');
            imageContainer.css('width', data.results[index].width);
            imageContainer.css('height', data.results[index].height);
            $(image).fadeIn('slow');
        });
    }

    function render(data) {
        if (options.type == 'videos') {
            renderVideo(data);
        } else {
            renderImage(data);
        }
    }

    
    function update() {
        $.ajax ({
            url: url,
            data: { q: query, limit: num, type: options.type },
            dataType: 'json',
            type: 'get',
            success: function(data) {
                render(data);
                if (options.type == 'images') {
                    setTimeout(function() {
                        update();
                    }, 15000);
                }
            },
            error: function(e) {
            }
        });
    }
    
    init();
    update();
};
