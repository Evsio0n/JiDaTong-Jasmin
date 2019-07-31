.bytecode 50.0
.class synchronized com/nd/schoollife/ui/square/view/UnderlinePageIndicator$2
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/schoollife/ui/square/view/UnderlinePageIndicator/setViewPager(Landroid/support/v4/view/ViewPager;)V
.inner class inner com/nd/schoollife/ui/square/view/UnderlinePageIndicator$2

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/square/view/UnderlinePageIndicator;

.method <init>(Lcom/nd/schoollife/ui/square/view/UnderlinePageIndicator;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator$2/this$0 Lcom/nd/schoollife/ui/square/view/UnderlinePageIndicator;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator$2/this$0 Lcom/nd/schoollife/ui/square/view/UnderlinePageIndicator;
invokestatic com/nd/schoollife/ui/square/view/UnderlinePageIndicator/access$000(Lcom/nd/schoollife/ui/square/view/UnderlinePageIndicator;)Z
ifeq L0
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator$2/this$0 Lcom/nd/schoollife/ui/square/view/UnderlinePageIndicator;
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator$2/this$0 Lcom/nd/schoollife/ui/square/view/UnderlinePageIndicator;
invokestatic com/nd/schoollife/ui/square/view/UnderlinePageIndicator/access$300(Lcom/nd/schoollife/ui/square/view/UnderlinePageIndicator;)Ljava/lang/Runnable;
invokevirtual com/nd/schoollife/ui/square/view/UnderlinePageIndicator/post(Ljava/lang/Runnable;)Z
pop
L0:
return
.limit locals 1
.limit stack 2
.end method
