.bytecode 50.0
.class synchronized com/huewu/pla/lib/MultiColumnPullToRefreshListView$LoadingThread
.super java/lang/Thread
.inner class private LoadingThread inner com/huewu/pla/lib/MultiColumnPullToRefreshListView$LoadingThread outer com/huewu/pla/lib/MultiColumnPullToRefreshListView

.field 'mHandler' Landroid/os/Handler;

.field final synthetic 'this$0' Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;

.method public <init>(Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;Landroid/os/Handler;)V
aload 0
aload 1
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView$LoadingThread/this$0 Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;
aload 0
invokespecial java/lang/Thread/<init>()V
aload 0
aload 2
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView$LoadingThread/mHandler Landroid/os/Handler;
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
.catch java/lang/InterruptedException from L0 to L1 using L2
L0:
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView$LoadingThread/mHandler Landroid/os/Handler;
bipush 100
invokevirtual android/os/Handler/obtainMessage(I)Landroid/os/Message;
astore 1
aload 1
new java/lang/ref/WeakReference
dup
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView$LoadingThread/this$0 Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;
invokestatic com/huewu/pla/lib/MultiColumnPullToRefreshListView/access$11(Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;)Landroid/widget/TextView;
invokespecial java/lang/ref/WeakReference/<init>(Ljava/lang/Object;)V
putfield android/os/Message/obj Ljava/lang/Object;
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView$LoadingThread/mHandler Landroid/os/Handler;
aload 1
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
ldc2_w 400L
invokestatic java/lang/Thread/sleep(J)V
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView$LoadingThread/mHandler Landroid/os/Handler;
bipush 101
invokevirtual android/os/Handler/obtainMessage(I)Landroid/os/Message;
astore 1
aload 1
new java/lang/ref/WeakReference
dup
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView$LoadingThread/this$0 Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;
invokestatic com/huewu/pla/lib/MultiColumnPullToRefreshListView/access$11(Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;)Landroid/widget/TextView;
invokespecial java/lang/ref/WeakReference/<init>(Ljava/lang/Object;)V
putfield android/os/Message/obj Ljava/lang/Object;
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView$LoadingThread/mHandler Landroid/os/Handler;
aload 1
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
ldc2_w 400L
invokestatic java/lang/Thread/sleep(J)V
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView$LoadingThread/mHandler Landroid/os/Handler;
bipush 102
invokevirtual android/os/Handler/obtainMessage(I)Landroid/os/Message;
astore 1
aload 1
new java/lang/ref/WeakReference
dup
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView$LoadingThread/this$0 Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;
invokestatic com/huewu/pla/lib/MultiColumnPullToRefreshListView/access$11(Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;)Landroid/widget/TextView;
invokespecial java/lang/ref/WeakReference/<init>(Ljava/lang/Object;)V
putfield android/os/Message/obj Ljava/lang/Object;
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView$LoadingThread/mHandler Landroid/os/Handler;
aload 1
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
ldc2_w 400L
invokestatic java/lang/Thread/sleep(J)V
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView$LoadingThread/mHandler Landroid/os/Handler;
bipush 103
invokevirtual android/os/Handler/obtainMessage(I)Landroid/os/Message;
astore 1
aload 1
new java/lang/ref/WeakReference
dup
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView$LoadingThread/this$0 Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;
invokestatic com/huewu/pla/lib/MultiColumnPullToRefreshListView/access$11(Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;)Landroid/widget/TextView;
invokespecial java/lang/ref/WeakReference/<init>(Ljava/lang/Object;)V
putfield android/os/Message/obj Ljava/lang/Object;
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView$LoadingThread/mHandler Landroid/os/Handler;
aload 1
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
ldc2_w 400L
invokestatic java/lang/Thread/sleep(J)V
L1:
goto L0
L2:
astore 1
return
.limit locals 2
.limit stack 4
.end method
