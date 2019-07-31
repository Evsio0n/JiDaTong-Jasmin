.bytecode 50.0
.class synchronized com/huewu/pla/lib/internal/PLA_AbsListView$PerformClick
.super com/huewu/pla/lib/internal/PLA_AbsListView$WindowRunnnable
.implements java/lang/Runnable
.inner class private PerformClick inner com/huewu/pla/lib/internal/PLA_AbsListView$PerformClick outer com/huewu/pla/lib/internal/PLA_AbsListView

.field 'mChild' Landroid/view/View;

.field 'mClickMotionPosition' I

.field final synthetic 'this$0' Lcom/huewu/pla/lib/internal/PLA_AbsListView;

.method private <init>(Lcom/huewu/pla/lib/internal/PLA_AbsListView;)V
aload 0
aload 1
putfield com/huewu/pla/lib/internal/PLA_AbsListView$PerformClick/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
aload 0
aload 1
aconst_null
invokespecial com/huewu/pla/lib/internal/PLA_AbsListView$WindowRunnnable/<init>(Lcom/huewu/pla/lib/internal/PLA_AbsListView;Lcom/huewu/pla/lib/internal/PLA_AbsListView$WindowRunnnable;)V
return
.limit locals 2
.limit stack 3
.end method

.method synthetic <init>(Lcom/huewu/pla/lib/internal/PLA_AbsListView;Lcom/huewu/pla/lib/internal/PLA_AbsListView$PerformClick;)V
aload 0
aload 1
invokespecial com/huewu/pla/lib/internal/PLA_AbsListView$PerformClick/<init>(Lcom/huewu/pla/lib/internal/PLA_AbsListView;)V
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$PerformClick/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mDataChanged Z
ifeq L0
L1:
return
L0:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$PerformClick/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mAdapter Landroid/widget/ListAdapter;
astore 2
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$PerformClick/mClickMotionPosition I
istore 1
aload 2
ifnull L1
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$PerformClick/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mItemCount I
ifle L1
iload 1
iconst_m1
if_icmpeq L1
iload 1
aload 2
invokeinterface android/widget/ListAdapter/getCount()I 0
if_icmpge L1
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView$PerformClick/sameWindow()Z
ifeq L1
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$PerformClick/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$PerformClick/mChild Landroid/view/View;
iload 1
aload 2
iload 1
invokeinterface android/widget/ListAdapter/getItemId(I)J 1
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/performItemClick(Landroid/view/View;IJ)Z
pop
return
.limit locals 3
.limit stack 5
.end method
