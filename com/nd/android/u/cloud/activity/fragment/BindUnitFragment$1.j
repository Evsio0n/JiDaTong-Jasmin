.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/fragment/BindUnitFragment$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/cloud/activity/fragment/BindUnitFragment/initComponent(Landroid/view/View;)V
.inner class inner com/nd/android/u/cloud/activity/fragment/BindUnitFragment$1

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/fragment/BindUnitFragment;

.method <init>(Lcom/nd/android/u/cloud/activity/fragment/BindUnitFragment;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/fragment/BindUnitFragment$1/this$0 Lcom/nd/android/u/cloud/activity/fragment/BindUnitFragment;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/cloud/activity/fragment/BindUnitFragment$1/this$0 Lcom/nd/android/u/cloud/activity/fragment/BindUnitFragment;
invokestatic com/nd/android/u/cloud/activity/fragment/BindUnitFragment/access$000(Lcom/nd/android/u/cloud/activity/fragment/BindUnitFragment;)Z
ifeq L0
aload 0
getfield com/nd/android/u/cloud/activity/fragment/BindUnitFragment$1/this$0 Lcom/nd/android/u/cloud/activity/fragment/BindUnitFragment;
invokevirtual com/nd/android/u/cloud/activity/fragment/BindUnitFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
astore 1
aload 0
getfield com/nd/android/u/cloud/activity/fragment/BindUnitFragment$1/this$0 Lcom/nd/android/u/cloud/activity/fragment/BindUnitFragment;
invokestatic com/nd/android/u/cloud/activity/fragment/BindUnitFragment/access$100(Lcom/nd/android/u/cloud/activity/fragment/BindUnitFragment;)Ljava/util/List;
invokeinterface java/util/List/isEmpty()Z 0
ifeq L1
aload 1
ldc_w 2131493993
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
L0:
return
L1:
new com/nd/android/u/cloud/activity/fragment/BindUnitFragment$BindIdentityTask
dup
aload 1
aload 0
getfield com/nd/android/u/cloud/activity/fragment/BindUnitFragment$1/this$0 Lcom/nd/android/u/cloud/activity/fragment/BindUnitFragment;
invokestatic com/nd/android/u/cloud/activity/fragment/BindUnitFragment/access$200(Lcom/nd/android/u/cloud/activity/fragment/BindUnitFragment;)Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo;
invokespecial com/nd/android/u/cloud/activity/fragment/BindUnitFragment$BindIdentityTask/<init>(Landroid/app/Activity;Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonUnitsInfo;)V
iconst_1
anewarray java/util/List
dup
iconst_0
aload 0
getfield com/nd/android/u/cloud/activity/fragment/BindUnitFragment$1/this$0 Lcom/nd/android/u/cloud/activity/fragment/BindUnitFragment;
invokestatic com/nd/android/u/cloud/activity/fragment/BindUnitFragment/access$100(Lcom/nd/android/u/cloud/activity/fragment/BindUnitFragment;)Ljava/util/List;
aastore
invokevirtual com/nd/android/u/cloud/activity/fragment/BindUnitFragment$BindIdentityTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 2
.limit stack 5
.end method
