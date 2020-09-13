const App = {
	InitLazyLoad: () => {
		return new LazyLoad({
			elements_selector: ".lazyload"
		});
	}
}

function height(el) {
	var height = 0;
	$(el).each(function () {
		var thisHeight = $(this).height();
		if (thisHeight > height) {
			height = thisHeight;
		}
		setTimeout(() => {
			$(el).height(height)
		}, 100)
	})
}
let header = {
	scrollActive: function () {
		let height = $('header').height()
		if ($(window).scrollTop() > height) {
			$('header').addClass('active')
		} else {
			$('header').removeClass('active')
		}
	},
}

function setBackgroundElement() {
	$('[setBackground]').each(function () {
		var background = $(this).attr('setBackground')
		$(this).css({
			"background-image": "url(" + background + ")",
			"background-size": "cover",
			"background-position": "center center"
		})
	})
	$('[setBackgroundRepeat]').each(function () {
		var background = $(this).attr('setBackgroundRepeat')
		$(this).css({
			"background-image": "url(" + background + ")",
			"background-repeat": "repeat"
		})
	})
}

function mappingMenu() {
	$('.header-wrapper .right-wrap .header-top ').mapping({
		mobileWrapper: '.mobile-wrapper',
		mobileMethod: 'appendTo',
		desktopWrapper: '.header-wrapper .right-wrap',
		desktopMethod: 'prependTo',
		breakpoint: 1200
	})
	$('header .header-wrapper .header-main ').mapping({
		mobileWrapper: '.mobile-wrapper',
		mobileMethod: 'appendTo',
		desktopWrapper: '.header-wrapper .right-wrap',
		desktopMethod: 'appendTo',
		breakpoint: 1200
	})
}

function menuMobile() {
	$('.header-wrapper .right-wrap .button-toggle').on('click', function () {
		$(this).toggleClass('active')
		$('header .mobile-wrapper').toggleClass('active')
	})
}

function bannerHomeSlide() {
	let homeBanner = new Swiper('.home-banner .swiper-container', {
		slidesPerView: 1,
		autoplay: {
			delay: 4500,
		},
		spaceBetween: 0,
		speed: 500,
		loop: true,
		navigation: {
			nextEl: '.home-banner .swiper-next',
			prevEl: '.home-banner .swiper-prev',
		},
		pagination: {
			el: '.home-banner .swiper-pagination',
			type: 'bullets',
			clickable: true,
		},
	});
	let home1 = new Swiper('.doi-tac .swiper-container', {
		autoplay: {
			delay: 4500,
		},
		spaceBetween: 20,
		speed: 500,
		loop: true,
		navigation: {
			nextEl: '.doi-tac .swiper-next',
			prevEl: '.doi-tac .swiper-prev',
		},
		pagination: {
			el: '.doi-tac .swiper-pagination',
			type: 'bullets',
			clickable: true,
		},
		breakpoints: {
			320: {
				slidesPerView: 2,
			},
			768: {
				slidesPerView: 3,
			},
			1025: {
				slidesPerView: 4,
			},
			1200: {
				slidesPerView: 6,
			}
		}
	});
	let duan = new Swiper('.duan-khac .swiper-container', {
		autoplay: {
			delay: 4500,
		},
		spaceBetween: 20,
		speed: 500,
		loop: true,
		navigation: {
			nextEl: '.duan-khac .swiper-next',
			prevEl: '.duan-khac .swiper-prev',
		},
		pagination: {
			el: '.duan-khac .swiper-pagination',
			type: 'bullets',
			clickable: true,
		},
		breakpoints: {
			320: {
				slidesPerView: 1,
			},
			768: {
				slidesPerView: 2,
			},
			1025: {
				slidesPerView: 3,
			},
		}
	});
	let daisu = new Swiper('.dai-su .swiper-container', {
		autoplay: {
			delay: 4500,
		},
		spaceBetween: 20,
		speed: 500,
		loop: true,
		navigation: {
			nextEl: '.dai-su .swiper-next',
			prevEl: '.dai-su .swiper-prev',
		},
		pagination: {
			el: '.dai-su .swiper-pagination',
			type: 'bullets',
			clickable: true,
		},
		breakpoints: {
			320: {
				slidesPerView: 1,
			},
			576: {
				slidesPerView: 2,
			},
			768: {
				slidesPerView: 3,
			},
			1025: {
				slidesPerView: 4,
			},
		}
	});
	let giayphep = new Swiper('.slide-wrapper .swiper-container', {
		autoplay: {
			delay: 4500,
		},
		spaceBetween: 20,
		speed: 500,
		loop: true,
		navigation: {
			nextEl: '.slide-wrapper .swiper-next',
			prevEl: '.slide-wrapper .swiper-prev',
		},
		pagination: {
			el: '.slide-wrapper .swiper-pagination',
			type: 'bullets',
			clickable: true,
		},
		breakpoints: {
			320: {
				slidesPerView: 1,
			},
			768: {
				slidesPerView: 2,
			},
			1025: {
				slidesPerView: 4,
			},
		}
	});
}

function fancyboxModal() {
	$(".btn-open-newsfancybox").click(function (e) {
		console.log(1)
		e.preventDefault();
		$.fancybox.open({
			src: '#modal',
			type: 'inline',
			opts: {
				afterShow: function (instance, current) {
					$(".fancybox-is-open").appendTo("main");
				}
			}
		});
		return false;
	});
}
$(document).on('scroll', function () {
	header.scrollActive()
	
})
$(document).ready(function () {
	// lazyload
	// App.InitLazyLoad()
	
	// menu
	mappingMenu()
	menuMobile()

	// set background
	// setBackgroundElement()

	// fancyboxModal
	// fancyboxModal()
	// cropImage()

	//toggle
	dropdownlangauge();
	search()

	// swiper
	bannerHomeSlide()
	gallery()
	navTab()
})

function cropImage() {
	// vars
	let result = document.querySelector('.result'),
		img_result = document.querySelector('.img-result'),
		img_w = document.querySelector('.img-w'),
		img_h = document.querySelector('.img-h'),
		options = document.querySelector('.options'),
		save = document.querySelector('.save'),
		cropped = document.querySelector('.cropped'),
		dwn = document.querySelector('.download'),
		upload = document.querySelector('#file-input'),
		cropper = '';

	// on change show image with crop options
	upload.addEventListener('change', (e) => {
		if (e.target.files.length) {
			// start file reader
			const reader = new FileReader();
			reader.onload = (e) => {
				if (e.target.result) {
					// create new image
					let img = document.createElement('img');
					img.id = 'image';
					img.src = e.target.result
					// clean result before
					result.innerHTML = '';
					// append new image
					result.appendChild(img);
					// show save btn and options
					save.classList.remove('hide');
					options.classList.remove('hide');
					// init cropper
					cropper = new Cropper(img);
				}
			};
			reader.readAsDataURL(e.target.files[0]);
		}
	});

	// save on click
	save.addEventListener('click', (e) => {
		e.preventDefault();
		// get result to data uri
		let imgSrc = cropper.getCroppedCanvas({
			width: img_w.value // input value
		}).toDataURL();
		// remove hide class of img
		cropped.classList.remove('hide');
		img_result.classList.remove('hide');
		// show image cropped
		cropped.src = imgSrc;
		dwn.classList.remove('hide');
		dwn.download = 'imagename.png';
		dwn.setAttribute('href', imgSrc);
	});
}
 //dropdown language
 function dropdownlangauge(){
	 $('.main-language .dropdown-toggle').on('click', function(){
		 $('.main-language .dropdown-menu').slideToggle('500')
	 })
 }


 //searchbox
 function search(){
	 $('.header-wrapper .right-wrap .header-top .main-search').on('click', function(){
		$('.header-wrapper .right-wrap .header-top .main-search .searchbox').toggleClass('active')
	 })
 }
 function gallery(){
    var galleryThumbs = new Swiper('.slide-wrapper .gallery-thumbs', {
        freeMode: true,
        watchSlidesVisibility: true,
        watchSlidesProgress: true,
        breakpoints: {
			768: {
                slidesPerView: 4,
                spaceBetween: 10
			},
			576: {
                slidesPerView: 3,
                spaceBetween: 10
			},
			375: {
                slidesPerView: 2,
                spaceBetween: 10
			},
		},
        });
    var galleryTop = new Swiper('.slide-wrapper .gallery-top', {
    spaceBetween: 10,
    autoplay: true,
    speed: 1000,
    navigation: {
        nextEl: '.slide-wrapper .swiper-next',
        prevEl: '.slide-wrapper .swiper-prev',
    },
    thumbs: {
        swiper: galleryThumbs
    }
    });
}
function navTab(){
	$('.tintuc-ds .nav-news .mobile-list').on('click', function(){
		$('.tintuc-ds .nav-news ul').slideToggle(500)
		$(this).toggleClass('active')
	})
}
