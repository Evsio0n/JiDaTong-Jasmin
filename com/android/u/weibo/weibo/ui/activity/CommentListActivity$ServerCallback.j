.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback
.super com/android/u/weibo/weibo/controller/NdPostOrReTweetListener
.inner class private ServerCallback inner com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback outer com/android/u/weibo/weibo/ui/activity/CommentListActivity
.inner class inner com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$1
.inner class inner com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$2
.inner class inner com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$3
.inner class inner com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$4
.inner class inner com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$5
.inner class inner com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$6
.inner class inner com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$7
.inner class inner com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$8

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;

.method private <init>(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
aload 0
invokespecial com/android/u/weibo/weibo/controller/NdPostOrReTweetListener/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity$1;)V
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback/<init>(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method public onComplete(ILjava/lang/Object;Ljava/lang/String;J)V
iload 1
sipush 2001
if_icmpne L0
aload 2
checkcast com/android/u/weibo/weibo/business/bean/ReplyInfoList
astore 2
aload 2
iconst_0
invokestatic com/android/u/weibo/weibo/utils/ConvertTweetListUtils/convertReplyTopicList(Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;Z)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
new com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$1
dup
aload 0
aload 2
invokespecial com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$1/<init>(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback;Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;)V
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/runOnUiThread(Ljava/lang/Runnable;)V
L1:
return
L0:
iload 1
sipush 2005
if_icmpne L2
aload 2
checkcast com/android/u/weibo/weibo/business/bean/ReplyInfoList
astore 2
aload 2
iconst_0
invokestatic com/android/u/weibo/weibo/utils/ConvertTweetListUtils/convertReplyTopicList(Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;Z)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
new com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$2
dup
aload 0
aload 2
invokespecial com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$2/<init>(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback;Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;)V
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/runOnUiThread(Ljava/lang/Runnable;)V
return
L2:
iload 1
sipush 6001
if_icmpne L3
aload 2
checkcast com/android/u/weibo/weibo/business/bean/PraisorList
astore 2
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
new com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$3
dup
aload 0
aload 2
invokespecial com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$3/<init>(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback;Lcom/android/u/weibo/weibo/business/bean/PraisorList;)V
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/runOnUiThread(Ljava/lang/Runnable;)V
return
L3:
iload 1
sipush 6002
if_icmpne L4
aload 2
checkcast com/android/u/weibo/weibo/business/bean/PraisorList
astore 2
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
new com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$4
dup
aload 0
aload 2
invokespecial com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$4/<init>(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback;Lcom/android/u/weibo/weibo/business/bean/PraisorList;)V
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/runOnUiThread(Ljava/lang/Runnable;)V
return
L4:
iload 1
sipush 7001
if_icmpne L5
aload 2
checkcast com/android/u/weibo/weibo/business/bean/TopicInfoList
astore 2
aload 2
iconst_0
invokestatic com/android/u/weibo/weibo/utils/ConvertTweetListUtils/convertTopicList(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Z)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
new com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$5
dup
aload 0
aload 2
invokespecial com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$5/<init>(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback;Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;)V
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/runOnUiThread(Ljava/lang/Runnable;)V
return
L5:
iload 1
sipush 7002
if_icmpne L1
aload 2
checkcast com/android/u/weibo/weibo/business/bean/TopicInfoList
astore 2
aload 2
iconst_0
invokestatic com/android/u/weibo/weibo/utils/ConvertTweetListUtils/convertTopicList(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Z)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
new com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$6
dup
aload 0
aload 2
invokespecial com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$6/<init>(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback;Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;)V
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/runOnUiThread(Ljava/lang/Runnable;)V
return
.limit locals 6
.limit stack 5
.end method

.method public onError(ILcom/android/u/weibo/weibo/controller/NdWeiboException;J)V
iload 1
sipush 2005
if_icmpeq L0
iload 1
sipush 7002
if_icmpeq L0
iload 1
sipush 6002
if_icmpne L1
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
new com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$7
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$7/<init>(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback;)V
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/runOnUiThread(Ljava/lang/Runnable;)V
return
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
new com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$8
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$8/<init>(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback;)V
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/runOnUiThread(Ljava/lang/Runnable;)V
return
.limit locals 5
.limit stack 4
.end method
