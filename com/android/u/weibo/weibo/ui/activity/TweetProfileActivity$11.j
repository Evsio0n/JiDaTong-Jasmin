.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$11
.super java/lang/Object
.implements com/android/u/weibo/weibo/utils/ImageUtil$DoDialogListener
.enclosing method com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/showManageDlg(Lorg/json/JSONObject;)V
.inner class inner com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$11

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;

.field final synthetic 'val$loveInfo' Lorg/json/JSONObject;

.method <init>(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;Lorg/json/JSONObject;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$11/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
aload 0
aload 2
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$11/val$loveInfo Lorg/json/JSONObject;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
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
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$11/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$11/val$loveInfo Lorg/json/JSONObject;
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
iconst_1
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/doHiddenLoveManage(Landroid/app/Activity;Ljava/lang/String;Z)V
return
.limit locals 3
.limit stack 3
.end method
