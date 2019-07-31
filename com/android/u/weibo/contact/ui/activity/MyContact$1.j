.bytecode 50.0
.class synchronized com/android/u/weibo/contact/ui/activity/MyContact$1
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/android/u/weibo/contact/ui/activity/MyContact
.inner class inner com/android/u/weibo/contact/ui/activity/MyContact$1

.field final synthetic 'this$0' Lcom/android/u/weibo/contact/ui/activity/MyContact;

.method <init>(Lcom/android/u/weibo/contact/ui/activity/MyContact;)V
aload 0
aload 1
putfield com/android/u/weibo/contact/ui/activity/MyContact$1/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
aload 0
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onPostExecute(Lcom/common/android/utils/task/genericTask/GenericTask;Lcom/common/android/utils/task/genericTask/TaskResult;)V
aload 2
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
if_acmpne L0
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$1/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$1/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
invokestatic com/android/u/weibo/contact/ui/activity/MyContact/access$300(Lcom/android/u/weibo/contact/ui/activity/MyContact;)Ljava/lang/String;
iconst_0
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
L0:
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$1/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
invokestatic com/android/u/weibo/contact/ui/activity/MyContact/access$100(Lcom/android/u/weibo/contact/ui/activity/MyContact;)Lcom/product/android/business/login/BindUser;
ifnull L1
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$1/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
invokestatic com/android/u/weibo/contact/ui/activity/MyContact/access$400(Lcom/android/u/weibo/contact/ui/activity/MyContact;)Lcom/product/android/business/login/BindUser;
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$1/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
invokestatic com/android/u/weibo/contact/ui/activity/MyContact/access$100(Lcom/android/u/weibo/contact/ui/activity/MyContact;)Lcom/product/android/business/login/BindUser;
invokevirtual com/product/android/business/login/BindUser/updateUser(Lcom/product/android/business/login/BindUser;)V
L1:
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$1/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
invokestatic com/android/u/weibo/contact/ui/activity/MyContact/access$500(Lcom/android/u/weibo/contact/ui/activity/MyContact;)V
return
.limit locals 3
.limit stack 3
.end method
