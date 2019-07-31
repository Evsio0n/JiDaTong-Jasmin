.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity/CommentListActivity$3
.super java/lang/Object
.implements com/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener
.enclosing method com/android/u/weibo/weibo/ui/activity/CommentListActivity/initEvent()V
.inner class inner com/android/u/weibo/weibo/ui/activity/CommentListActivity$3

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;

.method <init>(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onLastItemVisible()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$300(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$300(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter;
invokevirtual com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/getCount()I
bipush 20
if_icmpge L1
L0:
return
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$400(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/controller/Manager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/Manager;
astore 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$500(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
getstatic com/android/u/weibo/weibo/ui/activity/CommentListActivity$15/$SwitchMap$com$android$u$weibo$weibo$ui$adapter$ThreeTypeAdapter$ListViewDataType [I
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$300(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter;
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mType Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType;
invokevirtual com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType/ordinal()I
iaload
tableswitch 1
L2
L3
L4
default : L5
L5:
return
L2:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$300(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$300(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter;
invokevirtual com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/getCount()I
iconst_1
isub
invokevirtual com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/getItem(I)Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/ReplyInfo
astore 2
aload 2
ifnull L6
aload 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/tid J
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/isOnlySina Z
aload 2
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/rid J
aload 2
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/post_time J
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$600(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback;
invokevirtual com/android/u/weibo/weibo/controller/Manager/getOlderCommentList(JZJJLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
return
L6:
aload 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/tid J
iconst_0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/isOnlySina Z
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$600(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback;
invokevirtual com/android/u/weibo/weibo/controller/Manager/refreshCommentList(JZZLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
return
L3:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$300(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$300(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter;
invokevirtual com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/getCount()I
iconst_1
isub
invokevirtual com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/getItem(I)Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/Praisor
astore 2
aload 2
ifnull L7
aload 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/tid J
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/isOnlySina Z
aload 2
getfield com/android/u/weibo/weibo/business/bean/Praisor/id J
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$600(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback;
invokevirtual com/android/u/weibo/weibo/controller/Manager/getOlderPraiseUserList(JZJLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
return
L7:
aload 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/tid J
iconst_0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/isOnlySina Z
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$600(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback;
invokevirtual com/android/u/weibo/weibo/controller/Manager/refreshpRraiseUserList(JZZLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
return
L4:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$300(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$300(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter;
invokevirtual com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/getCount()I
iconst_1
isub
invokevirtual com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/getItem(I)Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/TopicInfo
astore 2
aload 2
ifnull L8
aload 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/tid J
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/isOnlySina Z
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/request_id J
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/post_time J
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$600(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback;
invokevirtual com/android/u/weibo/weibo/controller/Manager/getOlderRetweetList(JZJJLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
return
L8:
aload 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/tid J
iconst_0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/isOnlySina Z
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$600(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback;
invokevirtual com/android/u/weibo/weibo/controller/Manager/refreshRetweetList(JZZLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
return
.limit locals 3
.limit stack 9
.end method
