.bytecode 50.0
.class synchronized com/nd/android/u/publicNumber/ui/activity/PspListFragment$RefreshPspInfoTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class private RefreshPspInfoTask inner com/nd/android/u/publicNumber/ui/activity/PspListFragment$RefreshPspInfoTask outer com/nd/android/u/publicNumber/ui/activity/PspListFragment

.field final synthetic 'this$0' Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;

.method private <init>(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;)V
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/activity/PspListFragment$RefreshPspInfoTask/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/publicNumber/ui/activity/PspListFragment$RefreshPspInfoTask/<init>(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment$RefreshPspInfoTask/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspListFragment/access$700(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;)Ljava/lang/String;
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberController/getPublicNumberInfo(Ljava/lang/String;)Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;
astore 1
aload 1
ifnonnull L0
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L0:
iconst_1
istore 2
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment$RefreshPspInfoTask/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspListFragment/access$800(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;)Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 6
L1:
aload 6
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 6
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/ArrayList
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 7
L3:
iload 2
istore 3
aload 7
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 7
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo
astore 8
aload 8
aload 1
invokevirtual com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/equals(Ljava/lang/Object;)Z
ifeq L3
aload 8
aload 1
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/name Ljava/lang/String;
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/name Ljava/lang/String;
aload 8
aload 1
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/sub_status I
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/sub_status I
aload 8
aload 1
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/auth I
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/auth I
aload 8
aload 1
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/logo_url Ljava/lang/String;
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/logo_url Ljava/lang/String;
iconst_0
istore 3
L4:
iload 3
istore 2
iload 3
ifne L1
L2:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment$RefreshPspInfoTask/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspListFragment/access$900(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;)Landroid/widget/ListView;
invokevirtual android/widget/ListView/getChildCount()I
istore 4
iconst_0
istore 2
L5:
iload 2
iload 4
if_icmpge L6
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment$RefreshPspInfoTask/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspListFragment/access$900(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;)Landroid/widget/ListView;
iload 2
invokevirtual android/widget/ListView/getChildAt(I)Landroid/view/View;
astore 1
aload 1
instanceof com/nd/android/u/publicNumber/ui/widget/PspItemViews
ifeq L7
aload 1
checkcast com/nd/android/u/publicNumber/ui/widget/PspItemViews
astore 1
aload 1
invokevirtual com/nd/android/u/publicNumber/ui/widget/PspItemViews/getData()Ljava/util/ArrayList;
astore 6
iconst_0
istore 3
aload 6
invokevirtual java/util/ArrayList/size()I
istore 5
L8:
iload 3
iload 5
if_icmpge L7
aload 6
iload 3
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo
astore 7
aload 7
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/pspid Ljava/lang/String;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment$RefreshPspInfoTask/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspListFragment/access$700(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;)Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L9
aload 1
iload 3
invokevirtual com/nd/android/u/publicNumber/ui/widget/PspItemViews/getItemView(I)Landroid/view/View;
astore 8
aload 8
instanceof com/nd/android/u/publicNumber/ui/widget/PspItemView
ifeq L9
aload 0
iconst_2
anewarray java/lang/Object
dup
iconst_0
aload 8
checkcast com/nd/android/u/publicNumber/ui/widget/PspItemView
aastore
dup
iconst_1
aload 7
aastore
putfield com/nd/android/u/publicNumber/ui/activity/PspListFragment$RefreshPspInfoTask/paraData Ljava/lang/Object;
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L9:
iload 3
iconst_1
iadd
istore 3
goto L8
L7:
iload 2
iconst_1
iadd
istore 2
goto L5
L6:
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 9
.limit stack 5
.end method
