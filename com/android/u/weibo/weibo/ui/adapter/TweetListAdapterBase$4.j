.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$4
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/bindDataForLocalTweet(Landroid/view/View;Lcom/android/u/weibo/weibo/ui/adapter/CommomViewHolder;ILcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
.inner class inner com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$4

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;

.method <init>(Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$4/this$0 Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$4/this$0 Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mActivity Landroid/app/Activity;
invokestatic com/android/u/weibo/weibo/controller/GlobalSetting/getUid()J
invokestatic com/android/u/weibo/weibo/utils/WeiboActivityUtils/toTweetProfileActivity(Landroid/content/Context;J)V
return
.limit locals 2
.limit stack 3
.end method
