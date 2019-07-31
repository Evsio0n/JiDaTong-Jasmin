.bytecode 50.0
.class synchronized com/nd/android/backpacksystem/widget/TDAbsSpinner$RecycleBin
.super java/lang/Object
.inner class RecycleBin inner com/nd/android/backpacksystem/widget/TDAbsSpinner$RecycleBin outer com/nd/android/backpacksystem/widget/TDAbsSpinner

.field private 'mScrapHeap' Landroid/util/SparseArray; signature "Landroid/util/SparseArray<Landroid/view/View;>;"

.field final synthetic 'this$0' Lcom/nd/android/backpacksystem/widget/TDAbsSpinner;

.method <init>(Lcom/nd/android/backpacksystem/widget/TDAbsSpinner;)V
aload 0
aload 1
putfield com/nd/android/backpacksystem/widget/TDAbsSpinner$RecycleBin/this$0 Lcom/nd/android/backpacksystem/widget/TDAbsSpinner;
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new android/util/SparseArray
dup
invokespecial android/util/SparseArray/<init>()V
putfield com/nd/android/backpacksystem/widget/TDAbsSpinner$RecycleBin/mScrapHeap Landroid/util/SparseArray;
return
.limit locals 2
.limit stack 3
.end method

.method clear()V
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner$RecycleBin/mScrapHeap Landroid/util/SparseArray;
astore 3
aload 3
invokevirtual android/util/SparseArray/size()I
istore 2
iconst_0
istore 1
L0:
iload 1
iload 2
if_icmpge L1
aload 3
iload 1
invokevirtual android/util/SparseArray/valueAt(I)Ljava/lang/Object;
checkcast android/view/View
astore 4
aload 4
ifnull L2
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner$RecycleBin/this$0 Lcom/nd/android/backpacksystem/widget/TDAbsSpinner;
aload 4
iconst_1
invokestatic com/nd/android/backpacksystem/widget/TDAbsSpinner/access$100(Lcom/nd/android/backpacksystem/widget/TDAbsSpinner;Landroid/view/View;Z)V
L2:
iload 1
iconst_1
iadd
istore 1
goto L0
L1:
aload 3
invokevirtual android/util/SparseArray/clear()V
return
.limit locals 5
.limit stack 3
.end method

.method get(I)Landroid/view/View;
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner$RecycleBin/mScrapHeap Landroid/util/SparseArray;
iload 1
invokevirtual android/util/SparseArray/get(I)Ljava/lang/Object;
checkcast android/view/View
astore 2
aload 2
ifnull L0
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner$RecycleBin/mScrapHeap Landroid/util/SparseArray;
iload 1
invokevirtual android/util/SparseArray/delete(I)V
L0:
aload 2
areturn
.limit locals 3
.limit stack 2
.end method

.method peek(I)Landroid/view/View;
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner$RecycleBin/mScrapHeap Landroid/util/SparseArray;
iload 1
invokevirtual android/util/SparseArray/get(I)Ljava/lang/Object;
checkcast android/view/View
areturn
.limit locals 2
.limit stack 2
.end method

.method public put(ILandroid/view/View;)V
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner$RecycleBin/mScrapHeap Landroid/util/SparseArray;
iload 1
aload 2
invokevirtual android/util/SparseArray/put(ILjava/lang/Object;)V
return
.limit locals 3
.limit stack 3
.end method
