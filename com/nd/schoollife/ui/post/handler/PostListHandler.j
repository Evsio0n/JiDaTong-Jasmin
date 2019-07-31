.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/post/handler/PostListHandler
.super android/os/Handler

.field public static final 'MOVE_POST_TO_POSITION' I = 2


.field public static final 'MOVE_POST_TO_SPECIAL_POSITION' I = 1


.field private final 'mListView' Landroid/widget/ListView;

.method public <init>(Landroid/widget/ListView;)V
aload 0
invokespecial android/os/Handler/<init>()V
aload 0
aload 1
putfield com/nd/schoollife/ui/post/handler/PostListHandler/mListView Landroid/widget/ListView;
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 1
getfield android/os/Message/what I
tableswitch 1
L0
L1
default : L2
L2:
return
L0:
aload 0
getfield com/nd/schoollife/ui/post/handler/PostListHandler/mListView Landroid/widget/ListView;
aload 1
getfield android/os/Message/arg2 I
aload 1
getfield android/os/Message/arg1 I
ineg
invokevirtual android/widget/ListView/setSelectionFromTop(II)V
return
L1:
aload 0
getfield com/nd/schoollife/ui/post/handler/PostListHandler/mListView Landroid/widget/ListView;
aload 1
getfield android/os/Message/arg2 I
invokevirtual android/widget/ListView/setSelection(I)V
return
.limit locals 2
.limit stack 3
.end method
