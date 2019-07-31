.bytecode 50.0
.class synchronized com/nd/android/u/tast/experience/activity/TaskWebViewActivity$9
.super java/lang/Object
.implements com/common/android/utils/audio/AudioAnimManager$onPlayAudioAnimListener
.enclosing method com/nd/android/u/tast/experience/activity/TaskWebViewActivity
.inner class inner com/nd/android/u/tast/experience/activity/TaskWebViewActivity$9
.inner class inner com/nd/android/u/tast/experience/activity/TaskWebViewActivity$9$1

.field final synthetic 'this$0' Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;

.method <init>(Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;)V
aload 0
aload 1
putfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity$9/this$0 Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onAnimPlaying(I)V
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity$9/this$0 Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;
new com/nd/android/u/tast/experience/activity/TaskWebViewActivity$9$1
dup
aload 0
iload 1
invokespecial com/nd/android/u/tast/experience/activity/TaskWebViewActivity$9$1/<init>(Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity$9;I)V
invokevirtual com/nd/android/u/tast/experience/activity/TaskWebViewActivity/runOnUiThread(Ljava/lang/Runnable;)V
return
.limit locals 2
.limit stack 5
.end method

.method public onPlayFinish()V
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity$9/this$0 Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;
invokestatic com/nd/android/u/tast/experience/activity/TaskWebViewActivity/access$1300(Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;)Landroid/widget/PopupWindow;
ifnull L0
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity$9/this$0 Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;
invokestatic com/nd/android/u/tast/experience/activity/TaskWebViewActivity/access$1300(Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;)Landroid/widget/PopupWindow;
invokevirtual android/widget/PopupWindow/dismiss()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public onPrepare()V
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity$9/this$0 Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;
invokestatic com/nd/android/u/tast/experience/activity/TaskWebViewActivity/access$1200(Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;)V
return
.limit locals 1
.limit stack 1
.end method
