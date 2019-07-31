.bytecode 50.0
.class public synchronized com/huewu/pla/lib/MultiColumnListView
.super com/huewu/pla/lib/internal/PLA_ListView
.inner class private Column inner com/huewu/pla/lib/MultiColumnListView$Column outer com/huewu/pla/lib/MultiColumnListView
.inner class private FixedColumn inner com/huewu/pla/lib/MultiColumnListView$FixedColumn outer com/huewu/pla/lib/MultiColumnListView

.field private static final 'DEFAULT_COLUMN_NUMBER' I = 2


.field private static final 'TAG' Ljava/lang/String; = "MultiColumnListView"

.field private 'mColumnNumber' I

.field private 'mColumnPaddingLeft' I

.field private 'mColumnPaddingRight' I

.field private 'mColumns' [Lcom/huewu/pla/lib/MultiColumnListView$Column;

.field private 'mFixedColumn' Lcom/huewu/pla/lib/MultiColumnListView$Column;

.field private 'mFrameRect' Landroid/graphics/Rect;

.field private 'mItems' Landroid/util/SparseIntArray;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial com/huewu/pla/lib/internal/PLA_ListView/<init>(Landroid/content/Context;)V
aload 0
iconst_2
putfield com/huewu/pla/lib/MultiColumnListView/mColumnNumber I
aload 0
aconst_null
putfield com/huewu/pla/lib/MultiColumnListView/mColumns [Lcom/huewu/pla/lib/MultiColumnListView$Column;
aload 0
aconst_null
putfield com/huewu/pla/lib/MultiColumnListView/mFixedColumn Lcom/huewu/pla/lib/MultiColumnListView$Column;
aload 0
new android/util/SparseIntArray
dup
invokespecial android/util/SparseIntArray/<init>()V
putfield com/huewu/pla/lib/MultiColumnListView/mItems Landroid/util/SparseIntArray;
aload 0
iconst_0
putfield com/huewu/pla/lib/MultiColumnListView/mColumnPaddingLeft I
aload 0
iconst_0
putfield com/huewu/pla/lib/MultiColumnListView/mColumnPaddingRight I
aload 0
new android/graphics/Rect
dup
invokespecial android/graphics/Rect/<init>()V
putfield com/huewu/pla/lib/MultiColumnListView/mFrameRect Landroid/graphics/Rect;
aload 0
aconst_null
invokespecial com/huewu/pla/lib/MultiColumnListView/init(Landroid/util/AttributeSet;)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial com/huewu/pla/lib/internal/PLA_ListView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
iconst_2
putfield com/huewu/pla/lib/MultiColumnListView/mColumnNumber I
aload 0
aconst_null
putfield com/huewu/pla/lib/MultiColumnListView/mColumns [Lcom/huewu/pla/lib/MultiColumnListView$Column;
aload 0
aconst_null
putfield com/huewu/pla/lib/MultiColumnListView/mFixedColumn Lcom/huewu/pla/lib/MultiColumnListView$Column;
aload 0
new android/util/SparseIntArray
dup
invokespecial android/util/SparseIntArray/<init>()V
putfield com/huewu/pla/lib/MultiColumnListView/mItems Landroid/util/SparseIntArray;
aload 0
iconst_0
putfield com/huewu/pla/lib/MultiColumnListView/mColumnPaddingLeft I
aload 0
iconst_0
putfield com/huewu/pla/lib/MultiColumnListView/mColumnPaddingRight I
aload 0
new android/graphics/Rect
dup
invokespecial android/graphics/Rect/<init>()V
putfield com/huewu/pla/lib/MultiColumnListView/mFrameRect Landroid/graphics/Rect;
aload 0
aload 2
invokespecial com/huewu/pla/lib/MultiColumnListView/init(Landroid/util/AttributeSet;)V
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
aload 1
aload 2
iload 3
invokespecial com/huewu/pla/lib/internal/PLA_ListView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
iconst_2
putfield com/huewu/pla/lib/MultiColumnListView/mColumnNumber I
aload 0
aconst_null
putfield com/huewu/pla/lib/MultiColumnListView/mColumns [Lcom/huewu/pla/lib/MultiColumnListView$Column;
aload 0
aconst_null
putfield com/huewu/pla/lib/MultiColumnListView/mFixedColumn Lcom/huewu/pla/lib/MultiColumnListView$Column;
aload 0
new android/util/SparseIntArray
dup
invokespecial android/util/SparseIntArray/<init>()V
putfield com/huewu/pla/lib/MultiColumnListView/mItems Landroid/util/SparseIntArray;
aload 0
iconst_0
putfield com/huewu/pla/lib/MultiColumnListView/mColumnPaddingLeft I
aload 0
iconst_0
putfield com/huewu/pla/lib/MultiColumnListView/mColumnPaddingRight I
aload 0
new android/graphics/Rect
dup
invokespecial android/graphics/Rect/<init>()V
putfield com/huewu/pla/lib/MultiColumnListView/mFrameRect Landroid/graphics/Rect;
aload 0
aload 2
invokespecial com/huewu/pla/lib/MultiColumnListView/init(Landroid/util/AttributeSet;)V
return
.limit locals 4
.limit stack 4
.end method

.method private getColumnLeft(I)I
aload 0
getfield com/huewu/pla/lib/MultiColumnListView/mItems Landroid/util/SparseIntArray;
iload 1
iconst_m1
invokevirtual android/util/SparseIntArray/get(II)I
istore 1
iload 1
iconst_m1
if_icmpne L0
iconst_0
ireturn
L0:
aload 0
getfield com/huewu/pla/lib/MultiColumnListView/mColumns [Lcom/huewu/pla/lib/MultiColumnListView$Column;
iload 1
aaload
invokevirtual com/huewu/pla/lib/MultiColumnListView$Column/getColumnLeft()I
ireturn
.limit locals 2
.limit stack 3
.end method

.method private getColumnWidth(I)I
aload 0
getfield com/huewu/pla/lib/MultiColumnListView/mItems Landroid/util/SparseIntArray;
iload 1
iconst_m1
invokevirtual android/util/SparseIntArray/get(II)I
istore 1
iload 1
iconst_m1
if_icmpne L0
iconst_0
ireturn
L0:
aload 0
getfield com/huewu/pla/lib/MultiColumnListView/mColumns [Lcom/huewu/pla/lib/MultiColumnListView$Column;
iload 1
aaload
invokevirtual com/huewu/pla/lib/MultiColumnListView$Column/getColumnWidth()I
ireturn
.limit locals 2
.limit stack 3
.end method

.method private getNextColumn(ZI)Lcom/huewu/pla/lib/MultiColumnListView$Column;
aload 0
getfield com/huewu/pla/lib/MultiColumnListView/mItems Landroid/util/SparseIntArray;
iload 2
iconst_m1
invokevirtual android/util/SparseIntArray/get(II)I
istore 3
iload 3
iconst_m1
if_icmpeq L0
aload 0
getfield com/huewu/pla/lib/MultiColumnListView/mColumns [Lcom/huewu/pla/lib/MultiColumnListView$Column;
iload 3
aaload
areturn
L0:
iconst_0
iconst_0
iload 2
aload 0
invokevirtual com/huewu/pla/lib/MultiColumnListView/getHeaderViewsCount()I
isub
invokestatic java/lang/Math/max(II)I
invokestatic java/lang/Math/max(II)I
istore 2
iload 2
aload 0
getfield com/huewu/pla/lib/MultiColumnListView/mColumnNumber I
if_icmpge L1
aload 0
getfield com/huewu/pla/lib/MultiColumnListView/mColumns [Lcom/huewu/pla/lib/MultiColumnListView$Column;
iload 2
aaload
areturn
L1:
iload 1
ifeq L2
aload 0
invokespecial com/huewu/pla/lib/MultiColumnListView/gettBottomColumn()Lcom/huewu/pla/lib/MultiColumnListView$Column;
areturn
L2:
aload 0
invokespecial com/huewu/pla/lib/MultiColumnListView/getTopColumn()Lcom/huewu/pla/lib/MultiColumnListView$Column;
areturn
.limit locals 4
.limit stack 4
.end method

.method private getTopColumn()Lcom/huewu/pla/lib/MultiColumnListView$Column;
iconst_0
istore 1
aload 0
getfield com/huewu/pla/lib/MultiColumnListView/mColumns [Lcom/huewu/pla/lib/MultiColumnListView$Column;
iconst_0
aaload
astore 3
aload 0
getfield com/huewu/pla/lib/MultiColumnListView/mColumns [Lcom/huewu/pla/lib/MultiColumnListView$Column;
astore 6
aload 6
arraylength
istore 2
L0:
iload 1
iload 2
if_icmplt L1
aload 3
areturn
L1:
aload 6
iload 1
aaload
astore 5
aload 3
astore 4
aload 3
invokevirtual com/huewu/pla/lib/MultiColumnListView$Column/getTop()I
aload 5
invokevirtual com/huewu/pla/lib/MultiColumnListView$Column/getTop()I
if_icmple L2
aload 5
astore 4
L2:
iload 1
iconst_1
iadd
istore 1
aload 4
astore 3
goto L0
.limit locals 7
.limit stack 2
.end method

.method private gettBottomColumn()Lcom/huewu/pla/lib/MultiColumnListView$Column;
iconst_0
istore 1
aload 0
getfield com/huewu/pla/lib/MultiColumnListView/mColumns [Lcom/huewu/pla/lib/MultiColumnListView$Column;
iconst_0
aaload
astore 3
aload 0
getfield com/huewu/pla/lib/MultiColumnListView/mColumns [Lcom/huewu/pla/lib/MultiColumnListView$Column;
astore 6
aload 6
arraylength
istore 2
L0:
iload 1
iload 2
if_icmplt L1
aload 3
areturn
L1:
aload 6
iload 1
aaload
astore 5
aload 3
astore 4
aload 3
invokevirtual com/huewu/pla/lib/MultiColumnListView$Column/getBottom()I
aload 5
invokevirtual com/huewu/pla/lib/MultiColumnListView$Column/getBottom()I
if_icmple L2
aload 5
astore 4
L2:
iload 1
iconst_1
iadd
istore 1
aload 4
astore 3
goto L0
.limit locals 7
.limit stack 2
.end method

.method private init(Landroid/util/AttributeSet;)V
aload 0
aload 0
getfield com/huewu/pla/lib/MultiColumnListView/mFrameRect Landroid/graphics/Rect;
invokevirtual com/huewu/pla/lib/MultiColumnListView/getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V
aload 1
ifnonnull L0
aload 0
iconst_2
putfield com/huewu/pla/lib/MultiColumnListView/mColumnNumber I
L1:
aload 0
aload 0
getfield com/huewu/pla/lib/MultiColumnListView/mColumnNumber I
anewarray com/huewu/pla/lib/MultiColumnListView$Column
putfield com/huewu/pla/lib/MultiColumnListView/mColumns [Lcom/huewu/pla/lib/MultiColumnListView$Column;
iconst_0
istore 2
L2:
iload 2
aload 0
getfield com/huewu/pla/lib/MultiColumnListView/mColumnNumber I
if_icmplt L3
aload 0
new com/huewu/pla/lib/MultiColumnListView$FixedColumn
dup
aload 0
invokespecial com/huewu/pla/lib/MultiColumnListView$FixedColumn/<init>(Lcom/huewu/pla/lib/MultiColumnListView;)V
putfield com/huewu/pla/lib/MultiColumnListView/mFixedColumn Lcom/huewu/pla/lib/MultiColumnListView$Column;
return
L0:
aload 0
invokevirtual com/huewu/pla/lib/MultiColumnListView/getContext()Landroid/content/Context;
aload 1
aload 0
invokevirtual com/huewu/pla/lib/MultiColumnListView/getContext()Landroid/content/Context;
ldc "MultiColumnListView"
invokestatic com/huewu/pla/lib/ResourceUtil/getResourceDeclareStyleableIntArray(Landroid/content/Context;Ljava/lang/String;)[I
invokevirtual android/content/Context/obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
astore 1
aload 1
aload 0
invokevirtual com/huewu/pla/lib/MultiColumnListView/getContext()Landroid/content/Context;
ldc "MultiColumnListView_plaLandscapeColumnNumber"
invokestatic com/huewu/pla/lib/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
iconst_m1
invokevirtual android/content/res/TypedArray/getInteger(II)I
istore 2
aload 1
aload 0
invokevirtual com/huewu/pla/lib/MultiColumnListView/getContext()Landroid/content/Context;
ldc "MultiColumnListView_plaColumnNumber"
invokestatic com/huewu/pla/lib/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
iconst_m1
invokevirtual android/content/res/TypedArray/getInteger(II)I
istore 3
aload 0
getfield com/huewu/pla/lib/MultiColumnListView/mFrameRect Landroid/graphics/Rect;
invokevirtual android/graphics/Rect/width()I
aload 0
getfield com/huewu/pla/lib/MultiColumnListView/mFrameRect Landroid/graphics/Rect;
invokevirtual android/graphics/Rect/height()I
if_icmple L4
iload 2
iconst_m1
if_icmpeq L4
aload 0
iload 2
putfield com/huewu/pla/lib/MultiColumnListView/mColumnNumber I
L5:
aload 0
aload 1
aload 0
invokevirtual com/huewu/pla/lib/MultiColumnListView/getContext()Landroid/content/Context;
ldc "MultiColumnListView_plaColumnPaddingLeft"
invokestatic com/huewu/pla/lib/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
iconst_0
invokevirtual android/content/res/TypedArray/getLayoutDimension(II)I
putfield com/huewu/pla/lib/MultiColumnListView/mColumnPaddingLeft I
aload 0
aload 1
aload 0
invokevirtual com/huewu/pla/lib/MultiColumnListView/getContext()Landroid/content/Context;
ldc "MultiColumnListView_plaColumnPaddingRight"
invokestatic com/huewu/pla/lib/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
iconst_0
invokevirtual android/content/res/TypedArray/getLayoutDimension(II)I
putfield com/huewu/pla/lib/MultiColumnListView/mColumnPaddingRight I
aload 1
invokevirtual android/content/res/TypedArray/recycle()V
goto L1
L4:
iload 3
iconst_m1
if_icmpeq L6
aload 0
iload 3
putfield com/huewu/pla/lib/MultiColumnListView/mColumnNumber I
goto L5
L6:
aload 0
iconst_2
putfield com/huewu/pla/lib/MultiColumnListView/mColumnNumber I
goto L5
L3:
aload 0
getfield com/huewu/pla/lib/MultiColumnListView/mColumns [Lcom/huewu/pla/lib/MultiColumnListView$Column;
iload 2
new com/huewu/pla/lib/MultiColumnListView$Column
dup
aload 0
iload 2
invokespecial com/huewu/pla/lib/MultiColumnListView$Column/<init>(Lcom/huewu/pla/lib/MultiColumnListView;I)V
aastore
iload 2
iconst_1
iadd
istore 2
goto L2
.limit locals 4
.limit stack 6
.end method

.method private isHeaderOrFooterPosition(I)Z
aload 0
getfield com/huewu/pla/lib/MultiColumnListView/mAdapter Landroid/widget/ListAdapter;
iload 1
invokeinterface android/widget/ListAdapter/getItemViewType(I)I 1
bipush -2
if_icmpne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method protected getFillChildBottom()I
ldc_w 2147483647
istore 2
aload 0
getfield com/huewu/pla/lib/MultiColumnListView/mColumns [Lcom/huewu/pla/lib/MultiColumnListView$Column;
astore 6
aload 6
arraylength
istore 5
iconst_0
istore 1
L0:
iload 1
iload 5
if_icmplt L1
iload 2
ireturn
L1:
aload 6
iload 1
aaload
invokevirtual com/huewu/pla/lib/MultiColumnListView$Column/getBottom()I
istore 4
iload 2
istore 3
iload 2
iload 4
if_icmple L2
iload 4
istore 3
L2:
iload 1
iconst_1
iadd
istore 1
iload 3
istore 2
goto L0
.limit locals 7
.limit stack 2
.end method

.method protected getFillChildTop()I
ldc_w -2147483648
istore 2
aload 0
getfield com/huewu/pla/lib/MultiColumnListView/mColumns [Lcom/huewu/pla/lib/MultiColumnListView$Column;
astore 6
aload 6
arraylength
istore 5
iconst_0
istore 1
L0:
iload 1
iload 5
if_icmplt L1
iload 2
ireturn
L1:
aload 6
iload 1
aaload
invokevirtual com/huewu/pla/lib/MultiColumnListView$Column/getTop()I
istore 4
iload 2
istore 3
iload 2
iload 4
if_icmpge L2
iload 4
istore 3
L2:
iload 1
iconst_1
iadd
istore 1
iload 3
istore 2
goto L0
.limit locals 7
.limit stack 2
.end method

.method protected getItemBottom(I)I
aload 0
iload 1
invokespecial com/huewu/pla/lib/MultiColumnListView/isHeaderOrFooterPosition(I)Z
ifeq L0
aload 0
getfield com/huewu/pla/lib/MultiColumnListView/mFixedColumn Lcom/huewu/pla/lib/MultiColumnListView$Column;
invokevirtual com/huewu/pla/lib/MultiColumnListView$Column/getTop()I
ireturn
L0:
aload 0
getfield com/huewu/pla/lib/MultiColumnListView/mItems Landroid/util/SparseIntArray;
iload 1
iconst_m1
invokevirtual android/util/SparseIntArray/get(II)I
istore 1
iload 1
iconst_m1
if_icmpne L1
aload 0
invokevirtual com/huewu/pla/lib/MultiColumnListView/getFillChildTop()I
ireturn
L1:
aload 0
getfield com/huewu/pla/lib/MultiColumnListView/mColumns [Lcom/huewu/pla/lib/MultiColumnListView$Column;
iload 1
aaload
invokevirtual com/huewu/pla/lib/MultiColumnListView$Column/getTop()I
ireturn
.limit locals 2
.limit stack 3
.end method

.method protected getItemLeft(I)I
aload 0
iload 1
invokespecial com/huewu/pla/lib/MultiColumnListView/isHeaderOrFooterPosition(I)Z
ifeq L0
aload 0
getfield com/huewu/pla/lib/MultiColumnListView/mFixedColumn Lcom/huewu/pla/lib/MultiColumnListView$Column;
invokevirtual com/huewu/pla/lib/MultiColumnListView$Column/getColumnLeft()I
ireturn
L0:
aload 0
iload 1
invokespecial com/huewu/pla/lib/MultiColumnListView/getColumnLeft(I)I
ireturn
.limit locals 2
.limit stack 2
.end method

.method protected getItemTop(I)I
aload 0
iload 1
invokespecial com/huewu/pla/lib/MultiColumnListView/isHeaderOrFooterPosition(I)Z
ifeq L0
aload 0
getfield com/huewu/pla/lib/MultiColumnListView/mFixedColumn Lcom/huewu/pla/lib/MultiColumnListView$Column;
invokevirtual com/huewu/pla/lib/MultiColumnListView$Column/getBottom()I
ireturn
L0:
aload 0
getfield com/huewu/pla/lib/MultiColumnListView/mItems Landroid/util/SparseIntArray;
iload 1
iconst_m1
invokevirtual android/util/SparseIntArray/get(II)I
istore 1
iload 1
iconst_m1
if_icmpne L1
aload 0
invokevirtual com/huewu/pla/lib/MultiColumnListView/getFillChildBottom()I
ireturn
L1:
aload 0
getfield com/huewu/pla/lib/MultiColumnListView/mColumns [Lcom/huewu/pla/lib/MultiColumnListView$Column;
iload 1
aaload
invokevirtual com/huewu/pla/lib/MultiColumnListView$Column/getBottom()I
ireturn
.limit locals 2
.limit stack 3
.end method

.method protected getScrollChildBottom()I
ldc_w -2147483648
istore 2
aload 0
getfield com/huewu/pla/lib/MultiColumnListView/mColumns [Lcom/huewu/pla/lib/MultiColumnListView$Column;
astore 6
aload 6
arraylength
istore 5
iconst_0
istore 1
L0:
iload 1
iload 5
if_icmplt L1
iload 2
ireturn
L1:
aload 6
iload 1
aaload
invokevirtual com/huewu/pla/lib/MultiColumnListView$Column/getBottom()I
istore 4
iload 2
istore 3
iload 2
iload 4
if_icmpge L2
iload 4
istore 3
L2:
iload 1
iconst_1
iadd
istore 1
iload 3
istore 2
goto L0
.limit locals 7
.limit stack 2
.end method

.method protected getScrollChildTop()I
ldc_w 2147483647
istore 2
aload 0
getfield com/huewu/pla/lib/MultiColumnListView/mColumns [Lcom/huewu/pla/lib/MultiColumnListView$Column;
astore 6
aload 6
arraylength
istore 5
iconst_0
istore 1
L0:
iload 1
iload 5
if_icmplt L1
iload 2
ireturn
L1:
aload 6
iload 1
aaload
invokevirtual com/huewu/pla/lib/MultiColumnListView$Column/getTop()I
istore 4
iload 2
istore 3
iload 2
iload 4
if_icmple L2
iload 4
istore 3
L2:
iload 1
iconst_1
iadd
istore 1
iload 3
istore 2
goto L0
.limit locals 7
.limit stack 2
.end method

.method protected modifyFlingInitialVelocity(I)I
iload 1
ireturn
.limit locals 2
.limit stack 1
.end method

.method protected onAdjustChildViews(Z)V
iconst_0
istore 2
aload 0
invokevirtual com/huewu/pla/lib/MultiColumnListView/getFirstVisiblePosition()I
istore 3
iload 1
ifne L0
iload 3
ifne L0
aload 0
getfield com/huewu/pla/lib/MultiColumnListView/mColumns [Lcom/huewu/pla/lib/MultiColumnListView$Column;
iconst_0
aaload
invokevirtual com/huewu/pla/lib/MultiColumnListView$Column/getTop()I
istore 3
aload 0
getfield com/huewu/pla/lib/MultiColumnListView/mColumns [Lcom/huewu/pla/lib/MultiColumnListView$Column;
astore 5
aload 5
arraylength
istore 4
L1:
iload 2
iload 4
if_icmplt L2
L0:
aload 0
iload 1
invokespecial com/huewu/pla/lib/internal/PLA_ListView/onAdjustChildViews(Z)V
return
L2:
aload 5
iload 2
aaload
astore 6
aload 6
iload 3
aload 6
invokevirtual com/huewu/pla/lib/MultiColumnListView$Column/getTop()I
isub
invokevirtual com/huewu/pla/lib/MultiColumnListView$Column/offsetTopAndBottom(I)V
iload 2
iconst_1
iadd
istore 2
goto L1
.limit locals 7
.limit stack 3
.end method

.method protected onItemAddedToList(IZ)V
aload 0
iload 1
iload 2
invokespecial com/huewu/pla/lib/internal/PLA_ListView/onItemAddedToList(IZ)V
aload 0
iload 1
invokespecial com/huewu/pla/lib/MultiColumnListView/isHeaderOrFooterPosition(I)Z
ifne L0
aload 0
iload 2
iload 1
invokespecial com/huewu/pla/lib/MultiColumnListView/getNextColumn(ZI)Lcom/huewu/pla/lib/MultiColumnListView$Column;
astore 3
aload 0
getfield com/huewu/pla/lib/MultiColumnListView/mItems Landroid/util/SparseIntArray;
iload 1
aload 3
invokevirtual com/huewu/pla/lib/MultiColumnListView$Column/getIndex()I
invokevirtual android/util/SparseIntArray/append(II)V
L0:
return
.limit locals 4
.limit stack 3
.end method

.method protected onLayout(ZIIII)V
aload 0
iload 1
iload 2
iload 3
iload 4
iload 5
invokespecial com/huewu/pla/lib/internal/PLA_ListView/onLayout(ZIIII)V
return
.limit locals 6
.limit stack 6
.end method

.method protected onLayoutSync(I)V
aload 0
getfield com/huewu/pla/lib/MultiColumnListView/mColumns [Lcom/huewu/pla/lib/MultiColumnListView$Column;
astore 3
aload 3
arraylength
istore 2
iconst_0
istore 1
L0:
iload 1
iload 2
if_icmplt L1
return
L1:
aload 3
iload 1
aaload
invokevirtual com/huewu/pla/lib/MultiColumnListView$Column/save()V
iload 1
iconst_1
iadd
istore 1
goto L0
.limit locals 4
.limit stack 2
.end method

.method protected onLayoutSyncFinished(I)V
aload 0
getfield com/huewu/pla/lib/MultiColumnListView/mColumns [Lcom/huewu/pla/lib/MultiColumnListView$Column;
astore 3
aload 3
arraylength
istore 2
iconst_0
istore 1
L0:
iload 1
iload 2
if_icmplt L1
return
L1:
aload 3
iload 1
aaload
invokevirtual com/huewu/pla/lib/MultiColumnListView$Column/clear()V
iload 1
iconst_1
iadd
istore 1
goto L0
.limit locals 4
.limit stack 2
.end method

.method protected onMeasure(II)V
aload 0
iload 1
iload 2
invokespecial com/huewu/pla/lib/internal/PLA_ListView/onMeasure(II)V
aload 0
invokevirtual com/huewu/pla/lib/MultiColumnListView/getMeasuredWidth()I
aload 0
getfield com/huewu/pla/lib/MultiColumnListView/mListPadding Landroid/graphics/Rect;
getfield android/graphics/Rect/left I
isub
aload 0
getfield com/huewu/pla/lib/MultiColumnListView/mListPadding Landroid/graphics/Rect;
getfield android/graphics/Rect/right I
isub
aload 0
getfield com/huewu/pla/lib/MultiColumnListView/mColumnPaddingLeft I
isub
aload 0
getfield com/huewu/pla/lib/MultiColumnListView/mColumnPaddingRight I
isub
aload 0
getfield com/huewu/pla/lib/MultiColumnListView/mColumnNumber I
idiv
istore 2
iconst_0
istore 1
L0:
iload 1
aload 0
getfield com/huewu/pla/lib/MultiColumnListView/mColumnNumber I
if_icmplt L1
aload 0
getfield com/huewu/pla/lib/MultiColumnListView/mFixedColumn Lcom/huewu/pla/lib/MultiColumnListView$Column;
aload 0
getfield com/huewu/pla/lib/MultiColumnListView/mListPadding Landroid/graphics/Rect;
getfield android/graphics/Rect/left I
invokestatic com/huewu/pla/lib/MultiColumnListView$Column/access$1(Lcom/huewu/pla/lib/MultiColumnListView$Column;I)V
aload 0
getfield com/huewu/pla/lib/MultiColumnListView/mFixedColumn Lcom/huewu/pla/lib/MultiColumnListView$Column;
aload 0
invokevirtual com/huewu/pla/lib/MultiColumnListView/getMeasuredWidth()I
invokestatic com/huewu/pla/lib/MultiColumnListView$Column/access$0(Lcom/huewu/pla/lib/MultiColumnListView$Column;I)V
return
L1:
aload 0
getfield com/huewu/pla/lib/MultiColumnListView/mColumns [Lcom/huewu/pla/lib/MultiColumnListView$Column;
iload 1
aaload
iload 2
invokestatic com/huewu/pla/lib/MultiColumnListView$Column/access$0(Lcom/huewu/pla/lib/MultiColumnListView$Column;I)V
aload 0
getfield com/huewu/pla/lib/MultiColumnListView/mColumns [Lcom/huewu/pla/lib/MultiColumnListView$Column;
iload 1
aaload
aload 0
getfield com/huewu/pla/lib/MultiColumnListView/mListPadding Landroid/graphics/Rect;
getfield android/graphics/Rect/left I
aload 0
getfield com/huewu/pla/lib/MultiColumnListView/mColumnPaddingLeft I
iadd
iload 2
iload 1
imul
iadd
invokestatic com/huewu/pla/lib/MultiColumnListView$Column/access$1(Lcom/huewu/pla/lib/MultiColumnListView$Column;I)V
iload 1
iconst_1
iadd
istore 1
goto L0
.limit locals 3
.limit stack 4
.end method

.method protected onMeasureChild(Landroid/view/View;III)V
aload 0
aload 1
invokevirtual com/huewu/pla/lib/MultiColumnListView/isFixedView(Landroid/view/View;)Z
ifeq L0
aload 1
iload 3
iload 4
invokevirtual android/view/View/measure(II)V
return
L0:
aload 1
ldc_w 1073741824
aload 0
iload 2
invokespecial com/huewu/pla/lib/MultiColumnListView/getColumnWidth(I)I
ior
iload 4
invokevirtual android/view/View/measure(II)V
return
.limit locals 5
.limit stack 4
.end method
