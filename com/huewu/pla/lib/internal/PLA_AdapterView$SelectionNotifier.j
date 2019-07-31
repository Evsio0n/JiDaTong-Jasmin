.bytecode 50.0
.class synchronized com/huewu/pla/lib/internal/PLA_AdapterView$SelectionNotifier
.super java/lang/Object
.implements java/lang/Runnable
.inner class private SelectionNotifier inner com/huewu/pla/lib/internal/PLA_AdapterView$SelectionNotifier outer com/huewu/pla/lib/internal/PLA_AdapterView

.field final synthetic 'this$0' Lcom/huewu/pla/lib/internal/PLA_AdapterView;

.method private <init>(Lcom/huewu/pla/lib/internal/PLA_AdapterView;)V
aload 0
aload 1
putfield com/huewu/pla/lib/internal/PLA_AdapterView$SelectionNotifier/this$0 Lcom/huewu/pla/lib/internal/PLA_AdapterView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/huewu/pla/lib/internal/PLA_AdapterView;Lcom/huewu/pla/lib/internal/PLA_AdapterView$SelectionNotifier;)V
aload 0
aload 1
invokespecial com/huewu/pla/lib/internal/PLA_AdapterView$SelectionNotifier/<init>(Lcom/huewu/pla/lib/internal/PLA_AdapterView;)V
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView$SelectionNotifier/this$0 Lcom/huewu/pla/lib/internal/PLA_AdapterView;
getfield com/huewu/pla/lib/internal/PLA_AdapterView/mDataChanged Z
ifeq L0
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView$SelectionNotifier/this$0 Lcom/huewu/pla/lib/internal/PLA_AdapterView;
invokevirtual com/huewu/pla/lib/internal/PLA_AdapterView/getAdapter()Landroid/widget/Adapter;
ifnull L1
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView$SelectionNotifier/this$0 Lcom/huewu/pla/lib/internal/PLA_AdapterView;
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AdapterView/post(Ljava/lang/Runnable;)Z
pop
L1:
return
L0:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView$SelectionNotifier/this$0 Lcom/huewu/pla/lib/internal/PLA_AdapterView;
invokestatic com/huewu/pla/lib/internal/PLA_AdapterView/access$2(Lcom/huewu/pla/lib/internal/PLA_AdapterView;)V
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView$SelectionNotifier/this$0 Lcom/huewu/pla/lib/internal/PLA_AdapterView;
invokestatic com/huewu/pla/lib/internal/PLA_AdapterView/access$3(Lcom/huewu/pla/lib/internal/PLA_AdapterView;)V
return
.limit locals 1
.limit stack 2
.end method
