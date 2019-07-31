.bytecode 50.0
.class synchronized com/nd/schoollife/ui/team/view/SlideHolder$5
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/schoollife/ui/team/view/SlideHolder/completeOpening()V
.inner class inner com/nd/schoollife/ui/team/view/SlideHolder$5

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/team/view/SlideHolder;

.method <init>(Lcom/nd/schoollife/ui/team/view/SlideHolder;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/team/view/SlideHolder$5/this$0 Lcom/nd/schoollife/ui/team/view/SlideHolder;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder$5/this$0 Lcom/nd/schoollife/ui/team/view/SlideHolder;
iconst_2
invokestatic com/nd/schoollife/ui/team/view/SlideHolder/access$002(Lcom/nd/schoollife/ui/team/view/SlideHolder;I)I
pop
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder$5/this$0 Lcom/nd/schoollife/ui/team/view/SlideHolder;
invokestatic com/nd/schoollife/ui/team/view/SlideHolder/access$100(Lcom/nd/schoollife/ui/team/view/SlideHolder;)Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method
