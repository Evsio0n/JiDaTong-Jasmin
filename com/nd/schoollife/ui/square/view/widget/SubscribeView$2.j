.bytecode 50.0
.class synchronized com/nd/schoollife/ui/square/view/widget/SubscribeView$2
.super java/lang/Object
.implements android/widget/AbsListView$OnScrollListener
.enclosing method com/nd/schoollife/ui/square/view/widget/SubscribeView/initView(Landroid/app/Activity;)V
.inner class inner com/nd/schoollife/ui/square/view/widget/SubscribeView$2

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/square/view/widget/SubscribeView;

.method <init>(Lcom/nd/schoollife/ui/square/view/widget/SubscribeView;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/square/view/widget/SubscribeView$2/this$0 Lcom/nd/schoollife/ui/square/view/widget/SubscribeView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
return
.limit locals 5
.limit stack 0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView$2/this$0 Lcom/nd/schoollife/ui/square/view/widget/SubscribeView;
invokestatic com/nd/schoollife/ui/square/view/widget/SubscribeView/access$100(Lcom/nd/schoollife/ui/square/view/widget/SubscribeView;)Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView$2/this$0 Lcom/nd/schoollife/ui/square/view/widget/SubscribeView;
invokestatic com/nd/schoollife/ui/square/view/widget/SubscribeView/access$100(Lcom/nd/schoollife/ui/square/view/widget/SubscribeView;)Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/hideView()V
L0:
return
.limit locals 3
.limit stack 1
.end method
