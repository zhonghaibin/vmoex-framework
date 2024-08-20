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

function handleNewChat(data) {
    success(data.username + '：' + data.content);
    $('.nav-chat-dot').addClass('push-notifications-count');
    var chatBox = $('#chat-box ul.chat');
    var loc ='left';
    var chatItem = `
            <li class="${loc} clearfix">
                <span class="chat-img pull-${loc}">
                    <img style="border-radius: 5px" width="50" height="50" src="${data.avatar}" alt="User Avatar">
                </span>
                <div class="chat-body clearfix">
                    <div class="header">
                        ${loc === 'right' ? `
                            <small class="text-muted">
                                <i class="fa fa-clock-o fa-fw"></i> 刚刚
                            </small>
                            <strong class="pull-right primary-font"><a href="/member/${data.username}">${data.nickname}</a></strong>
                        ` : `
                            <strong class="primary-font"><a href="/member/${data.username}">${data.nickname}</a></strong>
                            <small class="pull-right text-muted">
                                <i class="fa fa-clock-o fa-fw"></i> 刚刚
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
