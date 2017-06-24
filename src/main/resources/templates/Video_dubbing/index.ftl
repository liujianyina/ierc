<!DOCTYPE html>
<head>
    <meta charset="utf-8"/>
    <title>公共题库</title>
    <link rel="stylesheet" href="/css/manage.css">
    <link rel="icon" sizes="any" mask href="/images/title.png">
    <script type="text/javascript">
        var audioCtx;
        try {
            audioCtx = new (window.AudioContext || window.webkitAudioContext)();
        } catch (e) {
            console.log("Your browser does not support AudioContext!");
        }
        navigator.getUserMedia = (navigator.getUserMedia || navigator.webkitGetUserMedia ||
        navigator.mozGetUserMedia || navigator.msGetUserMedia);
        if (navigator.getUserMedia) {
            navigator.getUserMedia({
                        audio: true
                    },
                    function (stream) {
                        var source = audioCtx.createMediaStreamSource(stream);
                        var biquadFilter = audioCtx.createBiquadFilter();
                        biquadFilter.type = "lowshelf";
                        biquadFilter.frequency.value = 1000;
                        biquadFilter.gain.value = 25;
                        source.connect(biquadFilter);
                        biquadFilter.connect(audioCtx.destination);
                    },
                    function (err) {
                        console.log("The following gUM error occured: " + err);
                    });
        } else {
            console.log("getUserMedia not supported on your browser!");
        }
    </script>
<#include "../header.ftl">
    <div class="app-content">
        <div ui-butterbar></div>
        <a href class="off-screen-toggle hide" data-toggle="class:off-screen" data-target=".app-aside"></a>
        <div class="app-content-body fade-in-up">
            <!-- COPY the content from "tpl/" -->
            <div class="hbox hbox-auto-xs hbox-auto-sm">
                <div class="col">
                    <div class="table_div" style="margin-top: 100px">
                        <video controls="controls">
                            <source src="/mp4/Titanic.mp4" type="video/mp4"></source>
                        </video>
                    </div>
                </div>
            </div>
        </div>
<#include "../footer.ftl">