.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/bindData(Landroid/view/View;Lcom/android/u/weibo/weibo/ui/adapter/CommomViewHolder;ILcom/android/u/weibo/weibo/business/bean/TopicInfo;Z)V
.inner class inner com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$1

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;

.field final synthetic 'val$ti' Lcom/android/u/weibo/weibo/business/bean/TopicInfo;

.method <init>(Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$1/this$0 Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;
aload 0
aload 2
putfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$1/val$ti Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$1/this$0 Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$1/val$ti Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/root_topic Lcom/android/u/weibo/weibo/business/bean/RootTopic;
getfield com/android/u/weibo/weibo/business/bean/RootTopic/topic Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
iconst_0
invokevirtual com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/startCommentListActivity(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;Z)V
return
.limit locals 2
.limit stack 3
.end method
