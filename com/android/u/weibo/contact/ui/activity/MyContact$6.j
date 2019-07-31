.bytecode 50.0
.class synchronized com/android/u/weibo/contact/ui/activity/MyContact$6
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/android/u/weibo/contact/ui/activity/MyContact
.inner class inner com/android/u/weibo/contact/ui/activity/MyContact$6

.field final synthetic 'this$0' Lcom/android/u/weibo/contact/ui/activity/MyContact;

.method <init>(Lcom/android/u/weibo/contact/ui/activity/MyContact;)V
aload 0
aload 1
putfield com/android/u/weibo/contact/ui/activity/MyContact$6/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
aload 0
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onPostExecute(Lcom/common/android/utils/task/genericTask/GenericTask;Lcom/common/android/utils/task/genericTask/TaskResult;)V
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$6/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
invokestatic com/android/u/weibo/contact/ui/activity/MyContact/access$2600(Lcom/android/u/weibo/contact/ui/activity/MyContact;)Landroid/app/ProgressDialog;
ifnull L0
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$6/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
invokestatic com/android/u/weibo/contact/ui/activity/MyContact/access$2600(Lcom/android/u/weibo/contact/ui/activity/MyContact;)Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/cancel()V
L0:
aload 2
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
if_acmpne L1
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$6/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
getstatic com/android/u/weibo/R$string/save_user_info_success I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$6/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
invokestatic com/android/u/weibo/contact/ui/activity/MyContact/access$2600(Lcom/android/u/weibo/contact/ui/activity/MyContact;)Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
getstatic com/product/android/business/broadcast/PersonInfoBroadHelper/INSTANCE Lcom/product/android/business/broadcast/PersonInfoBroadHelper;
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$6/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$6/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
invokestatic com/android/u/weibo/contact/ui/activity/MyContact/access$400(Lcom/android/u/weibo/contact/ui/activity/MyContact;)Lcom/product/android/business/login/BindUser;
invokevirtual com/product/android/business/broadcast/PersonInfoBroadHelper/sendModifyMyInfoBroadCast(Landroid/content/Context;Lcom/product/android/business/login/BindUser;)V
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$6/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/finish()V
return
L1:
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$6/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
getstatic com/android/u/weibo/R$string/sorry_for_lost_info_try_again I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$6/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
invokestatic com/android/u/weibo/contact/ui/activity/MyContact/access$2600(Lcom/android/u/weibo/contact/ui/activity/MyContact;)Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
return
.limit locals 3
.limit stack 3
.end method

.method public onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$6/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$6/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/operat_prompt I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$6/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/saving_user_info I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual com/android/u/weibo/contact/ui/activity/MyContact/onBegin(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 4
.end method
