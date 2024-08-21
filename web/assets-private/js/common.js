$(function () {
    var $modal = $('.modal');
    $modal.on('show.bs.modal', function () {
        $('body').addClass("modal-open-noscroll");
    });

    $modal.on('hidden.bs.modal', function () {
        $('body').removeClass("modal-open-noscroll");
    });
});

$.fn.findName = function (name) {
    return $(this).find('[name='+name+']');
};

$.fn.nameVal = function (name) {
    return $(this).findName(name).val();
};

$.fn.onPjax = function(event, $target, callback) {
  $(this).off(event, $target);
  $(this).on(event, $target, callback);
};

$.extend({
    round: function (value, precision) {
        if (precision === undefined) {
            precision = 2;
        }

        var times = Math.pow(10, precision);

        return Math.round(value * times) / times
    }
});

/**
 *
 * @param name 插件名称
 * @param callback 插件加载完后执行的函数
 * @param refresh 重复获取时执行的函数
 * @returns {*}
 */
window.YesknPlugins.get = function(name, callback, refresh) {
    const self = window.YesknPlugins;

    if (!self[name]) {
        self[name] = {
            initialized: false,
            scripts: [],
            links: [],
            result: null,  // 用于存储插件的结果
            identifier: null // 这里假设 identifier 是用来识别插件的全局变量名称
        };
    }

    // 避免重复加载和初始化
    if (self[name].initialized === true) {
        if (refresh && typeof self[name].result !== 'undefined') {
            refresh(self[name].result);
        }
        if (callback && typeof self[name].identifier === 'string') {
            self[name].result = callback(eval(self[name].identifier));
        }
        return self[name];
    }

    const scripts = self[name].scripts || {};
    const links = self[name].links || {};

    // 动态加载脚本文件
    Object.keys(scripts).forEach((key, index, array) => {
        let scriptElm = document.createElement("script");
        scriptElm.setAttribute("src", scripts[key]);
        document.getElementsByTagName("head")[0].appendChild(scriptElm);

        // 仅在最后一个脚本加载完成时执行初始化
        if (index === array.length - 1) {
            scriptElm.onload = function() {
                if (callback && typeof self[name].identifier === 'string') {
                    self[name].result = callback(eval(self[name].identifier));
                }
                self[name].initialized = true;  // 标记插件已初始化
            }
        }
    });

    // 动态加载样式文件
    Object.keys(links).forEach(key => {
        let linkElm = document.createElement("link");
        linkElm.setAttribute("href", links[key]);
        linkElm.setAttribute("rel", "stylesheet");
        document.getElementsByTagName("head")[0].appendChild(linkElm);
    });

    return self[name];
};
