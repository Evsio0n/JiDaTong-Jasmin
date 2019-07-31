.bytecode 50.0
.class synchronized com/nd/schoollife/ui/post/activity/PraiseListActivity$1
.super java/lang/Object
.implements android/widget/AdapterView$OnItemClickListener
.enclosing method com/nd/schoollife/ui/post/activity/PraiseListActivity/initEvent()V
.inner class inner com/nd/schoollife/ui/post/activity/PraiseListActivity$1

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/post/activity/PraiseListActivity;

.method <init>(Lcom/nd/schoollife/ui/post/activity/PraiseListActivity;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/post/activity/PraiseListActivity$1/this$0 Lcom/nd/schoollife/ui/post/activity/PraiseListActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
aload 0
getfield com/nd/schoollife/ui/post/activity/PraiseListActivity$1/this$0 Lcom/nd/schoollife/ui/post/activity/PraiseListActivity;
invokestatic com/nd/schoollife/ui/post/activity/PraiseListActivity/access$000(Lcom/nd/schoollife/ui/post/activity/PraiseListActivity;)Lcom/nd/schoollife/ui/post/adapter/PraiseAdapter;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/post/activity/PraiseListActivity$1/this$0 Lcom/nd/schoollife/ui/post/activity/PraiseListActivity;
invokestatic com/nd/schoollife/ui/post/activity/PraiseListActivity/access$000(Lcom/nd/schoollife/ui/post/activity/PraiseListActivity;)Lcom/nd/schoollife/ui/post/adapter/PraiseAdapter;
invokevirtual com/nd/schoollife/ui/post/adapter/PraiseAdapter/getList()Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/post/activity/PraiseListActivity$1/this$0 Lcom/nd/schoollife/ui/post/activity/PraiseListActivity;
invokestatic com/nd/schoollife/ui/post/activity/PraiseListActivity/access$000(Lcom/nd/schoollife/ui/post/activity/PraiseListActivity;)Lcom/nd/schoollife/ui/post/adapter/PraiseAdapter;
invokevirtual com/nd/schoollife/ui/post/adapter/PraiseAdapter/getList()Ljava/util/List;
iload 3
aload 0
getfield com/nd/schoollife/ui/post/activity/PraiseListActivity$1/this$0 Lcom/nd/schoollife/ui/post/activity/PraiseListActivity;
invokestatic com/nd/schoollife/ui/post/activity/PraiseListActivity/access$100(Lcom/nd/schoollife/ui/post/activity/PraiseListActivity;)Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
invokevirtual android/widget/ListView/getHeaderViewsCount()I
isub
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
ifnull L0
aload 0
getfield com/nd/schoollife/ui/post/activity/PraiseListActivity$1/this$0 Lcom/nd/schoollife/ui/post/activity/PraiseListActivity;
invokestatic com/nd/schoollife/ui/post/activity/PraiseListActivity/access$000(Lcom/nd/schoollife/ui/post/activity/PraiseListActivity;)Lcom/nd/schoollife/ui/post/adapter/PraiseAdapter;
invokevirtual com/nd/schoollife/ui/post/adapter/PraiseAdapter/getList()Ljava/util/List;
iload 3
aload 0
getfield com/nd/schoollife/ui/post/activity/PraiseListActivity$1/this$0 Lcom/nd/schoollife/ui/post/activity/PraiseListActivity;
invokestatic com/nd/schoollife/ui/post/activity/PraiseListActivity/access$100(Lcom/nd/schoollife/ui/post/activity/PraiseListActivity;)Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
invokevirtual android/widget/ListView/getHeaderViewsCount()I
isub
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/structure/PraiseUserInfoBean
invokevirtual com/nd/android/forumsdk/business/bean/structure/PraiseUserInfoBean/getUser_info()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
astore 1
aload 0
getfield com/nd/schoollife/ui/post/activity/PraiseListActivity$1/this$0 Lcom/nd/schoollife/ui/post/activity/PraiseListActivity;
invokestatic com/nd/schoollife/ui/post/activity/PraiseListActivity/access$200(Lcom/nd/schoollife/ui/post/activity/PraiseListActivity;)Landroid/content/Context;
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/getUid()J
invokestatic com/nd/schoollife/schoollifeinterfaceImpl/CallOtherModel/gotoUserMainActivity(Landroid/content/Context;J)V
L0:
return
.limit locals 6
.limit stack 3
.end method
