.bytecode 50.0
.class synchronized com/nd/schoollife/ui/post/view/PraisePanel$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/schoollife/ui/post/view/PraisePanel/initView(Landroid/content/Context;)V
.inner class inner com/nd/schoollife/ui/post/view/PraisePanel$1

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/post/view/PraisePanel;

.method <init>(Lcom/nd/schoollife/ui/post/view/PraisePanel;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/post/view/PraisePanel$1/this$0 Lcom/nd/schoollife/ui/post/view/PraisePanel;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/schoollife/ui/post/view/PraisePanel$1/this$0 Lcom/nd/schoollife/ui/post/view/PraisePanel;
invokestatic com/nd/schoollife/ui/post/view/PraisePanel/access$000(Lcom/nd/schoollife/ui/post/view/PraisePanel;)Landroid/widget/ImageView;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/post/view/PraisePanel$1/this$0 Lcom/nd/schoollife/ui/post/view/PraisePanel;
invokestatic com/nd/schoollife/ui/post/view/PraisePanel/access$000(Lcom/nd/schoollife/ui/post/view/PraisePanel;)Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/performClick()Z
pop
L0:
return
.limit locals 2
.limit stack 1
.end method
