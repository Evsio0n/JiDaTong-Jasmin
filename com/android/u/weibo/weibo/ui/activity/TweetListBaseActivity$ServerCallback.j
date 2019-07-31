.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$ServerCallback
.super java/lang/Object
.implements com/android/u/weibo/weibo/controller/NdWeiboListener
.inner class private ServerCallback inner com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$ServerCallback outer com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;

.method private <init>(Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$ServerCallback/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$1;)V
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$ServerCallback/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method public onComplete(ILjava/lang/Object;Ljava/lang/String;)V
aload 2
ifnull L0
aload 2
instanceof com/android/u/weibo/weibo/business/bean/TopicInfoList
ifeq L0
aload 2
checkcast com/android/u/weibo/weibo/business/bean/TopicInfoList
astore 2
iload 1
sipush 1001
if_icmpne L1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$ServerCallback/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
aload 2
aconst_null
invokestatic com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Lcom/android/u/weibo/weibo/controller/NdWeiboException;)V
L0:
return
L1:
iload 1
sipush 1007
if_icmpne L2
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$ServerCallback/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
aload 2
aconst_null
invokestatic com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/access$200(Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Lcom/android/u/weibo/weibo/controller/NdWeiboException;)V
return
L2:
iload 1
sipush 1000
if_icmpne L3
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$ServerCallback/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
aload 2
aconst_null
invokestatic com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/access$300(Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Lcom/android/u/weibo/weibo/controller/NdWeiboException;)V
return
L3:
iload 1
sipush 1009
if_icmpne L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$ServerCallback/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
aload 2
aconst_null
invokestatic com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/access$400(Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Lcom/android/u/weibo/weibo/controller/NdWeiboException;)V
return
.limit locals 4
.limit stack 3
.end method

.method public onError(ILcom/android/u/weibo/weibo/controller/NdWeiboException;)V
iload 1
sipush 1000
if_icmpne L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$ServerCallback/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
aconst_null
aload 2
invokestatic com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/access$300(Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Lcom/android/u/weibo/weibo/controller/NdWeiboException;)V
L1:
return
L0:
iload 1
sipush 1009
if_icmpne L2
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$ServerCallback/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
aconst_null
aload 2
invokestatic com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/access$400(Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Lcom/android/u/weibo/weibo/controller/NdWeiboException;)V
return
L2:
iload 1
sipush 1001
if_icmpne L3
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$ServerCallback/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
aconst_null
aload 2
invokestatic com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Lcom/android/u/weibo/weibo/controller/NdWeiboException;)V
return
L3:
iload 1
sipush 1007
if_icmpne L1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$ServerCallback/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
aconst_null
aload 2
invokestatic com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/access$200(Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Lcom/android/u/weibo/weibo/controller/NdWeiboException;)V
return
.limit locals 3
.limit stack 3
.end method
