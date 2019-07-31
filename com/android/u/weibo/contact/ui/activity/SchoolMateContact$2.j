.bytecode 50.0
.class synchronized com/android/u/weibo/contact/ui/activity/SchoolMateContact$2
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/android/u/weibo/contact/ui/activity/SchoolMateContact
.inner class inner com/android/u/weibo/contact/ui/activity/SchoolMateContact$2

.field final synthetic 'this$0' Lcom/android/u/weibo/contact/ui/activity/SchoolMateContact;

.method <init>(Lcom/android/u/weibo/contact/ui/activity/SchoolMateContact;)V
aload 0
aload 1
putfield com/android/u/weibo/contact/ui/activity/SchoolMateContact$2/this$0 Lcom/android/u/weibo/contact/ui/activity/SchoolMateContact;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
getstatic com/android/u/weibo/R$id/header_btn_left I
if_icmpne L0
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact$2/this$0 Lcom/android/u/weibo/contact/ui/activity/SchoolMateContact;
invokestatic com/android/u/weibo/contact/ui/activity/SchoolMateContact/access$600(Lcom/android/u/weibo/contact/ui/activity/SchoolMateContact;)V
L1:
return
L0:
iload 2
getstatic com/android/u/weibo/R$id/xy_contact_rl_weibo I
if_icmpne L1
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact$2/this$0 Lcom/android/u/weibo/contact/ui/activity/SchoolMateContact;
aload 0
getfield com/android/u/weibo/contact/ui/activity/SchoolMateContact$2/this$0 Lcom/android/u/weibo/contact/ui/activity/SchoolMateContact;
invokestatic com/android/u/weibo/contact/ui/activity/SchoolMateContact/access$200(Lcom/android/u/weibo/contact/ui/activity/SchoolMateContact;)J
invokestatic com/android/u/weibo/weibo/utils/WeiboActivityUtils/toTweetProfileActivity(Landroid/content/Context;J)V
return
.limit locals 3
.limit stack 3
.end method
