.bytecode 50.0
.class synchronized com/nd/schoollife/ui/square/activity/SquareMyGroupActivity$MyGroupViewAdapter
.super android/support/v4/view/PagerAdapter
.inner class static MyGroupViewAdapter inner com/nd/schoollife/ui/square/activity/SquareMyGroupActivity$MyGroupViewAdapter outer com/nd/schoollife/ui/square/activity/SquareMyGroupActivity

.field private 'mAllView' Lcom/nd/schoollife/ui/square/view/widget/AllGroupView;

.field private 'mContext' Landroid/content/Context;

.field private 'mManagerView' Lcom/nd/schoollife/ui/square/view/widget/AllGroupView;

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial android/support/v4/view/PagerAdapter/<init>()V
aload 0
aload 1
putfield com/nd/schoollife/ui/square/activity/SquareMyGroupActivity$MyGroupViewAdapter/mContext Landroid/content/Context;
return
.limit locals 2
.limit stack 2
.end method

.method public getCount()I
iconst_2
ireturn
.limit locals 1
.limit stack 1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
iload 2
ifne L0
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareMyGroupActivity$MyGroupViewAdapter/mAllView Lcom/nd/schoollife/ui/square/view/widget/AllGroupView;
ifnonnull L1
aload 0
new com/nd/schoollife/ui/square/view/widget/AllGroupView
dup
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareMyGroupActivity$MyGroupViewAdapter/mContext Landroid/content/Context;
iload 2
invokespecial com/nd/schoollife/ui/square/view/widget/AllGroupView/<init>(Landroid/content/Context;I)V
putfield com/nd/schoollife/ui/square/activity/SquareMyGroupActivity$MyGroupViewAdapter/mAllView Lcom/nd/schoollife/ui/square/view/widget/AllGroupView;
L1:
aload 1
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareMyGroupActivity$MyGroupViewAdapter/mAllView Lcom/nd/schoollife/ui/square/view/widget/AllGroupView;
invokevirtual android/view/ViewGroup/addView(Landroid/view/View;)V
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareMyGroupActivity$MyGroupViewAdapter/mAllView Lcom/nd/schoollife/ui/square/view/widget/AllGroupView;
areturn
L0:
iload 2
iconst_1
if_icmpne L2
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareMyGroupActivity$MyGroupViewAdapter/mManagerView Lcom/nd/schoollife/ui/square/view/widget/AllGroupView;
ifnonnull L3
aload 0
new com/nd/schoollife/ui/square/view/widget/AllGroupView
dup
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareMyGroupActivity$MyGroupViewAdapter/mContext Landroid/content/Context;
iload 2
invokespecial com/nd/schoollife/ui/square/view/widget/AllGroupView/<init>(Landroid/content/Context;I)V
putfield com/nd/schoollife/ui/square/activity/SquareMyGroupActivity$MyGroupViewAdapter/mManagerView Lcom/nd/schoollife/ui/square/view/widget/AllGroupView;
L3:
aload 1
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareMyGroupActivity$MyGroupViewAdapter/mManagerView Lcom/nd/schoollife/ui/square/view/widget/AllGroupView;
invokevirtual android/view/ViewGroup/addView(Landroid/view/View;)V
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareMyGroupActivity$MyGroupViewAdapter/mManagerView Lcom/nd/schoollife/ui/square/view/widget/AllGroupView;
areturn
L2:
aconst_null
areturn
.limit locals 3
.limit stack 5
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
aload 1
aload 2
if_acmpne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
aload 0
aload 1
iload 2
aload 3
invokespecial android/support/v4/view/PagerAdapter/setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
iload 2
ifne L0
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareMyGroupActivity$MyGroupViewAdapter/mAllView Lcom/nd/schoollife/ui/square/view/widget/AllGroupView;
ifnull L1
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareMyGroupActivity$MyGroupViewAdapter/mAllView Lcom/nd/schoollife/ui/square/view/widget/AllGroupView;
invokevirtual com/nd/schoollife/ui/square/view/widget/AllGroupView/initData()V
L1:
return
L0:
iload 2
iconst_1
if_icmpne L1
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareMyGroupActivity$MyGroupViewAdapter/mManagerView Lcom/nd/schoollife/ui/square/view/widget/AllGroupView;
ifnull L1
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareMyGroupActivity$MyGroupViewAdapter/mManagerView Lcom/nd/schoollife/ui/square/view/widget/AllGroupView;
invokevirtual com/nd/schoollife/ui/square/view/widget/AllGroupView/initData()V
return
.limit locals 4
.limit stack 4
.end method
