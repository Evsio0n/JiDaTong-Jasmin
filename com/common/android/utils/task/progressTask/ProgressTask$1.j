.bytecode 50.0
.class synchronized com/common/android/utils/task/progressTask/ProgressTask$1
.super java/lang/Object
.implements android/content/DialogInterface$OnKeyListener
.enclosing method com/common/android/utils/task/progressTask/ProgressTask/<init>(Landroid/content/Context;I)V
.inner class inner com/common/android/utils/task/progressTask/ProgressTask$1

.field final synthetic 'this$0' Lcom/common/android/utils/task/progressTask/ProgressTask;

.method <init>(Lcom/common/android/utils/task/progressTask/ProgressTask;)V
aload 0
aload 1
putfield com/common/android/utils/task/progressTask/ProgressTask$1/this$0 Lcom/common/android/utils/task/progressTask/ProgressTask;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
iconst_1
istore 5
iload 5
istore 4
aload 3
invokevirtual android/view/KeyEvent/getKeyCode()I
lookupswitch
4 : L0
84 : L1
default : L2
L2:
iconst_0
istore 4
L1:
iload 4
ireturn
L0:
iload 5
istore 4
aload 0
getfield com/common/android/utils/task/progressTask/ProgressTask$1/this$0 Lcom/common/android/utils/task/progressTask/ProgressTask;
invokestatic com/common/android/utils/task/progressTask/ProgressTask/access$000(Lcom/common/android/utils/task/progressTask/ProgressTask;)Z
ifeq L1
aload 0
getfield com/common/android/utils/task/progressTask/ProgressTask$1/this$0 Lcom/common/android/utils/task/progressTask/ProgressTask;
invokestatic com/common/android/utils/task/progressTask/ProgressTask/access$100(Lcom/common/android/utils/task/progressTask/ProgressTask;)V
iconst_1
ireturn
.limit locals 6
.limit stack 1
.end method
