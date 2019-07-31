.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity/CommentListActivity$2
.super java/lang/Object
.implements android/view/View$OnTouchListener
.enclosing method com/android/u/weibo/weibo/ui/activity/CommentListActivity/initEvent()V
.inner class inner com/android/u/weibo/weibo/ui/activity/CommentListActivity$2

.field private final 'LONG_PRESS_TIME' I

.field private 'mTime' J

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;

.method <init>(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$2/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
lconst_0
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$2/mTime J
aload 0
sipush 1000
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$2/LONG_PRESS_TIME I
return
.limit locals 2
.limit stack 3
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
aload 2
invokevirtual android/view/MotionEvent/getAction()I
tableswitch 0
L0
L1
L1
default : L2
L2:
iconst_0
ireturn
L0:
aload 0
invokestatic java/lang/System/currentTimeMillis()J
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$2/mTime J
goto L2
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$2/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$200(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Landroid/app/AlertDialog;
ifnull L3
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$2/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$200(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Landroid/app/AlertDialog;
invokevirtual android/app/AlertDialog/isShowing()Z
ifne L2
L3:
invokestatic java/lang/System/currentTimeMillis()J
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$2/mTime J
lsub
ldc2_w 1000L
lcmp
ifle L2
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$2/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$2/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/onLongClickMsg(Ljava/lang/Object;)V
goto L2
.limit locals 3
.limit stack 4
.end method
