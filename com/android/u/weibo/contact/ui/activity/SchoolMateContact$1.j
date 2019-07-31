.bytecode 50.0
.class synchronized com/android/u/weibo/contact/ui/activity/SchoolMateContact$1
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/android/u/weibo/contact/ui/activity/SchoolMateContact
.inner class inner com/android/u/weibo/contact/ui/activity/SchoolMateContact$1

.field final synthetic 'this$0' Lcom/android/u/weibo/contact/ui/activity/SchoolMateContact;

.method <init>(Lcom/android/u/weibo/contact/ui/activity/SchoolMateContact;)V
aload 0
aload 1
putfield com/android/u/weibo/contact/ui/activity/SchoolMateContact$1/this$0 Lcom/android/u/weibo/contact/ui/activity/SchoolMateContact;
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
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact$1/this$0 Lcom/android/u/weibo/contact/ui/activity/SchoolMateContact;
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact$1/this$0 Lcom/android/u/weibo/contact/ui/activity/SchoolMateContact;
invokestatic com/android/u/weibo/contact/ui/activity/SchoolMateContact/access$400(Lcom/android/u/weibo/contact/ui/activity/SchoolMateContact;)Ljava/lang/String;
iconst_0
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
L0:
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact$1/this$0 Lcom/android/u/weibo/contact/ui/activity/SchoolMateContact;
invokestatic com/android/u/weibo/contact/ui/activity/SchoolMateContact/access$500(Lcom/android/u/weibo/contact/ui/activity/SchoolMateContact;)V
return
.limit locals 3
.limit stack 3
.end method
