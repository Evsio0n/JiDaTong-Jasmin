.bytecode 50.0
.class synchronized com/huewu/pla/lib/internal/PLA_AbsListView$WindowRunnnable
.super java/lang/Object
.inner class private WindowRunnnable inner com/huewu/pla/lib/internal/PLA_AbsListView$WindowRunnnable outer com/huewu/pla/lib/internal/PLA_AbsListView

.field private 'mOriginalAttachCount' I

.field final synthetic 'this$0' Lcom/huewu/pla/lib/internal/PLA_AbsListView;

.method private <init>(Lcom/huewu/pla/lib/internal/PLA_AbsListView;)V
aload 0
aload 1
putfield com/huewu/pla/lib/internal/PLA_AbsListView$WindowRunnnable/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/huewu/pla/lib/internal/PLA_AbsListView;Lcom/huewu/pla/lib/internal/PLA_AbsListView$WindowRunnnable;)V
aload 0
aload 1
invokespecial com/huewu/pla/lib/internal/PLA_AbsListView$WindowRunnnable/<init>(Lcom/huewu/pla/lib/internal/PLA_AbsListView;)V
return
.limit locals 3
.limit stack 2
.end method

.method public rememberWindowAttachCount()V
aload 0
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$WindowRunnnable/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
invokestatic com/huewu/pla/lib/internal/PLA_AbsListView/access$1(Lcom/huewu/pla/lib/internal/PLA_AbsListView;)I
putfield com/huewu/pla/lib/internal/PLA_AbsListView$WindowRunnnable/mOriginalAttachCount I
return
.limit locals 1
.limit stack 2
.end method

.method public sameWindow()Z
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$WindowRunnnable/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/hasWindowFocus()Z
ifeq L0
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$WindowRunnnable/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
invokestatic com/huewu/pla/lib/internal/PLA_AbsListView/access$1(Lcom/huewu/pla/lib/internal/PLA_AbsListView;)I
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$WindowRunnnable/mOriginalAttachCount I
if_icmpne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method
