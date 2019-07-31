.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$8
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener
.enclosing method com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/initDelTweetDlg(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
.inner class inner com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$8

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;

.field final synthetic 'val$tweet' Lcom/android/u/weibo/weibo/business/bean/TopicInfo;

.method <init>(Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$8/this$0 Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;
aload 0
aload 2
putfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$8/val$tweet Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
new android/content/Intent
dup
ldc "like-event"
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 3
aload 3
ldc "localCreateAt"
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$8/val$tweet Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/localCreateAt J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 3
ldc "afterDelete2Refresh"
iconst_1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$8/this$0 Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mActivity Landroid/app/Activity;
aload 3
invokevirtual android/app/Activity/sendBroadcast(Landroid/content/Intent;)V
aload 1
invokeinterface android/content/DialogInterface/dismiss()V 0
return
.limit locals 4
.limit stack 4
.end method
