.bytecode 50.0
.class synchronized com/nd/album/ui/activity/PhotoCommentActivity$5
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/album/ui/activity/PhotoCommentActivity
.inner class inner com/nd/album/ui/activity/PhotoCommentActivity$5

.field final synthetic 'this$0' Lcom/nd/album/ui/activity/PhotoCommentActivity;

.method <init>(Lcom/nd/album/ui/activity/PhotoCommentActivity;)V
aload 0
aload 1
putfield com/nd/album/ui/activity/PhotoCommentActivity$5/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onPostExecute(Lcom/common/android/utils/task/genericTask/GenericTask;Lcom/common/android/utils/task/genericTask/TaskResult;)V
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity$5/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
invokestatic com/nd/album/ui/activity/PhotoCommentActivity/access$1400(Lcom/nd/album/ui/activity/PhotoCommentActivity;)Lcom/product/android/commonInterface/album/Image;
invokevirtual com/product/android/commonInterface/album/Image/isMyPraise()I
istore 3
ldc ""
astore 1
aload 2
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
if_acmpne L0
iload 3
iconst_1
if_icmpne L1
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity$5/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
invokevirtual com/nd/album/ui/activity/PhotoCommentActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/album/R$string/zan_success I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
astore 1
L2:
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity$5/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
invokestatic com/nd/album/ui/activity/PhotoCommentActivity/access$1700(Lcom/nd/album/ui/activity/PhotoCommentActivity;)V
L3:
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity$5/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
aload 1
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
return
L1:
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity$5/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
invokevirtual com/nd/album/ui/activity/PhotoCommentActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/album/R$string/cancel_zan_success I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
astore 1
goto L2
L0:
aload 2
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
if_acmpne L3
iload 3
ifne L4
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity$5/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
invokevirtual com/nd/album/ui/activity/PhotoCommentActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/album/R$string/zan_fail I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
astore 1
goto L3
L4:
aload 0
getfield com/nd/album/ui/activity/PhotoCommentActivity$5/this$0 Lcom/nd/album/ui/activity/PhotoCommentActivity;
invokevirtual com/nd/album/ui/activity/PhotoCommentActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/album/R$string/cancel_zan_fail I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
astore 1
goto L3
.limit locals 4
.limit stack 2
.end method
