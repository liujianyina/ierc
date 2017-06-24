<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title></title>
    <link rel="stylesheet" href="css/list.css" />
    <link rel="icon" sizes="any" mask href="/images/title.png">
    <script language="JavaScript">
        function playPause(obj) {
            var id = obj.id.slice()
            var myAudio = document.getElementById(id + "_audio");
            if(myAudio.paused) {
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
        <a href="/index"><img src="images/logo.png"></a>
    </div>
    <div class="title">
        <h2>综合测试页面</h2>
    </div>
    <div class="publish">
        <h3>publish：<a href="#">admin</a></h3>
    </div>
</header>
<hr />

<div class="main">
    <ol>
        <li>
            <div class="content">
                <p>单词测试</p>
                <ul id="display_sentence">
                    <li>
                        <div>
                            <p>abolish</p>
                            <p>
                                <button id="1" onclick="playPause(this)">听一听</button>
                            </p>
                            <audio id="1_audio">
                                <source src="mp3/abolish.wav" type="audio/mpeg">
                            </audio>
                        </div>
                    </li>

                    <li>
                        <div>
                            <p>circulation</p>
                            <p>
                                <button id="2" onclick="playPause(this)">听一听</button>
                            </p>
                            <audio id="2_audio">
                                <source src="mp3/circulation.wav" type="audio/mpeg">
                            </audio>
                        </div>
                    </li>

                    <li>
                        <div>
                            <p>defeated</p>
                            <p>
                                <button id="3" onclick="playPause(this)">听一听</button>
                            </p>
                            <audio id="3_audio">
                                <source src="mp3/defeated.wav" type="audio/mpeg">
                            </audio>
                        </div>
                    </li>

                    <li>
                        <div>
                            <p>emergency</p>
                            <p>
                                <button id="4" onclick="playPause(this)">听一听</button>
                            </p>
                            <audio id="4_audio">
                                <source src="mp3/emergency.wav" type="audio/mpeg">
                            </audio>
                        </div>
                    </li>

                </ul>
            </div>
        </li>
        <li>
            <div class="content">
                <p>段落测试</p>
                <ul id="display_paragraph">
                    <li>
                        <div>
                            <p>1.Approximately one in ten people are paying a visit to the doctor because they are experiencing feelings of tension, anxiety or headaches.</p>
                            <p>
                                <button id="5" onclick="playPause(this)">听一听</button>
                            </p>
                            <audio id="5_audio">
                                <source src="mp3/Approximately.wav" type="audio/mpeg">
                            </audio>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>2.This miracle plant is lavender! It is a wonderful garden plant or bush with bunches of purple flowers with a sweet smell.</p>
                            <p>
                                <button id="6" onclick="playPause(this)">听一听</button>
                            </p>
                            <audio id="6_audio">
                                <source src="mp3/This.wav" type="audio/mpeg">
                            </audio>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>3.语音技术实现了人机语音交互，使人与机器之间沟通变得像人与人沟通一样简单。</p>
                            <p>
                                <button id="7" onclick="playPause(this)">听一听</button>
                            </p>
                            <audio id="7_audio">
                                <source src="mp3/chinese.wav" type="audio/mpeg">
                            </audio>
                        </div>
                    </li>
                </ul>
            </div>
        </li>
        <li>
            <div class="content">
                <p>文章测试</p>
                <ul id="display_paragraph">
                    <li>
                        <div>
                            <p>　　Many people are attracted to or involved with EUPs and don’t even realize it. Often it occurs because of strong sexual chemistry or a desire on our part to nurture or feel maternal, thus attracting emotionally needy people. Once involved, we get caught up in the storm of intense ups and down, tolerating behaviors we never would in a friend or family member. However, while temporarily exciting, a relationship with an EUP is barely tolerable on a long-term basis.</p>
                            <p>
                                <button id="8" onclick="playPause(this)">听一听</button>
                            </p>
                            <audio id="8_audio">
                                <source src="mp3/Many.wav" type="audio/mpeg">
                            </audio>
                        </div>
                    </li>
                </ul>
            </div>

        </li>
    </ol>
</div>

</body>

</html>