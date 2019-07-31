.bytecode 50.0
.class synchronized com/slidingmenu/lib/CustomViewAbove$2
.super com/slidingmenu/lib/CustomViewAbove$SimpleOnPageChangeListener
.enclosing method com/slidingmenu/lib/CustomViewAbove/initCustomViewAbove()V
.inner class inner com/slidingmenu/lib/CustomViewAbove$2

.field final synthetic 'this$0' Lcom/slidingmenu/lib/CustomViewAbove;

.method <init>(Lcom/slidingmenu/lib/CustomViewAbove;)V
aload 0
aload 1
putfield com/slidingmenu/lib/CustomViewAbove$2/this$0 Lcom/slidingmenu/lib/CustomViewAbove;
aload 0
invokespecial com/slidingmenu/lib/CustomViewAbove$SimpleOnPageChangeListener/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onPageSelected(I)V
aload 0
getfield com/slidingmenu/lib/CustomViewAbove$2/this$0 Lcom/slidingmenu/lib/CustomViewAbove;
invokestatic com/slidingmenu/lib/CustomViewAbove/access$0(Lcom/slidingmenu/lib/CustomViewAbove;)Lcom/slidingmenu/lib/CustomViewBehind;
ifnull L0
iload 1
tableswitch 0
L1
L2
L1
default : L0
L0:
return
L1:
aload 0
getfield com/slidingmenu/lib/CustomViewAbove$2/this$0 Lcom/slidingmenu/lib/CustomViewAbove;
invokestatic com/slidingmenu/lib/CustomViewAbove/access$0(Lcom/slidingmenu/lib/CustomViewAbove;)Lcom/slidingmenu/lib/CustomViewBehind;
iconst_1
invokevirtual com/slidingmenu/lib/CustomViewBehind/setChildrenEnabled(Z)V
return
L2:
aload 0
getfield com/slidingmenu/lib/CustomViewAbove$2/this$0 Lcom/slidingmenu/lib/CustomViewAbove;
invokestatic com/slidingmenu/lib/CustomViewAbove/access$0(Lcom/slidingmenu/lib/CustomViewAbove;)Lcom/slidingmenu/lib/CustomViewBehind;
iconst_0
invokevirtual com/slidingmenu/lib/CustomViewBehind/setChildrenEnabled(Z)V
return
.limit locals 2
.limit stack 2
.end method
