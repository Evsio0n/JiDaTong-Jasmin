.bytecode 50.0
.class synchronized com/nd/schoollife/ui/square/view/UnderlinePageIndicator$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/schoollife/ui/square/view/UnderlinePageIndicator
.inner class inner com/nd/schoollife/ui/square/view/UnderlinePageIndicator$1

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/square/view/UnderlinePageIndicator;

.method <init>(Lcom/nd/schoollife/ui/square/view/UnderlinePageIndicator;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator$1/this$0 Lcom/nd/schoollife/ui/square/view/UnderlinePageIndicator;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator$1/this$0 Lcom/nd/schoollife/ui/square/view/UnderlinePageIndicator;
invokestatic com/nd/schoollife/ui/square/view/UnderlinePageIndicator/access$000(Lcom/nd/schoollife/ui/square/view/UnderlinePageIndicator;)Z
ifne L0
L1:
return
L0:
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator$1/this$0 Lcom/nd/schoollife/ui/square/view/UnderlinePageIndicator;
invokestatic com/nd/schoollife/ui/square/view/UnderlinePageIndicator/access$100(Lcom/nd/schoollife/ui/square/view/UnderlinePageIndicator;)Landroid/graphics/Paint;
invokevirtual android/graphics/Paint/getAlpha()I
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator$1/this$0 Lcom/nd/schoollife/ui/square/view/UnderlinePageIndicator;
invokestatic com/nd/schoollife/ui/square/view/UnderlinePageIndicator/access$200(Lcom/nd/schoollife/ui/square/view/UnderlinePageIndicator;)I
isub
iconst_0
invokestatic java/lang/Math/max(II)I
istore 1
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator$1/this$0 Lcom/nd/schoollife/ui/square/view/UnderlinePageIndicator;
invokestatic com/nd/schoollife/ui/square/view/UnderlinePageIndicator/access$100(Lcom/nd/schoollife/ui/square/view/UnderlinePageIndicator;)Landroid/graphics/Paint;
iload 1
invokevirtual android/graphics/Paint/setAlpha(I)V
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator$1/this$0 Lcom/nd/schoollife/ui/square/view/UnderlinePageIndicator;
invokevirtual com/nd/schoollife/ui/square/view/UnderlinePageIndicator/invalidate()V
iload 1
ifle L1
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator$1/this$0 Lcom/nd/schoollife/ui/square/view/UnderlinePageIndicator;
aload 0
ldc2_w 30L
invokevirtual com/nd/schoollife/ui/square/view/UnderlinePageIndicator/postDelayed(Ljava/lang/Runnable;J)Z
pop
return
.limit locals 2
.limit stack 4
.end method
