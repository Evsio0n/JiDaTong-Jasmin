.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$10
.super java/lang/Object
.implements com/android/u/weibo/weibo/utils/ImageUtil$DoDialogListener
.enclosing method com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/showAddDlg()V
.inner class inner com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$10

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;

.method <init>(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$10/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onNegativeClick(Landroid/content/DialogInterface;I)V
aload 1
invokeinterface android/content/DialogInterface/dismiss()V 0
return
.limit locals 3
.limit stack 1
.end method

.method public onPositiveClick(Landroid/content/DialogInterface;I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$10/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$3700(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)V
return
.limit locals 3
.limit stack 1
.end method
