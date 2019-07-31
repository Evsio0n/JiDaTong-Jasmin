.bytecode 50.0
.class synchronized com/nd/schoollife/ui/team/view/SlideHolder$4
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/schoollife/ui/team/view/SlideHolder/closeImmediately()Z
.inner class inner com/nd/schoollife/ui/team/view/SlideHolder$4

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/team/view/SlideHolder;

.method <init>(Lcom/nd/schoollife/ui/team/view/SlideHolder;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/team/view/SlideHolder$4/this$0 Lcom/nd/schoollife/ui/team/view/SlideHolder;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder$4/this$0 Lcom/nd/schoollife/ui/team/view/SlideHolder;
invokevirtual com/nd/schoollife/ui/team/view/SlideHolder/closeImmediately()Z
pop
return
.limit locals 1
.limit stack 1
.end method
