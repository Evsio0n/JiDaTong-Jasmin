.bytecode 50.0
.class synchronized com/nd/album/ui/activity/AlbumBrowserActivity$2
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/album/ui/activity/AlbumBrowserActivity
.inner class inner com/nd/album/ui/activity/AlbumBrowserActivity$2

.field final synthetic 'this$0' Lcom/nd/album/ui/activity/AlbumBrowserActivity;

.method <init>(Lcom/nd/album/ui/activity/AlbumBrowserActivity;)V
aload 0
aload 1
putfield com/nd/album/ui/activity/AlbumBrowserActivity$2/this$0 Lcom/nd/album/ui/activity/AlbumBrowserActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public getName()Ljava/lang/String;
ldc "deleteGroup"
areturn
.limit locals 1
.limit stack 1
.end method

.method public onPostExecute(Lcom/common/android/utils/task/genericTask/GenericTask;Lcom/common/android/utils/task/genericTask/TaskResult;)V
aload 2
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
if_acmpne L0
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity$2/this$0 Lcom/nd/album/ui/activity/AlbumBrowserActivity;
getstatic com/nd/album/R$string/upload_pic_success I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity$2/this$0 Lcom/nd/album/ui/activity/AlbumBrowserActivity;
invokestatic com/nd/album/ui/activity/AlbumBrowserActivity/access$500(Lcom/nd/album/ui/activity/AlbumBrowserActivity;)V
aload 1
instanceof com/nd/album/ui/activity/AlbumBrowserActivity$UploadImageTask
ifeq L1
aload 1
checkcast com/nd/album/ui/activity/AlbumBrowserActivity$UploadImageTask
astore 1
iconst_0
istore 3
aload 1
getfield com/nd/album/ui/activity/AlbumBrowserActivity$UploadImageTask/sJfCode I
iconst_2
if_icmpne L2
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity$2/this$0 Lcom/nd/album/ui/activity/AlbumBrowserActivity;
invokestatic com/nd/album/ui/activity/AlbumBrowserActivity/access$1400(Lcom/nd/album/ui/activity/AlbumBrowserActivity;)Lcom/nd/album/ui/widget/AlbumTaskOverView;
iconst_0
invokevirtual com/nd/album/ui/widget/AlbumTaskOverView/setFirstLineVisibility(I)V
iconst_1
istore 3
L3:
aload 1
getfield com/nd/album/ui/activity/AlbumBrowserActivity$UploadImageTask/zpCode I
iconst_2
if_icmpne L4
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity$2/this$0 Lcom/nd/album/ui/activity/AlbumBrowserActivity;
invokestatic com/nd/album/ui/activity/AlbumBrowserActivity/access$1400(Lcom/nd/album/ui/activity/AlbumBrowserActivity;)Lcom/nd/album/ui/widget/AlbumTaskOverView;
iconst_0
invokevirtual com/nd/album/ui/widget/AlbumTaskOverView/setSecondLineVisibility(I)V
iconst_1
istore 3
L5:
iload 3
ifeq L1
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity$2/this$0 Lcom/nd/album/ui/activity/AlbumBrowserActivity;
invokestatic com/nd/album/ui/activity/AlbumBrowserActivity/access$1400(Lcom/nd/album/ui/activity/AlbumBrowserActivity;)Lcom/nd/album/ui/widget/AlbumTaskOverView;
iconst_1
invokevirtual com/nd/album/ui/widget/AlbumTaskOverView/beginAnimate(Z)V
L1:
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity$2/this$0 Lcom/nd/album/ui/activity/AlbumBrowserActivity;
invokestatic com/nd/album/ui/activity/AlbumBrowserActivity/access$1500(Lcom/nd/album/ui/activity/AlbumBrowserActivity;)Landroid/app/ProgressDialog;
ifnull L6
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity$2/this$0 Lcom/nd/album/ui/activity/AlbumBrowserActivity;
invokestatic com/nd/album/ui/activity/AlbumBrowserActivity/access$1500(Lcom/nd/album/ui/activity/AlbumBrowserActivity;)Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L6:
return
L2:
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity$2/this$0 Lcom/nd/album/ui/activity/AlbumBrowserActivity;
invokestatic com/nd/album/ui/activity/AlbumBrowserActivity/access$1400(Lcom/nd/album/ui/activity/AlbumBrowserActivity;)Lcom/nd/album/ui/widget/AlbumTaskOverView;
bipush 8
invokevirtual com/nd/album/ui/widget/AlbumTaskOverView/setFirstLineVisibility(I)V
goto L3
L4:
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity$2/this$0 Lcom/nd/album/ui/activity/AlbumBrowserActivity;
invokestatic com/nd/album/ui/activity/AlbumBrowserActivity/access$1400(Lcom/nd/album/ui/activity/AlbumBrowserActivity;)Lcom/nd/album/ui/widget/AlbumTaskOverView;
bipush 8
invokevirtual com/nd/album/ui/widget/AlbumTaskOverView/setSecondLineVisibility(I)V
goto L5
L0:
aload 1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getMessage()Ljava/lang/String;
ifnull L7
aload 1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getMessage()Ljava/lang/String;
ldc "1"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L7
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity$2/this$0 Lcom/nd/album/ui/activity/AlbumBrowserActivity;
invokestatic com/nd/album/ui/activity/AlbumBrowserActivity/access$500(Lcom/nd/album/ui/activity/AlbumBrowserActivity;)V
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity$2/this$0 Lcom/nd/album/ui/activity/AlbumBrowserActivity;
getstatic com/nd/album/R$string/pic_exist I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
goto L1
L7:
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity$2/this$0 Lcom/nd/album/ui/activity/AlbumBrowserActivity;
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L8
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity$2/this$0 Lcom/nd/album/ui/activity/AlbumBrowserActivity;
getstatic com/nd/album/R$string/check_network_for_upload_fail I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
goto L1
L8:
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity$2/this$0 Lcom/nd/album/ui/activity/AlbumBrowserActivity;
getstatic com/nd/album/R$string/upload_pic_fail I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
goto L1
.limit locals 4
.limit stack 2
.end method

.method public onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity$2/this$0 Lcom/nd/album/ui/activity/AlbumBrowserActivity;
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity$2/this$0 Lcom/nd/album/ui/activity/AlbumBrowserActivity;
invokevirtual com/nd/album/ui/activity/AlbumBrowserActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/album/R$string/uploading_pic I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokestatic com/nd/album/ui/activity/AlbumBrowserActivity/access$1300(Lcom/nd/album/ui/activity/AlbumBrowserActivity;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method
