.bytecode 50.0
.class synchronized com/nd/schoollife/ui/post/view/PostOperatorPanelView$4
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/schoollife/ui/post/view/PostOperatorPanelView/fillValue(Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;)V
.inner class inner com/nd/schoollife/ui/post/view/PostOperatorPanelView$4

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/post/view/PostOperatorPanelView;

.field final synthetic 'val$listener' Lcom/nd/schoollife/ui/post/listener/CommentAndReplyListener;

.method <init>(Lcom/nd/schoollife/ui/post/view/PostOperatorPanelView;Lcom/nd/schoollife/ui/post/listener/CommentAndReplyListener;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/post/view/PostOperatorPanelView$4/this$0 Lcom/nd/schoollife/ui/post/view/PostOperatorPanelView;
aload 0
aload 2
putfield com/nd/schoollife/ui/post/view/PostOperatorPanelView$4/val$listener Lcom/nd/schoollife/ui/post/listener/CommentAndReplyListener;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView$4/this$0 Lcom/nd/schoollife/ui/post/view/PostOperatorPanelView;
invokestatic com/nd/schoollife/ui/post/view/PostOperatorPanelView/access$600(Lcom/nd/schoollife/ui/post/view/PostOperatorPanelView;)Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView$4/this$0 Lcom/nd/schoollife/ui/post/view/PostOperatorPanelView;
invokestatic com/nd/schoollife/ui/post/view/PostOperatorPanelView/access$600(Lcom/nd/schoollife/ui/post/view/PostOperatorPanelView;)Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView$4/this$0 Lcom/nd/schoollife/ui/post/view/PostOperatorPanelView;
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/setPanelUpdateCallBack(Lcom/nd/schoollife/ui/post/listener/PostListItemUpdateCallBack;)V
L0:
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView$4/val$listener Lcom/nd/schoollife/ui/post/listener/CommentAndReplyListener;
ifnull L1
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView$4/val$listener Lcom/nd/schoollife/ui/post/listener/CommentAndReplyListener;
aload 1
invokevirtual com/nd/schoollife/ui/post/listener/CommentAndReplyListener/onClick(Landroid/view/View;)V
L1:
return
.limit locals 2
.limit stack 2
.end method
