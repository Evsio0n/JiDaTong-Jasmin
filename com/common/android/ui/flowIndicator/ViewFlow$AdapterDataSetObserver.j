.bytecode 50.0
.class synchronized com/common/android/ui/flowIndicator/ViewFlow$AdapterDataSetObserver
.super android/database/DataSetObserver
.inner class AdapterDataSetObserver inner com/common/android/ui/flowIndicator/ViewFlow$AdapterDataSetObserver outer com/common/android/ui/flowIndicator/ViewFlow

.field final synthetic 'this$0' Lcom/common/android/ui/flowIndicator/ViewFlow;

.method <init>(Lcom/common/android/ui/flowIndicator/ViewFlow;)V
aload 0
aload 1
putfield com/common/android/ui/flowIndicator/ViewFlow$AdapterDataSetObserver/this$0 Lcom/common/android/ui/flowIndicator/ViewFlow;
aload 0
invokespecial android/database/DataSetObserver/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onChanged()V
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow$AdapterDataSetObserver/this$0 Lcom/common/android/ui/flowIndicator/ViewFlow;
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow$AdapterDataSetObserver/this$0 Lcom/common/android/ui/flowIndicator/ViewFlow;
invokestatic com/common/android/ui/flowIndicator/ViewFlow/access$200(Lcom/common/android/ui/flowIndicator/ViewFlow;)I
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/getChildAt(I)Landroid/view/View;
astore 2
aload 2
ifnull L0
iconst_0
istore 1
L1:
iload 1
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow$AdapterDataSetObserver/this$0 Lcom/common/android/ui/flowIndicator/ViewFlow;
invokestatic com/common/android/ui/flowIndicator/ViewFlow/access$300(Lcom/common/android/ui/flowIndicator/ViewFlow;)Landroid/widget/Adapter;
invokeinterface android/widget/Adapter/getCount()I 0
if_icmpge L0
aload 2
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow$AdapterDataSetObserver/this$0 Lcom/common/android/ui/flowIndicator/ViewFlow;
invokestatic com/common/android/ui/flowIndicator/ViewFlow/access$300(Lcom/common/android/ui/flowIndicator/ViewFlow;)Landroid/widget/Adapter;
iload 1
invokeinterface android/widget/Adapter/getItem(I)Ljava/lang/Object; 1
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifeq L2
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow$AdapterDataSetObserver/this$0 Lcom/common/android/ui/flowIndicator/ViewFlow;
iload 1
invokestatic com/common/android/ui/flowIndicator/ViewFlow/access$102(Lcom/common/android/ui/flowIndicator/ViewFlow;I)I
pop
L0:
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow$AdapterDataSetObserver/this$0 Lcom/common/android/ui/flowIndicator/ViewFlow;
invokestatic com/common/android/ui/flowIndicator/ViewFlow/access$400(Lcom/common/android/ui/flowIndicator/ViewFlow;)V
return
L2:
iload 1
iconst_1
iadd
istore 1
goto L1
.limit locals 3
.limit stack 3
.end method

.method public onInvalidated()V
return
.limit locals 1
.limit stack 0
.end method
