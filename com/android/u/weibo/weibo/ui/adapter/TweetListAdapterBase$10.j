.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$10
.super com/android/u/weibo/weibo/utils/NoLineClickSpan
.enclosing method com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/addGoOnRead(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)Landroid/text/SpannableString;
.inner class inner com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$10

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;

.field final synthetic 'val$tweet' Lcom/android/u/weibo/weibo/business/bean/TopicInfo;

.method <init>(Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;Ljava/lang/String;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$10/this$0 Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;
aload 0
aload 3
putfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$10/val$tweet Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
aload 0
aload 2
invokespecial com/android/u/weibo/weibo/utils/NoLineClickSpan/<init>(Ljava/lang/String;)V
return
.limit locals 4
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$10/this$0 Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$10/val$tweet Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
iconst_0
invokevirtual com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/startCommentListActivity(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;Z)V
return
.limit locals 2
.limit stack 3
.end method
