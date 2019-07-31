.bytecode 50.0
.class synchronized com/nd/android/u/contact/adapter/XYFriendGroupAdapter$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/contact/adapter/XYFriendGroupAdapter
.inner class inner com/nd/android/u/contact/adapter/XYFriendGroupAdapter$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;

.method <init>(Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;)V
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter$1/this$0 Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aconst_null
astore 3
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/rl_group_itme_layout I
if_icmpne L0
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter$1/this$0 Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;
invokestatic com/nd/android/u/contact/adapter/XYFriendGroupAdapter/access$000(Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;)Landroid/content/Context;
ldc com/nd/android/u/contact/activity/XYGroupListActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 2
L1:
aload 2
ifnull L2
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter$1/this$0 Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;
invokestatic com/nd/android/u/contact/adapter/XYFriendGroupAdapter/access$000(Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;)Landroid/content/Context;
aload 2
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
L2:
return
L0:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/rl_psp_itme_layout I
if_icmpne L3
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter$1/this$0 Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;
invokestatic com/nd/android/u/contact/adapter/XYFriendGroupAdapter/access$000(Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;)Landroid/content/Context;
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/gotoPspActivity(Landroid/content/Context;)V
aload 3
astore 2
goto L1
L3:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/rl_myfans_itme_layout I
if_icmpne L4
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter$1/this$0 Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;
invokestatic com/nd/android/u/contact/adapter/XYFriendGroupAdapter/access$000(Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;)Landroid/content/Context;
ldc com/nd/android/u/contact/activity/SearchFansResultActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
astore 2
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter$1/this$0 Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;
invokestatic com/nd/android/u/contact/adapter/XYFriendGroupAdapter/access$100(Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;)Z
ifeq L1
aload 1
astore 2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifeq L1
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter$1/this$0 Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;
iconst_0
invokestatic com/nd/android/u/contact/adapter/XYFriendGroupAdapter/access$102(Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;Z)Z
pop
ldc com/nd/android/u/contact/dao/NewFansDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/NewFansDao
invokeinterface com/nd/android/u/contact/dao/NewFansDao/deleteAll()V 0
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter$1/this$0 Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;
invokestatic com/nd/android/u/contact/adapter/XYFriendGroupAdapter/access$200(Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;)Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter$1/this$0 Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;
invokestatic com/nd/android/u/contact/adapter/XYFriendGroupAdapter/access$300(Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;)Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter$1/this$0 Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;
invokestatic com/nd/android/u/contact/adapter/XYFriendGroupAdapter/access$400(Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;)Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 1
astore 2
goto L1
L4:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/rl_school_itme_layout I
if_icmpne L5
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter$1/this$0 Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;
invokestatic com/nd/android/u/contact/adapter/XYFriendGroupAdapter/access$000(Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;)Landroid/content/Context;
ldc com/nd/android/u/contact/activity/XYSchoolListActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 2
goto L1
L5:
aload 3
astore 2
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/rl_senior_itme_layout I
if_icmpne L1
getstatic com/nd/android/u/contact/business/ContactGlobalVariable/gIsSenior Z
ifeq L6
getstatic com/nd/android/u/contact/business/ContactGlobalVariable/gHasBeanSenior Z
ifne L7
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter$1/this$0 Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;
invokestatic com/nd/android/u/contact/adapter/XYFriendGroupAdapter/access$000(Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter$1/this$0 Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;
invokestatic com/nd/android/u/contact/adapter/XYFriendGroupAdapter/access$500(Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;)J
iconst_1
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel/gotoSeniorApplyActivity(Landroid/content/Context;JZ)I
pop
aload 3
astore 2
goto L1
L7:
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter$1/this$0 Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;
invokestatic com/nd/android/u/contact/adapter/XYFriendGroupAdapter/access$000(Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;)Landroid/content/Context;
ldc com/nd/android/u/contact/activity/senior/MySeniorActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 2
aload 2
ldc "hasNewData"
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter$1/this$0 Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;
invokestatic com/nd/android/u/contact/adapter/XYFriendGroupAdapter/access$600(Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;)Z
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
goto L1
L6:
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter$1/this$0 Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;
invokestatic com/nd/android/u/contact/adapter/XYFriendGroupAdapter/access$700(Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;)Z
ifeq L8
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter$1/this$0 Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;
invokestatic com/nd/android/u/contact/adapter/XYFriendGroupAdapter/access$000(Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;)Landroid/content/Context;
ldc com/nd/android/u/contact/activity/senior/FindSeniorActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 2
goto L1
L8:
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendGroupAdapter$1/this$0 Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;
invokestatic com/nd/android/u/contact/adapter/XYFriendGroupAdapter/access$000(Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;)Landroid/content/Context;
ldc com/nd/android/u/contact/activity/senior/MySeniorActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 2
goto L1
.limit locals 4
.limit stack 4
.end method
