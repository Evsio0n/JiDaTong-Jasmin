.bytecode 50.0
.class synchronized com/nd/schoollife/ui/community/activity/CreateCommunityActivity$2
.super java/lang/Object
.implements com/nd/schoollife/ui/community/task/CommunityTask$CommunityTaskCallback
.enclosing method com/nd/schoollife/ui/community/activity/CreateCommunityActivity/onNextCommunitySignTask()V
.inner class inner com/nd/schoollife/ui/community/activity/CreateCommunityActivity$2

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;

.method <init>(Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity$2/this$0 Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onProcessPreExecute()V
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity$2/this$0 Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;
getstatic com/nd/schoollife/R$id/pb_create_community_load_community_signs I
invokevirtual com/nd/schoollife/ui/community/activity/CreateCommunityActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ProgressBar
iconst_0
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity$2/this$0 Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;
getstatic com/nd/schoollife/R$id/ll_create_community_sign_signs_group I
invokevirtual com/nd/schoollife/ui/community/activity/CreateCommunityActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public transient onProcessingExecute([Ljava/lang/Object;)V
return
.limit locals 2
.limit stack 0
.end method

.method public onProcessingPostExecute(Ljava/lang/Object;)V
aload 1
ifnull L0
aload 1
instanceof com/nd/schoollife/common/bean/SchoolLifeResultBase
ifeq L0
aload 1
checkcast com/nd/schoollife/common/bean/SchoolLifeResultBase
invokevirtual com/nd/schoollife/common/bean/SchoolLifeResultBase/getResultCode()I
sipush 200
if_icmpne L0
aload 1
checkcast com/nd/schoollife/common/bean/result/ResultGetCommunityTags
astore 1
aload 1
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityTags/getList()Ljava/util/List;
astore 2
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity$2/this$0 Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;
aload 1
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityTags/getTotal()I
invokestatic com/nd/schoollife/ui/community/activity/CreateCommunityActivity/access$602(Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;I)I
pop
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity$2/this$0 Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;
invokestatic com/nd/schoollife/ui/community/activity/CreateCommunityActivity/access$700(Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;)Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;
invokevirtual com/nd/schoollife/ui/community/adapter/CommunityTagList/clear()V
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity$2/this$0 Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;
invokestatic com/nd/schoollife/ui/community/activity/CreateCommunityActivity/access$700(Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;)Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;
aload 2
invokevirtual com/nd/schoollife/ui/community/adapter/CommunityTagList/setTagInfo(Ljava/util/List;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity$2/this$0 Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;
getstatic com/nd/schoollife/R$id/pb_create_community_load_community_signs I
invokevirtual com/nd/schoollife/ui/community/activity/CreateCommunityActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ProgressBar
bipush 8
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity$2/this$0 Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;
getstatic com/nd/schoollife/R$id/gv_create_community_community_signs I
invokevirtual com/nd/schoollife/ui/community/activity/CreateCommunityActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/GridView
new com/nd/schoollife/ui/community/adapter/CommunityTagSelectingGridviewAdapter
dup
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity$2/this$0 Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity$2/this$0 Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;
invokestatic com/nd/schoollife/ui/community/activity/CreateCommunityActivity/access$800(Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;)Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity$2/this$0 Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;
invokestatic com/nd/schoollife/ui/community/activity/CreateCommunityActivity/access$700(Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;)Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;
invokespecial com/nd/schoollife/ui/community/adapter/CommunityTagSelectingGridviewAdapter/<init>(Landroid/content/Context;Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;)V
invokevirtual android/widget/GridView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity$2/this$0 Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;
getstatic com/nd/schoollife/R$id/ll_create_community_sign_signs_group I
invokevirtual com/nd/schoollife/ui/community/activity/CreateCommunityActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
L1:
return
L0:
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity$2/this$0 Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;
getstatic com/nd/schoollife/R$id/pb_create_community_load_community_signs I
invokevirtual com/nd/schoollife/ui/community/activity/CreateCommunityActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ProgressBar
bipush 8
invokevirtual android/widget/ProgressBar/setVisibility(I)V
invokestatic com/nd/schoollife/common/utils/ui/SchoolLifeGlobal/getInstance()Lcom/nd/schoollife/common/utils/ui/SchoolLifeGlobal;
getstatic com/nd/schoollife/ui/community/activity/CreateCommunityActivity/TAG Ljava/lang/String;
invokevirtual com/nd/schoollife/common/utils/ui/SchoolLifeGlobal/isActivityRunning(Ljava/lang/String;)Z
ifeq L1
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity$2/this$0 Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;
invokestatic com/nd/schoollife/ui/community/activity/CreateCommunityActivity/access$900(Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity$2/this$0 Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;
invokestatic com/nd/schoollife/ui/community/activity/CreateCommunityActivity/access$1000(Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;)Landroid/content/Context;
getstatic com/nd/schoollife/R$string/community_get_sign_failed I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showShortToast(Landroid/content/Context;Ljava/lang/String;)V
return
.limit locals 3
.limit stack 6
.end method
