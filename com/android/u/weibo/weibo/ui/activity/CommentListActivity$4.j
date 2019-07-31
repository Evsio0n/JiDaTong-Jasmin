.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity/CommentListActivity$4
.super java/lang/Object
.implements com/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener
.signature "Ljava/lang/Object;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener<Landroid/widget/ListView;>;"
.enclosing method com/android/u/weibo/weibo/ui/activity/CommentListActivity/initEvent()V
.inner class inner com/android/u/weibo/weibo/ui/activity/CommentListActivity$4

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;

.method <init>(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$4/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
.signature "(Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;)V"
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$4/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$4/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$4/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/tid J
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/startGlanceTask(J)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$4/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$400(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/controller/Manager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/Manager;
astore 1
getstatic com/android/u/weibo/weibo/ui/activity/CommentListActivity$15/$SwitchMap$com$android$u$weibo$weibo$ui$adapter$ThreeTypeAdapter$ListViewDataType [I
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$4/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$300(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter;
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mType Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType;
invokevirtual com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType/ordinal()I
iaload
tableswitch 1
L1
L2
L3
default : L0
L0:
return
L3:
aload 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$4/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/tid J
iconst_0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$4/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/isOnlySina Z
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$4/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$600(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback;
invokevirtual com/android/u/weibo/weibo/controller/Manager/refreshRetweetList(JZZLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$4/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
iconst_0
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$702(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;Z)Z
pop
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$4/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
iconst_0
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$802(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;Z)Z
pop
return
L1:
aload 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$4/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/tid J
iconst_0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$4/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/isOnlySina Z
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$4/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$600(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback;
invokevirtual com/android/u/weibo/weibo/controller/Manager/refreshCommentList(JZZLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$4/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
iconst_0
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$702(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;Z)Z
pop
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$4/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
iconst_0
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$902(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;Z)Z
pop
return
L2:
aload 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$4/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/tid J
iconst_1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$4/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/isOnlySina Z
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$4/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$600(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback;
invokevirtual com/android/u/weibo/weibo/controller/Manager/refreshpRraiseUserList(JZZLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$4/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
iconst_0
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$802(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;Z)Z
pop
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$4/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
iconst_0
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$902(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;Z)Z
pop
return
.limit locals 2
.limit stack 6
.end method
