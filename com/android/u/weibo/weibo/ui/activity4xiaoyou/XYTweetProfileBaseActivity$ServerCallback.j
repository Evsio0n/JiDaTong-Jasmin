.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$ServerCallback
.super java/lang/Object
.implements com/android/u/weibo/weibo/controller/NdWeiboListener
.inner class private ServerCallback inner com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$ServerCallback outer com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;

.method private <init>(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$ServerCallback/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$1;)V
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$ServerCallback/<init>(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method public onComplete(ILjava/lang/Object;Ljava/lang/String;)V
aload 2
checkcast com/android/u/weibo/weibo/business/bean/TopicInfoList
astore 2
iload 1
sipush 1002
if_icmpne L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$ServerCallback/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;
aload 2
aconst_null
invokestatic com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/access$600(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Lcom/android/u/weibo/weibo/controller/NdWeiboException;)V
L1:
return
L0:
iload 1
sipush 1008
if_icmpne L1
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$ServerCallback/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;
aload 2
aconst_null
invokestatic com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/access$700(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Lcom/android/u/weibo/weibo/controller/NdWeiboException;)V
return
.limit locals 4
.limit stack 3
.end method

.method public onError(ILcom/android/u/weibo/weibo/controller/NdWeiboException;)V
iload 1
sipush 1002
if_icmpne L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$ServerCallback/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;
aconst_null
aload 2
invokestatic com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/access$600(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Lcom/android/u/weibo/weibo/controller/NdWeiboException;)V
L1:
return
L0:
iload 1
sipush 1008
if_icmpne L1
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$ServerCallback/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;
aconst_null
aload 2
invokestatic com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/access$700(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Lcom/android/u/weibo/weibo/controller/NdWeiboException;)V
return
.limit locals 3
.limit stack 3
.end method
