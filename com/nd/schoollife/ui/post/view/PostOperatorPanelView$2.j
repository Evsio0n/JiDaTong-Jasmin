.bytecode 50.0
.class synchronized com/nd/schoollife/ui/post/view/PostOperatorPanelView$2
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/schoollife/ui/post/view/PostOperatorPanelView/initView(Landroid/content/Context;)V
.inner class inner com/nd/schoollife/ui/post/view/PostOperatorPanelView$2

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/post/view/PostOperatorPanelView;

.method <init>(Lcom/nd/schoollife/ui/post/view/PostOperatorPanelView;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/post/view/PostOperatorPanelView$2/this$0 Lcom/nd/schoollife/ui/post/view/PostOperatorPanelView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView$2/this$0 Lcom/nd/schoollife/ui/post/view/PostOperatorPanelView;
invokestatic com/nd/schoollife/ui/post/view/PostOperatorPanelView/access$100(Lcom/nd/schoollife/ui/post/view/PostOperatorPanelView;)Z
ifeq L0
return
L0:
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView$2/this$0 Lcom/nd/schoollife/ui/post/view/PostOperatorPanelView;
iconst_1
invokestatic com/nd/schoollife/ui/post/view/PostOperatorPanelView/access$102(Lcom/nd/schoollife/ui/post/view/PostOperatorPanelView;Z)Z
pop
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView$2/this$0 Lcom/nd/schoollife/ui/post/view/PostOperatorPanelView;
invokevirtual com/nd/schoollife/ui/post/view/PostOperatorPanelView/showPraiseIvAnim()V
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView$2/this$0 Lcom/nd/schoollife/ui/post/view/PostOperatorPanelView;
invokestatic com/nd/schoollife/ui/post/view/PostOperatorPanelView/access$200(Lcom/nd/schoollife/ui/post/view/PostOperatorPanelView;)Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
ifnull L1
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView$2/this$0 Lcom/nd/schoollife/ui/post/view/PostOperatorPanelView;
invokestatic com/nd/schoollife/ui/post/view/PostOperatorPanelView/access$200(Lcom/nd/schoollife/ui/post/view/PostOperatorPanelView;)Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getPraised()I
iconst_1
if_icmpne L2
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView$2/this$0 Lcom/nd/schoollife/ui/post/view/PostOperatorPanelView;
invokestatic com/nd/schoollife/ui/post/view/PostOperatorPanelView/access$300(Lcom/nd/schoollife/ui/post/view/PostOperatorPanelView;)V
return
L2:
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView$2/this$0 Lcom/nd/schoollife/ui/post/view/PostOperatorPanelView;
invokestatic com/nd/schoollife/ui/post/view/PostOperatorPanelView/access$400(Lcom/nd/schoollife/ui/post/view/PostOperatorPanelView;)V
return
L1:
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView$2/this$0 Lcom/nd/schoollife/ui/post/view/PostOperatorPanelView;
iconst_0
invokestatic com/nd/schoollife/ui/post/view/PostOperatorPanelView/access$102(Lcom/nd/schoollife/ui/post/view/PostOperatorPanelView;Z)Z
pop
return
.limit locals 2
.limit stack 2
.end method
