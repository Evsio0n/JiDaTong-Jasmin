.bytecode 50.0
.class synchronized com/nd/android/u/tast/experience/activity/TaskWebViewActivity$8
.super java/lang/Object
.implements android/widget/PopupWindow$OnDismissListener
.enclosing method com/nd/android/u/tast/experience/activity/TaskWebViewActivity
.inner class inner com/nd/android/u/tast/experience/activity/TaskWebViewActivity$8

.field final synthetic 'this$0' Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;

.method <init>(Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;)V
aload 0
aload 1
putfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity$8/this$0 Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onDismiss()V
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity$8/this$0 Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;
invokestatic com/nd/android/u/tast/experience/activity/TaskWebViewActivity/access$900(Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;)Lcom/common/android/utils/audio/AudioAnimManager;
invokevirtual com/common/android/utils/audio/AudioAnimManager/stopPlay()V
return
.limit locals 1
.limit stack 1
.end method
