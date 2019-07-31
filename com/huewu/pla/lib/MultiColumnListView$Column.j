.bytecode 50.0
.class synchronized com/huewu/pla/lib/MultiColumnListView$Column
.super java/lang/Object
.inner class private Column inner com/huewu/pla/lib/MultiColumnListView$Column outer com/huewu/pla/lib/MultiColumnListView

.field private 'mColumnLeft' I

.field private 'mColumnWidth' I

.field private 'mIndex' I

.field private 'mSynchedBottom' I

.field private 'mSynchedTop' I

.field final synthetic 'this$0' Lcom/huewu/pla/lib/MultiColumnListView;

.method public <init>(Lcom/huewu/pla/lib/MultiColumnListView;I)V
aload 0
aload 1
putfield com/huewu/pla/lib/MultiColumnListView$Column/this$0 Lcom/huewu/pla/lib/MultiColumnListView;
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/huewu/pla/lib/MultiColumnListView$Column/mSynchedTop I
aload 0
iconst_0
putfield com/huewu/pla/lib/MultiColumnListView$Column/mSynchedBottom I
aload 0
iload 2
putfield com/huewu/pla/lib/MultiColumnListView$Column/mIndex I
return
.limit locals 3
.limit stack 2
.end method

.method static synthetic access$0(Lcom/huewu/pla/lib/MultiColumnListView$Column;I)V
aload 0
iload 1
putfield com/huewu/pla/lib/MultiColumnListView$Column/mColumnWidth I
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1(Lcom/huewu/pla/lib/MultiColumnListView$Column;I)V
aload 0
iload 1
putfield com/huewu/pla/lib/MultiColumnListView$Column/mColumnLeft I
return
.limit locals 2
.limit stack 2
.end method

.method public clear()V
aload 0
iconst_0
putfield com/huewu/pla/lib/MultiColumnListView$Column/mSynchedTop I
aload 0
iconst_0
putfield com/huewu/pla/lib/MultiColumnListView$Column/mSynchedBottom I
return
.limit locals 1
.limit stack 2
.end method

.method public getBottom()I
ldc_w -2147483648
istore 1
aload 0
getfield com/huewu/pla/lib/MultiColumnListView$Column/this$0 Lcom/huewu/pla/lib/MultiColumnListView;
invokevirtual com/huewu/pla/lib/MultiColumnListView/getChildCount()I
istore 4
iconst_0
istore 3
L0:
iload 3
iload 4
if_icmplt L1
iload 1
istore 2
iload 1
ldc_w -2147483648
if_icmpne L2
aload 0
getfield com/huewu/pla/lib/MultiColumnListView$Column/mSynchedBottom I
istore 2
L2:
iload 2
ireturn
L1:
aload 0
getfield com/huewu/pla/lib/MultiColumnListView$Column/this$0 Lcom/huewu/pla/lib/MultiColumnListView;
iload 3
invokevirtual com/huewu/pla/lib/MultiColumnListView/getChildAt(I)Landroid/view/View;
astore 5
aload 5
invokevirtual android/view/View/getLeft()I
aload 0
getfield com/huewu/pla/lib/MultiColumnListView$Column/mColumnLeft I
if_icmpeq L3
aload 0
getfield com/huewu/pla/lib/MultiColumnListView$Column/this$0 Lcom/huewu/pla/lib/MultiColumnListView;
aload 5
invokevirtual com/huewu/pla/lib/MultiColumnListView/isFixedView(Landroid/view/View;)Z
ifne L3
L4:
iload 3
iconst_1
iadd
istore 3
goto L0
L3:
iload 1
istore 2
iload 1
aload 5
invokevirtual android/view/View/getBottom()I
if_icmpge L5
aload 5
invokevirtual android/view/View/getBottom()I
istore 2
L5:
iload 2
istore 1
goto L4
.limit locals 6
.limit stack 2
.end method

.method public getColumnLeft()I
aload 0
getfield com/huewu/pla/lib/MultiColumnListView$Column/mColumnLeft I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getColumnWidth()I
aload 0
getfield com/huewu/pla/lib/MultiColumnListView$Column/mColumnWidth I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getIndex()I
aload 0
getfield com/huewu/pla/lib/MultiColumnListView$Column/mIndex I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getTop()I
ldc_w 2147483647
istore 1
aload 0
getfield com/huewu/pla/lib/MultiColumnListView$Column/this$0 Lcom/huewu/pla/lib/MultiColumnListView;
invokevirtual com/huewu/pla/lib/MultiColumnListView/getChildCount()I
istore 4
iconst_0
istore 3
L0:
iload 3
iload 4
if_icmplt L1
iload 1
istore 2
iload 1
ldc_w 2147483647
if_icmpne L2
aload 0
getfield com/huewu/pla/lib/MultiColumnListView$Column/mSynchedTop I
istore 2
L2:
iload 2
ireturn
L1:
aload 0
getfield com/huewu/pla/lib/MultiColumnListView$Column/this$0 Lcom/huewu/pla/lib/MultiColumnListView;
iload 3
invokevirtual com/huewu/pla/lib/MultiColumnListView/getChildAt(I)Landroid/view/View;
astore 5
aload 5
invokevirtual android/view/View/getLeft()I
aload 0
getfield com/huewu/pla/lib/MultiColumnListView$Column/mColumnLeft I
if_icmpeq L3
aload 0
getfield com/huewu/pla/lib/MultiColumnListView$Column/this$0 Lcom/huewu/pla/lib/MultiColumnListView;
aload 5
invokevirtual com/huewu/pla/lib/MultiColumnListView/isFixedView(Landroid/view/View;)Z
ifne L3
L4:
iload 3
iconst_1
iadd
istore 3
goto L0
L3:
iload 1
istore 2
iload 1
aload 5
invokevirtual android/view/View/getTop()I
if_icmple L5
aload 5
invokevirtual android/view/View/getTop()I
istore 2
L5:
iload 2
istore 1
goto L4
.limit locals 6
.limit stack 2
.end method

.method public offsetTopAndBottom(I)V
iload 1
ifne L0
L1:
return
L0:
aload 0
getfield com/huewu/pla/lib/MultiColumnListView$Column/this$0 Lcom/huewu/pla/lib/MultiColumnListView;
invokevirtual com/huewu/pla/lib/MultiColumnListView/getChildCount()I
istore 3
iconst_0
istore 2
L2:
iload 2
iload 3
if_icmpge L1
aload 0
getfield com/huewu/pla/lib/MultiColumnListView$Column/this$0 Lcom/huewu/pla/lib/MultiColumnListView;
iload 2
invokevirtual com/huewu/pla/lib/MultiColumnListView/getChildAt(I)Landroid/view/View;
astore 4
aload 4
invokevirtual android/view/View/getLeft()I
aload 0
getfield com/huewu/pla/lib/MultiColumnListView$Column/mColumnLeft I
if_icmpeq L3
aload 0
getfield com/huewu/pla/lib/MultiColumnListView$Column/this$0 Lcom/huewu/pla/lib/MultiColumnListView;
aload 4
invokevirtual com/huewu/pla/lib/MultiColumnListView/isFixedView(Landroid/view/View;)Z
ifne L3
L4:
iload 2
iconst_1
iadd
istore 2
goto L2
L3:
aload 4
iload 1
invokevirtual android/view/View/offsetTopAndBottom(I)V
goto L4
.limit locals 5
.limit stack 2
.end method

.method public save()V
aload 0
iconst_0
putfield com/huewu/pla/lib/MultiColumnListView$Column/mSynchedTop I
aload 0
aload 0
invokevirtual com/huewu/pla/lib/MultiColumnListView$Column/getTop()I
putfield com/huewu/pla/lib/MultiColumnListView$Column/mSynchedBottom I
return
.limit locals 1
.limit stack 2
.end method
