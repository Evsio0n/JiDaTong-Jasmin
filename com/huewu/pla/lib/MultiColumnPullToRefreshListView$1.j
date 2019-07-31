.bytecode 50.0
.class synchronized com/huewu/pla/lib/MultiColumnPullToRefreshListView$1
.super android/os/Handler
.enclosing method com/huewu/pla/lib/MultiColumnPullToRefreshListView
.inner class inner com/huewu/pla/lib/MultiColumnPullToRefreshListView$1

.method <init>()V
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
checkcast java/lang/ref/WeakReference
invokevirtual java/lang/ref/WeakReference/get()Ljava/lang/Object;
checkcast android/widget/TextView
astore 2
aload 2
ifnonnull L0
return
L0:
aload 1
getfield android/os/Message/what I
tableswitch 100
L1
L2
L3
L4
default : L5
L5:
return
L1:
aload 2
ldc "Loading"
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L2:
aload 2
ldc "Loading."
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L3:
aload 2
ldc "Loading.."
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L4:
aload 2
ldc "Loading..."
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 3
.limit stack 2
.end method
