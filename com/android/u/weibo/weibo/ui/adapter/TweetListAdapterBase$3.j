.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$3
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/processNdHead(Lcom/android/u/weibo/weibo/ui/adapter/CommomViewHolder;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
.inner class inner com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$3

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;

.field final synthetic 'val$ti' Lcom/android/u/weibo/weibo/business/bean/TopicInfo;

.method <init>(Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$3/this$0 Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;
aload 0
aload 2
putfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$3/val$ti Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$3/this$0 Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;
invokestatic com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/access$000(Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;)J
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$3/val$ti Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
lcmp
ifeq L0
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$3/this$0 Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/mActivity Landroid/app/Activity;
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$3/val$ti Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
invokestatic com/android/u/weibo/weibo/utils/WeiboActivityUtils/toTweetProfileActivity(Landroid/content/Context;J)V
L0:
return
.limit locals 2
.limit stack 4
.end method
