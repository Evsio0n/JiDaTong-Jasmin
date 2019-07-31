.bytecode 50.0
.class synchronized com/common/android/utils/smiley/SmileyView$SmileyHandler
.super android/os/Handler
.inner class static SmileyHandler inner com/common/android/utils/smiley/SmileyView$SmileyHandler outer com/common/android/utils/smiley/SmileyView

.field private 'mOuter' Ljava/lang/ref/WeakReference; signature "Ljava/lang/ref/WeakReference<Lcom/common/android/utils/smiley/SmileyView;>;"

.method public <init>(Lcom/common/android/utils/smiley/SmileyView;)V
aload 0
invokespecial android/os/Handler/<init>()V
aload 0
new java/lang/ref/WeakReference
dup
aload 1
invokespecial java/lang/ref/WeakReference/<init>(Ljava/lang/Object;)V
putfield com/common/android/utils/smiley/SmileyView$SmileyHandler/mOuter Ljava/lang/ref/WeakReference;
return
.limit locals 2
.limit stack 4
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 0
getfield com/common/android/utils/smiley/SmileyView$SmileyHandler/mOuter Ljava/lang/ref/WeakReference;
invokevirtual java/lang/ref/WeakReference/get()Ljava/lang/Object;
checkcast com/common/android/utils/smiley/SmileyView
astore 2
aload 2
ifnull L0
iconst_1
aload 1
getfield android/os/Message/what I
if_icmpne L0
aload 2
invokestatic com/common/android/utils/smiley/SmileyView/access$2100(Lcom/common/android/utils/smiley/SmileyView;)V
L0:
return
.limit locals 3
.limit stack 2
.end method
