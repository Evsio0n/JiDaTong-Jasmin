.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/OtherContactActivity$5
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/cloud/activity/OtherContactActivity
.inner class inner com/nd/android/u/cloud/activity/OtherContactActivity$5

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/OtherContactActivity;

.method <init>(Lcom/nd/android/u/cloud/activity/OtherContactActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/OtherContactActivity$5/this$0 Lcom/nd/android/u/cloud/activity/OtherContactActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onPostExecute(Lcom/common/android/utils/task/genericTask/GenericTask;Lcom/common/android/utils/task/genericTask/TaskResult;)V
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity$5/this$0 Lcom/nd/android/u/cloud/activity/OtherContactActivity;
invokestatic com/nd/android/u/cloud/activity/OtherContactActivity/access$1300(Lcom/nd/android/u/cloud/activity/OtherContactActivity;)Landroid/app/ProgressDialog;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity$5/this$0 Lcom/nd/android/u/cloud/activity/OtherContactActivity;
invokestatic com/nd/android/u/cloud/activity/OtherContactActivity/access$1300(Lcom/nd/android/u/cloud/activity/OtherContactActivity;)Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/cancel()V
L0:
aload 2
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
if_acmpne L1
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity$5/this$0 Lcom/nd/android/u/cloud/activity/OtherContactActivity;
ldc_w 2131494898
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity$5/this$0 Lcom/nd/android/u/cloud/activity/OtherContactActivity;
invokestatic com/nd/android/u/cloud/activity/OtherContactActivity/access$1300(Lcom/nd/android/u/cloud/activity/OtherContactActivity;)Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
getstatic com/product/android/business/broadcast/PersonInfoBroadHelper/INSTANCE Lcom/product/android/business/broadcast/PersonInfoBroadHelper;
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity$5/this$0 Lcom/nd/android/u/cloud/activity/OtherContactActivity;
new com/product/android/business/login/BindUser
dup
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity$5/this$0 Lcom/nd/android/u/cloud/activity/OtherContactActivity;
invokestatic com/nd/android/u/cloud/activity/OtherContactActivity/access$100(Lcom/nd/android/u/cloud/activity/OtherContactActivity;)Lcom/product/android/commonInterface/contact/OapUser;
invokespecial com/product/android/business/login/BindUser/<init>(Lcom/product/android/commonInterface/contact/OapUser;)V
invokevirtual com/product/android/business/broadcast/PersonInfoBroadHelper/sendModifyMyInfoBroadCast(Landroid/content/Context;Lcom/product/android/business/login/BindUser;)V
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity$5/this$0 Lcom/nd/android/u/cloud/activity/OtherContactActivity;
invokevirtual com/nd/android/u/cloud/activity/OtherContactActivity/finish()V
return
L1:
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity$5/this$0 Lcom/nd/android/u/cloud/activity/OtherContactActivity;
ldc_w 2131495124
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity$5/this$0 Lcom/nd/android/u/cloud/activity/OtherContactActivity;
invokestatic com/nd/android/u/cloud/activity/OtherContactActivity/access$1300(Lcom/nd/android/u/cloud/activity/OtherContactActivity;)Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
return
.limit locals 3
.limit stack 5
.end method

.method public onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity$5/this$0 Lcom/nd/android/u/cloud/activity/OtherContactActivity;
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity$5/this$0 Lcom/nd/android/u/cloud/activity/OtherContactActivity;
invokevirtual com/nd/android/u/cloud/activity/OtherContactActivity/getResources()Landroid/content/res/Resources;
ldc_w 2131494604
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity$5/this$0 Lcom/nd/android/u/cloud/activity/OtherContactActivity;
invokevirtual com/nd/android/u/cloud/activity/OtherContactActivity/getResources()Landroid/content/res/Resources;
ldc_w 2131494901
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual com/nd/android/u/cloud/activity/OtherContactActivity/onBegin(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 4
.end method
