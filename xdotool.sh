#！/bin/bash
# sudo bash ./xdotool.sh
# xdotool type "Hello,Xtool!"
# [Shell变量的详解](http://www.cnblogs.com/barrychiao/archive/2012/10/22/2733210.html)
#xdotool type $i txt
Firefox=`xdotool search --title "Mozilla Firefox" | head -1`  
Geany=`xdotool search --title "Geany" | head -1`  
T="1"
TT="1.5"
TTT="3"
# click 1标示左键，2标示中键，3标示右键
#xdotool windowfocus $Firefox 
for ((i=1;i<286;i++))
do 
  #查找鼠标位置
  xdotool getmouselocation
  #查找Firefox
  xdotool search --name "Mozilla Firefox" windowactivate
  xdotool windowfocus $Firefox   key ctrl+l 
  #选中条目 
  xdotool mousemove 520 370  click 1 sleep ${T}
  #点击编辑
  xdotool mousemove 642 235  click 1 sleep ${T}
  #点击文本，全选，并复制
  xdotool mousemove  700 400  click 1 key ctrl+a sleep ${T} key ctrl+c
  #查找窗口，点击选中，新建文档，单击选中，粘贴  
  
  #xdotool search --name "Geany" windowactivate  
  xdotool windowfocus $Geany 
  xdotool mousemove  1200 700 click 1 key ctrl+n sleep ${T}
  xdotool key click 1 sleep ${T} key ctrl+v  sleep ${T} 

  #单击选中，双击全选,修改文件名, 选择保存文件路径，Enter保存
  xdotool key ctrl+w sleep ${T} key "Return"   sleep ${T}
  xdotool mousemove 800 160 click 1 click 1 sleep ${T}
  xdotool type "meizu" ${i} ".txt"
  xdotool mousemove 800 285 click 1 sleep ${T} key "Return"  sleep ${TT}


  #查找Firefox
  xdotool windowfocus $Firefox  key ctrl+l 
  
  #d点击单选框选中条目，单击删除按钮，并确认
  xdotool mousemove  570 370  click 1 sleep ${TT}
  xdotool mousemove 1200 230  click 1 sleep ${TT}
  xdotool mousemove  830 526  click 1 sleep ${TT}

  #挂起
  sleep ${TTT}
  
done
