.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment$1
.super android/os/Handler
.enclosing method com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.inner class inner com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment$1

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/fragment/MsgAtListFragment;

.method <init>(Lcom/android/u/weibo/weibo/ui/fragment/MsgAtListFragment;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment$1/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgAtListFragment;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment$1/this$0 Lcom/android/u/weibo/weibo/ui/fragment/MsgAtListFragment;
aload 1
getfield android/os/Message/what I
iconst_0
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/showCount(II)V
return
.limit locals 2
.limit stack 3
.end method
