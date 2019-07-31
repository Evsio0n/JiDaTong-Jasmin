.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$6
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/bindDataForLocalTweet(Landroid/view/View;Lcom/android/u/weibo/weibo/ui/adapter/CommomViewHolder;ILcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
.inner class inner com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$6

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;

.field final synthetic 'val$ti' Lcom/android/u/weibo/weibo/business/bean/TopicInfo;

.method <init>(Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$6/this$0 Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;
aload 0
aload 2
putfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$6/val$ti Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$6/this$0 Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$6/val$ti Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
invokevirtual com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/initDelTweetDlg(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$6/this$0 Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;
invokestatic com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/access$100(Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;)Landroid/app/AlertDialog;
invokevirtual android/app/AlertDialog/show()V
return
.limit locals 2
.limit stack 2
.end method
