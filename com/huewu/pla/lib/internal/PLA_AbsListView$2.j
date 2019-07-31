.bytecode 50.0
.class synchronized com/huewu/pla/lib/internal/PLA_AbsListView$2
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/huewu/pla/lib/internal/PLA_AbsListView/clearScrollingCache()V
.inner class inner com/huewu/pla/lib/internal/PLA_AbsListView$2

.field final synthetic 'this$0' Lcom/huewu/pla/lib/internal/PLA_AbsListView;

.method <init>(Lcom/huewu/pla/lib/internal/PLA_AbsListView;)V
aload 0
aload 1
putfield com/huewu/pla/lib/internal/PLA_AbsListView$2/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$2/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mCachingStarted Z
ifeq L0
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$2/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
iconst_0
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mCachingStarted Z
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$2/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
iconst_0
invokestatic com/huewu/pla/lib/internal/PLA_AbsListView/access$5(Lcom/huewu/pla/lib/internal/PLA_AbsListView;Z)V
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$2/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getPersistentDrawingCache()I
iconst_2
iand
ifne L1
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$2/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
iconst_0
invokestatic com/huewu/pla/lib/internal/PLA_AbsListView/access$6(Lcom/huewu/pla/lib/internal/PLA_AbsListView;Z)V
L1:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$2/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/isAlwaysDrawnWithCacheEnabled()Z
ifne L0
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$2/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/invalidate()V
L0:
return
.limit locals 1
.limit stack 2
.end method
