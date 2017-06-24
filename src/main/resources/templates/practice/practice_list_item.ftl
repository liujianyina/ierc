<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>${exerName}</title>
    <link href="/css/list.css" rel="stylesheet" type="text/css">
    <link rel="icon" sizes="any" mask href="/images/title.png">
    <script language="JavaScript">
        function playPause(obj) {
            var id = obj.id.slice()
            var myAudio = document.getElementById(id + "_audio");
            if (myAudio.paused) {
                myAudio.play();
            } else {
                myAudio.pause();
            }
        }
    </script>
</head>

<body>

<header>
    <div class="logo">
        <a href="/index"><img src="/images/logo.png"></a>
    </div>
    <div class="title">
        <h2>${exerName}</h2>
    </div>
    <div class="publish">
        <h3>publish：<a href="#">${publish}</a></h3>
    </div>
</header>

<hr/>

<div class="main">
    <div class="content">
    <#--<form action="" method="post">-->
        <ul>
        <#list allItem as item>
        ${item.id}、${item.body}
            <button id="${item.id}" onclick="playPause(this)">听题</button>
            <p><input type="radio" name="${item.id}" value="A"/>A、${item.optionA} </p>
            <p><input type="radio" name="${item.id}" value="B"/>B、${item.optionB} </p>
            <p><input type="radio" name="${item.id}" value="C"/>C、${item.optionC} </p>
            <p><input type="radio" name="${item.id}" value="D"/>D、${item.optionD} </p>
            <audio id="${item.id}_audio">
                <source src="${Langurl}${item.toString()}" type="audio/mpeg">
            </audio>
        </#list>
        </ul>
        <button>提交</button>
    <#--</form>-->
    </div>
</div>
<hr/>
</body>
</html>