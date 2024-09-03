function render(template, parameters) {
    for (var key in parameters) {
        if (parameters.hasOwnProperty(key)) {
            var reg = new RegExp('@'+key+'@', 'g');
            template = template.replace(reg, parameters[key]);
        }
    }

    return $(template);
}

function error(msg) {
    bootoast({
        message: msg,
        type: 'danger',
        position: 'top-center',
        icon: undefined,
        timeout: 3,
        animationDuration: 300,
        dismissable: true
    });
}

function warning(msg) {
    bootoast({
        message:msg,
        type: 'warning',
        position: 'top-center',
        icon: undefined,
        timeout: 3,
        animationDuration: 300,
        dismissable: true
    });
}

function success(msg) {
    bootoast({
        message:msg,
        type: 'success',
        position: 'top-center',
        icon: undefined,
        timeout: 3,
        animationDuration: 300,
        dismissable: true
    });
}

function info(msg) {
    bootoast({
        message: msg,
        type: 'info',
        position: 'bottom-left',
        icon: 'info-sign',
        timeout: 5,
        animationDuration: 300,
        dismissable: true
    });
}

function reload() {
    $.pjax.reload('.content-body', {
        fragment: '.content-body',
        timeout: 200000000,
        show: 'fade',
        cache: true,
        push: true
    })
}

function go(url) {
    $.pjax({
        url: url,
        container: '.content-body',
        fragment: '.content-body',
        timeout: 200000000,
        show: 'fade',
        cache: true,
        push: true,
        replace: false
    });
}

function handleNewNotification(data) {
    success(data.message);

    $('.nav-bell-dot').addClass('push-notifications-count');
}

function handleNewMessage(data) {
    success("您收到了新的通知，请到个人中心查看");

    $('.nav-bell-dot').addClass('push-notifications-count');
}

function handleNewFollower(data) {
    success("有人关注你了，请到个人中心查看");

    $('.nav-bell-dot').addClass('push-notifications-count');
}

// 语言翻译对象
const translations = {
    en: {
        ago: ' ago',
        second: ' second',
        minute: ' minute',
        hour: ' hour',
        day: ' day'
    },
    zh_CN: {
        ago: '前',
        second: '秒',
        minute: '分钟',
        hour: '小时',
        day: '天'
    },
    zh_TW: {
        ago: '前',
        second: '秒',
        minute: '分鐘',
        hour: '小時',
        day: '天'
    },
    jp: {
        ago: '前',
        second: '秒',
        minute: '分',
        hour: '時間',
        day: '日'
    },
    // 可以添加更多语言
};




function ago(timestamp) {
    const now = Math.floor(Date.now() / 1000); // 当前时间戳（秒）
    const ts = parseInt(timestamp, 10); // 输入时间戳（秒）

    // 如果时间戳无效或为空，返回 'Invalid date'
    if (isNaN(ts)) {
        return 'Invalid date';
    }

    const diff = now - ts;

    // 根据用户语言选择适当的翻译
    let lang;
    if (userLang.startsWith('zh_TW')) {
        lang = 'zh_TW';
    } else if (userLang.startsWith('jp')) {
        lang = 'jp';
    } else if (userLang.startsWith('zh_CN')) {
        lang = 'zh_CN';
    } else {
        lang = 'en';
    }

    const { ago, second, minute, hour, day } = translations[lang];

    if (diff < 60) {
        return (Math.floor(diff) || 1) + second + ago;
    } else if (diff <= 60 * 60) {
        const m = Math.floor(diff / 60);
        const s = Math.floor(diff % 60);
        return m + minute + (s ? s + second : '') + ago;
    } else if (diff <= 24 * 60 * 60) {
        const h = Math.floor(diff / (60 * 60));
        const m = Math.floor((diff - h * (60 * 60)) / 60);
        return h + hour + (m ? m + minute : '') + ago;
    } else {
        const d = Math.floor(diff / (24 * 60 * 60));
        return d + day + ago;
    }
}

function handleNewChat(data) {
    success(data.username + '：' + data.content);
    $('.nav-chat-dot').addClass('push-notifications-count');
    var chatBox = $('#chat-box ul.chat');
    var loc = 'left';
    var timestamp = data.timestamp; // Assuming createdAt is a UNIX timestamp in seconds

    var chatItem = `
        <li class="${loc} clearfix">
            <span class="chat-img pull-${loc}">
                <img style="border-radius: 5px" width="50" height="50" src="${data.avatar}" alt="User Avatar">
            </span>
            <div class="chat-body clearfix">
                <div class="header">
                    ${loc === 'right' ? `
                        <small class="text-muted">
                            <i class="fa fa-clock-o fa-fw"></i> ${ago(timestamp)}
                        </small>
                        <strong class="pull-right primary-font"><a href="/member/${data.username}">${data.nickname}</a></strong>
                    ` : `
                        <strong class="primary-font"><a href="/member/${data.username}">${data.nickname}</a></strong>
                        <small class="pull-right text-muted">
                            <i class="fa fa-clock-o fa-fw"></i> ${ago(timestamp)}
                        </small>
                    `}
                </div>
                <p class="pull-${loc}" style="margin-top: 5px">${data.content}</p>
            </div>
        </li>
    `;

    // 将新消息添加到聊天列表中
    chatBox.append(chatItem);

    // 自动滚动到底部
    var elem = document.getElementById('chat-box');
    elem.scrollTop = elem.scrollHeight;
}
// 更新聊天时间
document.addEventListener('DOMContentLoaded', function() {
    document.querySelectorAll('.chat-timestamp').forEach(function(element) {
        const timestamp = element.getAttribute('data-timestamp');
        console.log('Timestamp from element:', timestamp); // 输出时间戳
        element.innerHTML = '<i class="fa fa-clock-o fa-fw"></i> ' + ago(timestamp);
    });
});

$(document).on('pjax:success', function() {
    // 重新初始化 JavaScript 代码，例如更新聊天时间戳
    document.querySelectorAll('.chat-timestamp').forEach(function(element) {
        const timestamp = element.getAttribute('data-timestamp');
        if (!isNaN(timestamp)) {
            element.innerHTML = '<i class="fa fa-clock-o fa-fw"></i> ' + ago(timestamp);
        }
    });
});



function handleCreateBlogEvent(data) {
    if (data.percent) {
        $('#processBlogStep4 .progress-bar').css('width', data.percent + '%').attr('aria-valuenow',  data.percent)
    }
    $('#processBlogStep4 #processBlogSocketMessage').append('<span class="help-block">'+data.msg+'</span>');
}

function path(route, parameters) {
    for (var k in parameters) {
        if (parameters.hasOwnProperty(k)) {
            route = route.replace(k, parameters[k]);
        }
    }
    return route;
}

function setEndOfContenteditable(contentEditableElement) {
    var range,selection;
    if(document.createRange)//Firefox, Chrome, Opera, Safari, IE 9+
    {
        range = document.createRange();//Create a range (a range is a like the selection but invisible)
        range.selectNodeContents(contentEditableElement);//Select the entire contents of the element with the range
        range.collapse(false);//collapse the range to the end point. false means collapse to end rather than the start
        selection = window.getSelection();//get the selection object (allows you to change selection)
        selection.removeAllRanges();//remove any selections already made
        selection.addRange(range);//make the range you have just created the visible selection
    }
    else if(document.selection)//IE 8 and lower
    {
        range = document.body.createTextRange();//Create a range (a range is a like the selection but invisible)
        range.moveToElementText(contentEditableElement);//Select the entire contents of the element with the range
        range.collapse(false);//collapse the range to the end point. false means collapse to end rather than the start
        range.select();//Select the range (make it the visible selection
    }
}
