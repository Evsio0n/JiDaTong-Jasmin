.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$ShowNewTweetCountTask
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Integer;>;"
.inner class ShowNewTweetCountTask inner com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$ShowNewTweetCountTask outer com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity

.field private 'mNewList' Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;

.field public 'mOldList' Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;

.method public <init>(Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$ShowNewTweetCountTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
aload 0
aload 2
putfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$ShowNewTweetCountTask/mNewList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
aload 0
aload 3
putfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$ShowNewTweetCountTask/mOldList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
return
.limit locals 4
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$ShowNewTweetCountTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$ShowNewTweetCountTask/mNewList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$ShowNewTweetCountTask/mOldList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/access$600(Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;)I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
.limit locals 2
.limit stack 3
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$ShowNewTweetCountTask/doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
aload 1
invokevirtual java/lang/Integer/intValue()I
ifle L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$ShowNewTweetCountTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
aload 1
invokevirtual java/lang/Integer/intValue()I
invokestatic com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/access$700(Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;I)V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast java/lang/Integer
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$ShowNewTweetCountTask/onPostExecute(Ljava/lang/Integer;)V
return
.limit locals 2
.limit stack 2
.end method
