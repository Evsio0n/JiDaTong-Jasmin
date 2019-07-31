.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$BtnClickListener
.super java/lang/Object
.implements android/view/View$OnClickListener
.inner class private BtnClickListener inner com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$BtnClickListener outer com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase

.field private 'mTweet' Lcom/android/u/weibo/weibo/business/bean/TopicInfo;

.field private 'mViewholder' Lcom/android/u/weibo/weibo/ui/adapter/CommomViewHolder;

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;

.method public <init>(Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;Lcom/android/u/weibo/weibo/ui/adapter/CommomViewHolder;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$BtnClickListener/this$0 Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 2
putfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$BtnClickListener/mTweet Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
aload 0
aload 3
putfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$BtnClickListener/mViewholder Lcom/android/u/weibo/weibo/ui/adapter/CommomViewHolder;
return
.limit locals 4
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
getstatic com/android/u/weibo/R$id/like_count I
if_icmpne L0
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$BtnClickListener/this$0 Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;
aload 1
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$BtnClickListener/mTweet Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$BtnClickListener/mViewholder Lcom/android/u/weibo/weibo/ui/adapter/CommomViewHolder;
invokestatic com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/access$200(Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;Landroid/view/View;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;Lcom/android/u/weibo/weibo/ui/adapter/CommomViewHolder;)V
L1:
return
L0:
iload 2
getstatic com/android/u/weibo/R$id/reply_count I
if_icmpne L2
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$BtnClickListener/mTweet Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/replys I
ifne L3
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$BtnClickListener/this$0 Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$BtnClickListener/mTweet Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
invokestatic com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/access$300(Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
return
L3:
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$BtnClickListener/this$0 Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$BtnClickListener/mTweet Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
iconst_1
invokevirtual com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/startCommentListActivity(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;Z)V
return
L2:
iload 2
getstatic com/android/u/weibo/R$id/retweet_count I
if_icmpne L1
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$BtnClickListener/this$0 Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase$BtnClickListener/mTweet Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
invokestatic com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/access$400(Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
return
.limit locals 3
.limit stack 4
.end method
