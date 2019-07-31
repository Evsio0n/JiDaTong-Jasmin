.bytecode 50.0
.class public synchronized com/huewu/pla/lib/internal/PLA_ListView
.super com/huewu/pla/lib/internal/PLA_AbsListView
.inner class public FixedViewInfo inner com/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo outer com/huewu/pla/lib/internal/PLA_ListView

.field private static final 'MAX_SCROLL_FACTOR' F = 0.33F


.field static final 'NO_POSITION' I = -1


.field private 'mAreAllItemsSelectable' Z

.field private 'mClipDivider' Z

.field 'mDivider' Landroid/graphics/drawable/Drawable;

.field 'mDividerHeight' I

.field private 'mDividerIsOpaque' Z

.field private 'mDividerPaint' Landroid/graphics/Paint;

.field private 'mFooterDividersEnabled' Z

.field private 'mFooterViewInfos' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo;>;"

.field private 'mHeaderDividersEnabled' Z

.field private 'mHeaderViewInfos' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo;>;"

.field private 'mIsCacheColorOpaque' Z

.field private 'mItemsCanFocus' Z

.field 'mOverScrollFooter' Landroid/graphics/drawable/Drawable;

.field 'mOverScrollHeader' Landroid/graphics/drawable/Drawable;

.field private final 'mTempRect' Landroid/graphics/Rect;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
aconst_null
invokespecial com/huewu/pla/lib/internal/PLA_ListView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
aload 1
ldc "listViewStyle"
invokestatic com/huewu/pla/lib/ResourceUtil/getAttrId(Landroid/content/Context;Ljava/lang/String;)I
invokespecial com/huewu/pla/lib/internal/PLA_ListView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return
.limit locals 3
.limit stack 5
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
aload 1
aload 2
iload 3
invokespecial com/huewu/pla/lib/internal/PLA_AbsListView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/huewu/pla/lib/internal/PLA_ListView/mHeaderViewInfos Ljava/util/ArrayList;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/huewu/pla/lib/internal/PLA_ListView/mFooterViewInfos Ljava/util/ArrayList;
aload 0
iconst_1
putfield com/huewu/pla/lib/internal/PLA_ListView/mAreAllItemsSelectable Z
aload 0
iconst_0
putfield com/huewu/pla/lib/internal/PLA_ListView/mItemsCanFocus Z
aload 0
new android/graphics/Rect
dup
invokespecial android/graphics/Rect/<init>()V
putfield com/huewu/pla/lib/internal/PLA_ListView/mTempRect Landroid/graphics/Rect;
aload 1
aload 2
aload 1
ldc "PullToRefresh"
invokestatic com/huewu/pla/lib/ResourceUtil/getResourceDeclareStyleableIntArray(Landroid/content/Context;Ljava/lang/String;)[I
invokevirtual android/content/Context/obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
astore 2
aload 2
aload 1
ldc "ListView_overScrollHeader"
invokestatic com/huewu/pla/lib/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual android/content/res/TypedArray/getDrawable(I)Landroid/graphics/drawable/Drawable;
astore 4
aload 4
ifnull L0
aload 0
aload 4
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V
L0:
aload 2
aload 1
ldc "ListView_overScrollFooter"
invokestatic com/huewu/pla/lib/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual android/content/res/TypedArray/getDrawable(I)Landroid/graphics/drawable/Drawable;
astore 4
aload 4
ifnull L1
aload 0
aload 4
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V
L1:
aload 2
aload 1
ldc "ListView_dividerHeight"
invokestatic com/huewu/pla/lib/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
iconst_0
invokevirtual android/content/res/TypedArray/getLayoutDimension(II)I
istore 3
iload 3
ifeq L2
aload 0
iload 3
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/setDividerHeight(I)V
L2:
aload 0
aload 2
aload 1
ldc "ListView_headerDividersEnabled"
invokestatic com/huewu/pla/lib/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
iconst_1
invokevirtual android/content/res/TypedArray/getBoolean(IZ)Z
putfield com/huewu/pla/lib/internal/PLA_ListView/mHeaderDividersEnabled Z
aload 0
aload 2
aload 1
ldc "ListView_footerDividersEnabled"
invokestatic com/huewu/pla/lib/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
iconst_1
invokevirtual android/content/res/TypedArray/getBoolean(IZ)Z
putfield com/huewu/pla/lib/internal/PLA_ListView/mFooterDividersEnabled Z
aload 2
invokevirtual android/content/res/TypedArray/recycle()V
return
.limit locals 5
.limit stack 4
.end method

.method private addViewAbove(Landroid/view/View;I)Landroid/view/View;
iload 2
iconst_1
isub
istore 3
new java/lang/StringBuilder
dup
ldc "addViewAbove:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/huewu/pla/lib/DebugUtil/i(Ljava/lang/String;)V
aload 0
iload 3
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mIsScrap [Z
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/obtainView(I[Z)Landroid/view/View;
astore 4
aload 0
aload 4
iload 3
aload 1
invokevirtual android/view/View/getTop()I
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mDividerHeight I
isub
iconst_0
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mListPadding Landroid/graphics/Rect;
getfield android/graphics/Rect/left I
iconst_0
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mIsScrap [Z
iconst_0
baload
invokespecial com/huewu/pla/lib/internal/PLA_ListView/setupChild(Landroid/view/View;IIZIZZ)V
aload 4
areturn
.limit locals 5
.limit stack 9
.end method

.method private addViewBelow(Landroid/view/View;I)Landroid/view/View;
iload 2
iconst_1
iadd
istore 3
new java/lang/StringBuilder
dup
ldc "addViewBelow:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/huewu/pla/lib/DebugUtil/i(Ljava/lang/String;)V
aload 0
iload 3
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mIsScrap [Z
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/obtainView(I[Z)Landroid/view/View;
astore 4
aload 0
aload 4
iload 3
aload 1
invokevirtual android/view/View/getBottom()I
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mDividerHeight I
iadd
iconst_1
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mListPadding Landroid/graphics/Rect;
getfield android/graphics/Rect/left I
iconst_0
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mIsScrap [Z
iconst_0
baload
invokespecial com/huewu/pla/lib/internal/PLA_ListView/setupChild(Landroid/view/View;IIZIZZ)V
aload 4
areturn
.limit locals 5
.limit stack 9
.end method

.method private adjustViewsUpOrDown()V
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getChildCount()I
istore 3
iload 3
ifle L0
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mStackFromBottom Z
ifne L1
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getScrollChildTop()I
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mListPadding Landroid/graphics/Rect;
getfield android/graphics/Rect/top I
isub
istore 1
iload 1
istore 2
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mFirstPosition I
ifeq L2
iload 1
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mDividerHeight I
isub
istore 2
L2:
iload 2
istore 1
iload 2
ifge L3
iconst_0
istore 1
L3:
iload 1
ifeq L0
aload 0
iload 1
ineg
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/tryOffsetChildrenTopAndBottom(I)V
L0:
return
L1:
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getScrollChildBottom()I
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getHeight()I
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mListPadding Landroid/graphics/Rect;
getfield android/graphics/Rect/bottom I
isub
isub
istore 1
iload 1
istore 2
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mFirstPosition I
iload 3
iadd
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mItemCount I
if_icmpge L4
iload 1
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mDividerHeight I
iadd
istore 2
L4:
iload 2
istore 1
iload 2
ifle L3
iconst_0
istore 1
goto L3
.limit locals 4
.limit stack 3
.end method

.method private clearRecycledState(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Lcom/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo;>;)V"
aload 1
ifnull L0
aload 1
invokevirtual java/util/ArrayList/size()I
istore 3
iconst_0
istore 2
L1:
iload 2
iload 3
if_icmplt L2
L0:
return
L2:
aload 1
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo
getfield com/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo/view Landroid/view/View;
invokevirtual android/view/View/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast com/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams
astore 4
aload 4
ifnull L3
aload 4
iconst_0
putfield com/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams/recycledHeaderFooter Z
L3:
iload 2
iconst_1
iadd
istore 2
goto L1
.limit locals 5
.limit stack 2
.end method

.method private correctTooHigh(I)V
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mFirstPosition I
iload 1
iadd
iconst_1
isub
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mItemCount I
iconst_1
isub
if_icmpne L0
iload 1
ifle L0
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getScrollChildBottom()I
istore 1
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getBottom()I
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getTop()I
isub
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mListPadding Landroid/graphics/Rect;
getfield android/graphics/Rect/bottom I
isub
iload 1
isub
istore 2
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getScrollChildTop()I
istore 3
iload 2
ifle L0
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mFirstPosition I
ifgt L1
iload 3
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mListPadding Landroid/graphics/Rect;
getfield android/graphics/Rect/top I
if_icmpge L0
L1:
iload 2
istore 1
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mFirstPosition I
ifne L2
iload 2
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mListPadding Landroid/graphics/Rect;
getfield android/graphics/Rect/top I
iload 3
isub
invokestatic java/lang/Math/min(II)I
istore 1
L2:
aload 0
iload 1
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/tryOffsetChildrenTopAndBottom(I)V
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mFirstPosition I
ifle L0
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getScrollChildTop()I
istore 1
aload 0
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mFirstPosition I
iconst_1
isub
iload 1
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mDividerHeight I
isub
invokespecial com/huewu/pla/lib/internal/PLA_ListView/fillUp(II)Landroid/view/View;
pop
aload 0
invokespecial com/huewu/pla/lib/internal/PLA_ListView/adjustViewsUpOrDown()V
L0:
return
.limit locals 4
.limit stack 4
.end method

.method private correctTooLow(I)V
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mFirstPosition I
ifne L0
iload 1
ifle L0
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getScrollChildTop()I
istore 2
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mListPadding Landroid/graphics/Rect;
getfield android/graphics/Rect/top I
istore 4
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getBottom()I
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getTop()I
isub
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mListPadding Landroid/graphics/Rect;
getfield android/graphics/Rect/bottom I
isub
istore 3
iload 2
iload 4
isub
istore 2
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getScrollChildBottom()I
istore 4
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mFirstPosition I
iload 1
iadd
iconst_1
isub
istore 5
iload 2
ifle L0
iload 5
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mItemCount I
iconst_1
isub
if_icmplt L1
iload 4
iload 3
if_icmple L2
L1:
iload 2
istore 1
iload 5
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mItemCount I
iconst_1
isub
if_icmpne L3
iload 2
iload 4
iload 3
isub
invokestatic java/lang/Math/min(II)I
istore 1
L3:
aload 0
iload 1
ineg
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/tryOffsetChildrenTopAndBottom(I)V
iload 5
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mItemCount I
iconst_1
isub
if_icmpge L0
aload 0
iload 5
iconst_1
iadd
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getFillChildTop()I
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mDividerHeight I
iadd
invokespecial com/huewu/pla/lib/internal/PLA_ListView/fillDown(II)Landroid/view/View;
pop
aload 0
invokespecial com/huewu/pla/lib/internal/PLA_ListView/adjustViewsUpOrDown()V
L0:
return
L2:
iload 5
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mItemCount I
iconst_1
isub
if_icmpne L0
aload 0
invokespecial com/huewu/pla/lib/internal/PLA_ListView/adjustViewsUpOrDown()V
return
.limit locals 6
.limit stack 4
.end method

.method private fillDown(II)Landroid/view/View;
new java/lang/StringBuilder
dup
ldc "fill down: "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/huewu/pla/lib/DebugUtil/i(Ljava/lang/String;)V
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getBottom()I
istore 4
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getTop()I
istore 5
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mListPadding Landroid/graphics/Rect;
getfield android/graphics/Rect/bottom I
istore 6
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getFillChildBottom()I
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mDividerHeight I
iadd
istore 3
iload 1
istore 2
iload 3
istore 1
L0:
iload 1
iload 4
iload 5
isub
iload 6
isub
if_icmpge L1
iload 2
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mItemCount I
if_icmplt L2
L1:
aconst_null
areturn
L2:
aload 0
iload 2
aload 0
iload 2
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getItemTop(I)I
iconst_1
iconst_0
invokespecial com/huewu/pla/lib/internal/PLA_ListView/makeAndAddView(IIZZ)Landroid/view/View;
pop
iload 2
iconst_1
iadd
istore 2
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getFillChildBottom()I
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mDividerHeight I
iadd
istore 1
goto L0
.limit locals 7
.limit stack 5
.end method

.method private fillFromTop(I)Landroid/view/View;
aload 0
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mFirstPosition I
iconst_m1
invokestatic java/lang/Math/min(II)I
putfield com/huewu/pla/lib/internal/PLA_ListView/mFirstPosition I
aload 0
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mFirstPosition I
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mItemCount I
iconst_1
isub
invokestatic java/lang/Math/min(II)I
putfield com/huewu/pla/lib/internal/PLA_ListView/mFirstPosition I
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mFirstPosition I
ifge L0
aload 0
iconst_0
putfield com/huewu/pla/lib/internal/PLA_ListView/mFirstPosition I
L0:
aload 0
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mFirstPosition I
iload 1
invokespecial com/huewu/pla/lib/internal/PLA_ListView/fillDown(II)Landroid/view/View;
areturn
.limit locals 2
.limit stack 4
.end method

.method private fillSpecific(II)Landroid/view/View;
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mDataChanged Z
ifeq L0
new java/lang/StringBuilder
dup
ldc "fill specific: "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ":"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/huewu/pla/lib/DebugUtil/i(Ljava/lang/String;)V
L0:
aload 0
iload 1
iload 2
iconst_1
iconst_0
invokespecial com/huewu/pla/lib/internal/PLA_ListView/makeAndAddView(IIZZ)Landroid/view/View;
astore 3
aload 0
iload 1
putfield com/huewu/pla/lib/internal/PLA_ListView/mFirstPosition I
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mDividerHeight I
istore 2
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mStackFromBottom Z
ifne L1
aload 0
iload 1
iconst_1
isub
aload 3
invokevirtual android/view/View/getTop()I
iload 2
isub
invokespecial com/huewu/pla/lib/internal/PLA_ListView/fillUp(II)Landroid/view/View;
pop
aload 0
invokespecial com/huewu/pla/lib/internal/PLA_ListView/adjustViewsUpOrDown()V
aload 0
iload 1
iconst_1
iadd
aload 3
invokevirtual android/view/View/getBottom()I
iload 2
iadd
invokespecial com/huewu/pla/lib/internal/PLA_ListView/fillDown(II)Landroid/view/View;
pop
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getChildCount()I
istore 1
iload 1
ifle L2
aload 0
iload 1
invokespecial com/huewu/pla/lib/internal/PLA_ListView/correctTooHigh(I)V
L2:
aconst_null
areturn
L1:
aload 0
iload 1
iconst_1
iadd
aload 3
invokevirtual android/view/View/getBottom()I
iload 2
iadd
invokespecial com/huewu/pla/lib/internal/PLA_ListView/fillDown(II)Landroid/view/View;
pop
aload 0
invokespecial com/huewu/pla/lib/internal/PLA_ListView/adjustViewsUpOrDown()V
aload 0
iload 1
iconst_1
isub
aload 3
invokevirtual android/view/View/getTop()I
iload 2
isub
invokespecial com/huewu/pla/lib/internal/PLA_ListView/fillUp(II)Landroid/view/View;
pop
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getChildCount()I
istore 1
iload 1
ifle L2
aload 0
iload 1
invokespecial com/huewu/pla/lib/internal/PLA_ListView/correctTooLow(I)V
goto L2
.limit locals 4
.limit stack 5
.end method

.method private fillUp(II)Landroid/view/View;
new java/lang/StringBuilder
dup
ldc "fill up: "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/huewu/pla/lib/DebugUtil/i(Ljava/lang/String;)V
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mListPadding Landroid/graphics/Rect;
getfield android/graphics/Rect/top I
istore 4
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getFillChildTop()I
istore 3
iload 1
istore 2
iload 3
istore 1
L0:
iload 1
iload 4
if_icmple L1
iload 2
ifge L2
L1:
aload 0
iload 2
iconst_1
iadd
putfield com/huewu/pla/lib/internal/PLA_ListView/mFirstPosition I
aconst_null
areturn
L2:
aload 0
iload 2
aload 0
iload 2
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getItemBottom(I)I
iconst_0
iconst_0
invokespecial com/huewu/pla/lib/internal/PLA_ListView/makeAndAddView(IIZZ)Landroid/view/View;
pop
iload 2
iconst_1
isub
istore 2
aload 0
iload 2
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getItemBottom(I)I
istore 1
goto L0
.limit locals 5
.limit stack 5
.end method

.method private makeAndAddView(IIZZ)Landroid/view/View;
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mDataChanged Z
ifne L0
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mRecycler Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;
iload 1
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/getActiveView(I)Landroid/view/View;
astore 6
aload 6
ifnull L0
aload 0
aload 6
iload 1
iload 2
iload 3
aload 0
iload 1
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getItemLeft(I)I
iload 4
iconst_1
invokespecial com/huewu/pla/lib/internal/PLA_ListView/setupChild(Landroid/view/View;IIZIZZ)V
aload 6
areturn
L0:
aload 0
iload 1
iload 3
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/onItemAddedToList(IZ)V
aload 0
iload 1
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getItemLeft(I)I
istore 5
new java/lang/StringBuilder
dup
ldc "makeAndAddView:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/huewu/pla/lib/DebugUtil/i(Ljava/lang/String;)V
aload 0
iload 1
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mIsScrap [Z
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/obtainView(I[Z)Landroid/view/View;
astore 6
aload 0
aload 6
iload 1
iload 2
iload 3
iload 5
iload 4
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mIsScrap [Z
iconst_0
baload
invokespecial com/huewu/pla/lib/internal/PLA_ListView/setupChild(Landroid/view/View;IIZIZZ)V
aload 6
areturn
.limit locals 7
.limit stack 9
.end method

.method private measureScrapChild(Landroid/view/View;II)V
aload 1
invokevirtual android/view/View/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast com/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams
astore 5
aload 5
astore 4
aload 5
ifnonnull L0
new com/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams
dup
iconst_m1
bipush -2
iconst_0
invokespecial com/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams/<init>(III)V
astore 4
aload 1
aload 4
invokevirtual android/view/View/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
L0:
aload 4
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mAdapter Landroid/widget/ListAdapter;
iload 2
invokeinterface android/widget/ListAdapter/getItemViewType(I)I 1
putfield com/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams/viewType I
aload 4
iconst_1
putfield com/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams/forceAdd Z
iload 3
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mListPadding Landroid/graphics/Rect;
getfield android/graphics/Rect/left I
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mListPadding Landroid/graphics/Rect;
getfield android/graphics/Rect/right I
iadd
aload 4
getfield com/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams/width I
invokestatic android/view/ViewGroup/getChildMeasureSpec(III)I
istore 3
aload 4
getfield com/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams/height I
istore 2
iload 2
ifle L1
iload 2
ldc_w 1073741824
invokestatic android/view/View$MeasureSpec/makeMeasureSpec(II)I
istore 2
L2:
aload 1
iload 3
iload 2
invokevirtual android/view/View/measure(II)V
return
L1:
iconst_0
iconst_0
invokestatic android/view/View$MeasureSpec/makeMeasureSpec(II)I
istore 2
goto L2
.limit locals 6
.limit stack 5
.end method

.method private removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V
.signature "(Landroid/view/View;Ljava/util/ArrayList<Lcom/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo;>;)V"
aload 2
invokevirtual java/util/ArrayList/size()I
istore 4
iconst_0
istore 3
L0:
iload 3
iload 4
if_icmplt L1
return
L1:
aload 2
iload 3
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo
getfield com/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo/view Landroid/view/View;
aload 1
if_acmpne L2
aload 2
iload 3
invokevirtual java/util/ArrayList/remove(I)Ljava/lang/Object;
pop
return
L2:
iload 3
iconst_1
iadd
istore 3
goto L0
.limit locals 5
.limit stack 2
.end method

.method private scrollListItemsBy(I)V
aload 0
iload 1
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/tryOffsetChildrenTopAndBottom(I)V
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getHeight()I
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mListPadding Landroid/graphics/Rect;
getfield android/graphics/Rect/bottom I
isub
istore 2
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mListPadding Landroid/graphics/Rect;
getfield android/graphics/Rect/top I
istore 3
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mRecycler Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;
astore 6
iload 1
ifge L0
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getLastChild()Landroid/view/View;
astore 5
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getChildCount()I
istore 1
L1:
aload 5
invokevirtual android/view/View/getBottom()I
iload 2
if_icmplt L2
L3:
aload 5
invokevirtual android/view/View/getBottom()I
iload 2
if_icmpge L4
aload 0
iload 2
aload 5
invokevirtual android/view/View/getBottom()I
isub
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/tryOffsetChildrenTopAndBottom(I)V
L4:
aload 0
iconst_0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getChildAt(I)Landroid/view/View;
astore 5
L5:
aload 5
invokevirtual android/view/View/getBottom()I
iload 3
if_icmplt L6
L7:
return
L2:
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mFirstPosition I
iload 1
iadd
iconst_1
isub
istore 4
iload 4
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mItemCount I
iconst_1
isub
if_icmpge L3
aload 0
aload 5
iload 4
invokespecial com/huewu/pla/lib/internal/PLA_ListView/addViewBelow(Landroid/view/View;I)Landroid/view/View;
pop
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getLastChild()Landroid/view/View;
astore 5
iload 1
iconst_1
iadd
istore 1
goto L1
L6:
aload 6
aload 5
invokevirtual android/view/View/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast com/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams
getfield com/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams/viewType I
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/shouldRecycleViewType(I)Z
ifeq L8
aload 0
aload 5
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/detachViewFromParent(Landroid/view/View;)V
aload 6
aload 5
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/addScrapView(Landroid/view/View;)V
L9:
aload 0
iconst_0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getChildAt(I)Landroid/view/View;
astore 5
aload 0
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mFirstPosition I
iconst_1
iadd
putfield com/huewu/pla/lib/internal/PLA_ListView/mFirstPosition I
goto L5
L8:
aload 0
aload 5
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/removeViewInLayout(Landroid/view/View;)V
goto L9
L0:
aload 0
iconst_0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getChildAt(I)Landroid/view/View;
astore 5
L10:
aload 5
invokevirtual android/view/View/getTop()I
iload 3
if_icmple L11
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mFirstPosition I
ifgt L12
L11:
aload 5
invokevirtual android/view/View/getTop()I
iload 3
if_icmple L13
aload 0
iload 3
aload 5
invokevirtual android/view/View/getTop()I
isub
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/tryOffsetChildrenTopAndBottom(I)V
L13:
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getChildCount()I
iconst_1
isub
istore 1
aload 0
iload 1
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getChildAt(I)Landroid/view/View;
astore 5
L14:
aload 5
invokevirtual android/view/View/getTop()I
iload 2
if_icmple L7
aload 6
aload 5
invokevirtual android/view/View/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast com/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams
getfield com/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams/viewType I
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/shouldRecycleViewType(I)Z
ifeq L15
aload 0
aload 5
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/detachViewFromParent(Landroid/view/View;)V
aload 6
aload 5
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/addScrapView(Landroid/view/View;)V
L16:
iload 1
iconst_1
isub
istore 1
aload 0
iload 1
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getChildAt(I)Landroid/view/View;
astore 5
goto L14
L12:
aload 0
aload 5
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mFirstPosition I
invokespecial com/huewu/pla/lib/internal/PLA_ListView/addViewAbove(Landroid/view/View;I)Landroid/view/View;
astore 5
aload 0
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mFirstPosition I
iconst_1
isub
putfield com/huewu/pla/lib/internal/PLA_ListView/mFirstPosition I
goto L10
L15:
aload 0
aload 5
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/removeViewInLayout(Landroid/view/View;)V
goto L16
.limit locals 7
.limit stack 3
.end method

.method private setupChild(Landroid/view/View;IIZIZZ)V
iload 6
ifeq L0
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/shouldShowSelector()Z
ifeq L0
iconst_1
istore 6
L1:
iload 6
aload 1
invokevirtual android/view/View/isSelected()Z
ixor
istore 10
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mTouchMode I
istore 8
iload 8
ifle L2
iload 8
iconst_3
if_icmpge L2
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mMotionPosition I
iload 2
if_icmpne L2
iconst_1
istore 11
L3:
aload 1
invokevirtual android/view/View/isPressed()Z
istore 12
iload 7
ifeq L4
iload 10
ifne L4
aload 1
invokevirtual android/view/View/isLayoutRequested()Z
ifne L4
iconst_0
istore 8
L5:
aload 1
invokevirtual android/view/View/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast com/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams
astore 14
aload 14
astore 13
aload 14
ifnonnull L6
new com/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams
dup
iconst_m1
bipush -2
iconst_0
invokespecial com/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams/<init>(III)V
astore 13
L6:
aload 13
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mAdapter Landroid/widget/ListAdapter;
iload 2
invokeinterface android/widget/ListAdapter/getItemViewType(I)I 1
putfield com/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams/viewType I
aload 13
iload 2
putfield com/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams/scrappedFromPosition I
iload 7
ifeq L7
aload 13
getfield com/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams/forceAdd Z
ifeq L8
L7:
aload 13
getfield com/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams/recycledHeaderFooter Z
ifeq L9
aload 13
getfield com/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams/viewType I
bipush -2
if_icmpne L9
L8:
iload 4
ifeq L10
iconst_m1
istore 9
L11:
aload 0
aload 1
iload 9
aload 13
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
L12:
iload 10
ifeq L13
aload 1
iload 6
invokevirtual android/view/View/setSelected(Z)V
L13:
iload 11
iload 12
ixor
ifeq L14
aload 1
iload 11
invokevirtual android/view/View/setPressed(Z)V
L14:
iload 8
ifeq L15
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mWidthMeasureSpec I
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mListPadding Landroid/graphics/Rect;
getfield android/graphics/Rect/left I
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mListPadding Landroid/graphics/Rect;
getfield android/graphics/Rect/right I
iadd
aload 13
getfield com/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams/width I
invokestatic android/view/ViewGroup/getChildMeasureSpec(III)I
istore 10
aload 13
getfield com/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams/height I
istore 9
iload 9
ifle L16
iload 9
ldc_w 1073741824
invokestatic android/view/View$MeasureSpec/makeMeasureSpec(II)I
istore 9
L17:
aload 0
aload 1
iload 2
iload 10
iload 9
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/onMeasureChild(Landroid/view/View;III)V
L18:
aload 1
invokevirtual android/view/View/getMeasuredWidth()I
istore 9
aload 1
invokevirtual android/view/View/getMeasuredHeight()I
istore 10
iload 4
ifeq L19
L20:
iload 8
ifeq L21
aload 0
aload 1
iload 2
iload 5
iload 3
iload 5
iload 9
iadd
iload 3
iload 10
iadd
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/onLayoutChild(Landroid/view/View;IIIII)V
L22:
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mCachingStarted Z
ifeq L23
aload 1
invokevirtual android/view/View/isDrawingCacheEnabled()Z
ifne L23
aload 1
iconst_1
invokevirtual android/view/View/setDrawingCacheEnabled(Z)V
L23:
return
L0:
iconst_0
istore 6
goto L1
L2:
iconst_0
istore 11
goto L3
L4:
iconst_1
istore 8
goto L5
L10:
iconst_0
istore 9
goto L11
L9:
aload 13
iconst_0
putfield com/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams/forceAdd Z
aload 13
getfield com/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams/viewType I
bipush -2
if_icmpne L24
aload 13
iconst_1
putfield com/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams/recycledHeaderFooter Z
L24:
iload 4
ifeq L25
iconst_m1
istore 9
L26:
aload 0
aload 1
iload 9
aload 13
iconst_1
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z
pop
goto L12
L25:
iconst_0
istore 9
goto L26
L16:
iconst_0
iconst_0
invokestatic android/view/View$MeasureSpec/makeMeasureSpec(II)I
istore 9
goto L17
L15:
aload 0
aload 1
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/cleanupLayoutState(Landroid/view/View;)V
goto L18
L19:
iload 3
iload 10
isub
istore 3
goto L20
L21:
aload 0
aload 1
iload 2
iload 5
aload 1
invokevirtual android/view/View/getLeft()I
isub
iload 3
aload 1
invokevirtual android/view/View/getTop()I
isub
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/onOffsetChild(Landroid/view/View;III)V
goto L22
.limit locals 15
.limit stack 8
.end method

.method private showingBottomFadingEdge()Z
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getChildCount()I
istore 1
aload 0
iload 1
iconst_1
isub
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getChildAt(I)Landroid/view/View;
invokevirtual android/view/View/getBottom()I
istore 2
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mFirstPosition I
istore 3
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getScrollY()I
istore 4
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getHeight()I
istore 5
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mListPadding Landroid/graphics/Rect;
getfield android/graphics/Rect/bottom I
istore 6
iload 3
iload 1
iadd
iconst_1
isub
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mItemCount I
iconst_1
isub
if_icmplt L0
iload 2
iload 4
iload 5
iadd
iload 6
isub
if_icmplt L0
iconst_0
ireturn
L0:
iconst_1
ireturn
.limit locals 7
.limit stack 3
.end method

.method private showingTopFadingEdge()Z
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getScrollY()I
istore 1
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mListPadding Landroid/graphics/Rect;
getfield android/graphics/Rect/top I
istore 2
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mFirstPosition I
ifgt L0
aload 0
iconst_0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getChildAt(I)Landroid/view/View;
invokevirtual android/view/View/getTop()I
iload 1
iload 2
iadd
if_icmpgt L0
iconst_0
ireturn
L0:
iconst_1
ireturn
.limit locals 3
.limit stack 3
.end method

.method public addFooterView(Landroid/view/View;)V
aload 0
aload 1
aconst_null
iconst_1
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
return
.limit locals 2
.limit stack 4
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
new com/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo
dup
aload 0
invokespecial com/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo/<init>(Lcom/huewu/pla/lib/internal/PLA_ListView;)V
astore 4
aload 4
aload 1
putfield com/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo/view Landroid/view/View;
aload 4
aload 2
putfield com/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo/data Ljava/lang/Object;
aload 4
iload 3
putfield com/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo/isSelectable Z
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mFooterViewInfos Ljava/util/ArrayList;
aload 4
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mDataSetObserver Lcom/huewu/pla/lib/internal/PLA_AdapterView$AdapterDataSetObserver;
ifnull L0
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mDataSetObserver Lcom/huewu/pla/lib/internal/PLA_AdapterView$AdapterDataSetObserver;
invokevirtual com/huewu/pla/lib/internal/PLA_AdapterView$AdapterDataSetObserver/onChanged()V
L0:
return
.limit locals 5
.limit stack 3
.end method

.method public addHeaderView(Landroid/view/View;)V
aload 0
aload 1
aconst_null
iconst_1
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
return
.limit locals 2
.limit stack 4
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mAdapter Landroid/widget/ListAdapter;
ifnull L0
new java/lang/IllegalStateException
dup
ldc "Cannot add header view to list -- setAdapter has already been called."
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
new com/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo
dup
aload 0
invokespecial com/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo/<init>(Lcom/huewu/pla/lib/internal/PLA_ListView;)V
astore 4
aload 4
aload 1
putfield com/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo/view Landroid/view/View;
aload 4
aload 2
putfield com/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo/data Ljava/lang/Object;
aload 4
iload 3
putfield com/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo/isSelectable Z
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mHeaderViewInfos Ljava/util/ArrayList;
aload 4
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
return
.limit locals 5
.limit stack 3
.end method

.method protected canAnimate()Z
aload 0
invokespecial com/huewu/pla/lib/internal/PLA_AbsListView/canAnimate()Z
ifeq L0
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mItemCount I
ifle L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public clearChoices()V
return
.limit locals 1
.limit stack 0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mDividerHeight I
istore 8
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mOverScrollHeader Landroid/graphics/drawable/Drawable;
astore 18
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mOverScrollFooter Landroid/graphics/drawable/Drawable;
astore 19
aload 18
ifnull L0
iconst_1
istore 2
L1:
aload 19
ifnull L2
iconst_1
istore 3
L3:
iload 8
ifle L4
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mDivider Landroid/graphics/drawable/Drawable;
ifnull L4
iconst_1
istore 4
L5:
iload 4
ifne L6
iload 2
ifne L6
iload 3
ifeq L7
L6:
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mTempRect Landroid/graphics/Rect;
astore 20
aload 20
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getPaddingLeft()I
putfield android/graphics/Rect/left I
aload 20
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getRight()I
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getLeft()I
isub
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getPaddingRight()I
isub
putfield android/graphics/Rect/right I
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getChildCount()I
istore 9
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mHeaderViewInfos Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
istore 11
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mItemCount I
istore 14
iload 14
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mFooterViewInfos Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
isub
iconst_1
isub
istore 12
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mHeaderDividersEnabled Z
istore 15
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mFooterDividersEnabled Z
istore 16
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mFirstPosition I
istore 10
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mAreAllItemsSelectable Z
istore 17
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mAdapter Landroid/widget/ListAdapter;
astore 21
iload 4
ifeq L8
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/isOpaque()Z
ifeq L8
aload 0
invokespecial com/huewu/pla/lib/internal/PLA_AbsListView/isOpaque()Z
ifne L8
iconst_1
istore 5
L9:
iload 5
ifeq L10
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mDividerPaint Landroid/graphics/Paint;
ifnonnull L10
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mIsCacheColorOpaque Z
ifeq L10
aload 0
new android/graphics/Paint
dup
invokespecial android/graphics/Paint/<init>()V
putfield com/huewu/pla/lib/internal/PLA_ListView/mDividerPaint Landroid/graphics/Paint;
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mDividerPaint Landroid/graphics/Paint;
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getCacheColorHint()I
invokevirtual android/graphics/Paint/setColor(I)V
L10:
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mDividerPaint Landroid/graphics/Paint;
astore 22
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getBottom()I
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getTop()I
isub
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mListPadding Landroid/graphics/Rect;
getfield android/graphics/Rect/bottom I
isub
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getScrollY()I
iadd
istore 13
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mStackFromBottom Z
ifne L11
iconst_0
istore 7
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getScrollY()I
istore 6
iload 9
ifle L12
iload 6
ifge L12
iload 2
ifeq L13
aload 20
iconst_0
putfield android/graphics/Rect/bottom I
aload 20
iload 6
putfield android/graphics/Rect/top I
aload 0
aload 1
aload 18
aload 20
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
L12:
iconst_0
istore 6
iload 7
istore 2
L14:
iload 6
iload 9
if_icmplt L15
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getBottom()I
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getScrollY()I
iadd
istore 4
iload 3
ifeq L7
iload 10
iload 9
iadd
iload 14
if_icmpne L7
iload 4
iload 2
if_icmple L7
aload 20
iload 2
putfield android/graphics/Rect/top I
aload 20
iload 4
putfield android/graphics/Rect/bottom I
aload 0
aload 1
aload 19
aload 20
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
L7:
aload 0
aload 1
invokespecial com/huewu/pla/lib/internal/PLA_AbsListView/dispatchDraw(Landroid/graphics/Canvas;)V
return
L0:
iconst_0
istore 2
goto L1
L2:
iconst_0
istore 3
goto L3
L4:
iconst_0
istore 4
goto L5
L8:
iconst_0
istore 5
goto L9
L13:
iload 4
ifeq L12
aload 20
iconst_0
putfield android/graphics/Rect/bottom I
aload 20
iload 8
ineg
putfield android/graphics/Rect/top I
aload 0
aload 1
aload 20
iconst_m1
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
goto L12
L15:
iload 15
ifne L16
iload 2
istore 7
iload 10
iload 6
iadd
iload 11
if_icmplt L17
L16:
iload 16
ifne L18
iload 2
istore 7
iload 10
iload 6
iadd
iload 12
if_icmpge L17
L18:
aload 0
iload 6
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getChildAt(I)Landroid/view/View;
invokevirtual android/view/View/getBottom()I
istore 2
iload 2
istore 7
iload 4
ifeq L17
iload 2
istore 7
iload 2
iload 13
if_icmpge L17
iload 3
ifeq L19
iload 2
istore 7
iload 6
iload 9
iconst_1
isub
if_icmpeq L17
L19:
iload 17
ifne L20
aload 21
iload 10
iload 6
iadd
invokeinterface android/widget/ListAdapter/isEnabled(I)Z 1
ifeq L21
iload 6
iload 9
iconst_1
isub
if_icmpeq L20
aload 21
iload 10
iload 6
iadd
iconst_1
iadd
invokeinterface android/widget/ListAdapter/isEnabled(I)Z 1
ifeq L21
L20:
aload 20
iload 2
putfield android/graphics/Rect/top I
aload 20
iload 2
iload 8
iadd
putfield android/graphics/Rect/bottom I
aload 0
aload 1
aload 20
iload 6
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
iload 2
istore 7
L17:
iload 6
iconst_1
iadd
istore 6
iload 7
istore 2
goto L14
L21:
iload 2
istore 7
iload 5
ifeq L17
aload 20
iload 2
putfield android/graphics/Rect/top I
aload 20
iload 2
iload 8
iadd
putfield android/graphics/Rect/bottom I
aload 1
aload 20
aload 22
invokevirtual android/graphics/Canvas/drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
iload 2
istore 7
goto L17
L11:
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mListPadding Landroid/graphics/Rect;
getfield android/graphics/Rect/top I
istore 7
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getScrollY()I
istore 6
iload 9
ifle L22
iload 2
ifeq L22
aload 20
iload 6
putfield android/graphics/Rect/top I
aload 20
aload 0
iconst_0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getChildAt(I)Landroid/view/View;
invokevirtual android/view/View/getTop()I
putfield android/graphics/Rect/bottom I
aload 0
aload 1
aload 18
aload 20
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
L22:
iload 2
ifeq L23
iconst_1
istore 2
L24:
iload 2
iload 9
if_icmplt L25
iload 9
ifle L7
iload 6
ifle L7
iload 3
ifeq L26
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getBottom()I
istore 2
aload 20
iload 2
putfield android/graphics/Rect/top I
aload 20
iload 2
iload 6
iadd
putfield android/graphics/Rect/bottom I
aload 0
aload 1
aload 19
aload 20
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
goto L7
L23:
iconst_0
istore 2
goto L24
L25:
iload 15
ifne L27
iload 10
iload 2
iadd
iload 11
if_icmplt L28
L27:
iload 16
ifne L29
iload 10
iload 2
iadd
iload 12
if_icmpge L28
L29:
aload 0
iload 2
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getChildAt(I)Landroid/view/View;
invokevirtual android/view/View/getTop()I
istore 14
iload 4
ifeq L28
iload 14
iload 7
if_icmple L28
iload 17
ifne L30
aload 21
iload 10
iload 2
iadd
invokeinterface android/widget/ListAdapter/isEnabled(I)Z 1
ifeq L31
iload 2
iload 9
iconst_1
isub
if_icmpeq L30
aload 21
iload 10
iload 2
iadd
iconst_1
iadd
invokeinterface android/widget/ListAdapter/isEnabled(I)Z 1
ifeq L31
L30:
aload 20
iload 14
iload 8
isub
putfield android/graphics/Rect/top I
aload 20
iload 14
putfield android/graphics/Rect/bottom I
aload 0
aload 1
aload 20
iload 2
iconst_1
isub
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
L28:
iload 2
iconst_1
iadd
istore 2
goto L24
L31:
iload 5
ifeq L28
aload 20
iload 14
iload 8
isub
putfield android/graphics/Rect/top I
aload 20
iload 14
putfield android/graphics/Rect/bottom I
aload 1
aload 20
aload 22
invokevirtual android/graphics/Canvas/drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
goto L28
L26:
iload 4
ifeq L7
aload 20
iload 13
putfield android/graphics/Rect/top I
aload 20
iload 13
iload 8
iadd
putfield android/graphics/Rect/bottom I
aload 0
aload 1
aload 20
iconst_m1
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
goto L7
.limit locals 23
.limit stack 5
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
aload 0
aload 1
invokespecial com/huewu/pla/lib/internal/PLA_AbsListView/dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
istore 8
iload 8
ifne L0
iconst_0
istore 3
iconst_0
istore 5
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getSelectedItemPosition()I
istore 2
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getAdapter()Landroid/widget/ListAdapter;
astore 9
iload 2
istore 4
aload 9
ifnull L1
aload 9
invokeinterface android/widget/ListAdapter/getCount()I 0
istore 7
iload 7
bipush 15
if_icmpge L2
iconst_0
istore 4
iload 5
istore 3
L3:
iload 4
iload 7
if_icmplt L4
iload 2
istore 4
L1:
aload 1
iload 3
invokevirtual android/view/accessibility/AccessibilityEvent/setItemCount(I)V
aload 1
iload 4
invokevirtual android/view/accessibility/AccessibilityEvent/setCurrentItemIndex(I)V
L0:
iload 8
ireturn
L4:
aload 9
iload 4
invokeinterface android/widget/ListAdapter/isEnabled(I)Z 1
ifeq L5
iload 3
iconst_1
iadd
istore 6
iload 2
istore 5
L6:
iload 4
iconst_1
iadd
istore 4
iload 5
istore 2
iload 6
istore 3
goto L3
L5:
iload 2
istore 5
iload 3
istore 6
iload 4
iload 2
if_icmpgt L6
iload 2
iconst_1
isub
istore 5
iload 3
istore 6
goto L6
L2:
iload 7
istore 3
iload 2
istore 4
goto L1
.limit locals 10
.limit stack 2
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mDivider Landroid/graphics/drawable/Drawable;
astore 5
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mClipDivider Z
istore 4
iload 4
ifne L0
aload 5
aload 2
invokevirtual android/graphics/drawable/Drawable/setBounds(Landroid/graphics/Rect;)V
L1:
aload 5
aload 1
invokevirtual android/graphics/drawable/Drawable/draw(Landroid/graphics/Canvas;)V
iload 4
ifeq L2
aload 1
invokevirtual android/graphics/Canvas/restore()V
L2:
return
L0:
aload 1
invokevirtual android/graphics/Canvas/save()I
pop
aload 1
aload 2
invokevirtual android/graphics/Canvas/clipRect(Landroid/graphics/Rect;)Z
pop
goto L1
.limit locals 6
.limit stack 2
.end method

.method drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
aload 2
invokevirtual android/graphics/drawable/Drawable/getMinimumHeight()I
istore 4
aload 1
invokevirtual android/graphics/Canvas/save()I
pop
aload 1
aload 3
invokevirtual android/graphics/Canvas/clipRect(Landroid/graphics/Rect;)Z
pop
aload 3
getfield android/graphics/Rect/bottom I
aload 3
getfield android/graphics/Rect/top I
isub
iload 4
if_icmpge L0
aload 3
aload 3
getfield android/graphics/Rect/top I
iload 4
iadd
putfield android/graphics/Rect/bottom I
L0:
aload 2
aload 3
invokevirtual android/graphics/drawable/Drawable/setBounds(Landroid/graphics/Rect;)V
aload 2
aload 1
invokevirtual android/graphics/drawable/Drawable/draw(Landroid/graphics/Canvas;)V
aload 1
invokevirtual android/graphics/Canvas/restore()V
return
.limit locals 5
.limit stack 3
.end method

.method drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
aload 2
invokevirtual android/graphics/drawable/Drawable/getMinimumHeight()I
istore 4
aload 1
invokevirtual android/graphics/Canvas/save()I
pop
aload 1
aload 3
invokevirtual android/graphics/Canvas/clipRect(Landroid/graphics/Rect;)Z
pop
aload 3
getfield android/graphics/Rect/bottom I
aload 3
getfield android/graphics/Rect/top I
isub
iload 4
if_icmpge L0
aload 3
aload 3
getfield android/graphics/Rect/bottom I
iload 4
isub
putfield android/graphics/Rect/top I
L0:
aload 2
aload 3
invokevirtual android/graphics/drawable/Drawable/setBounds(Landroid/graphics/Rect;)V
aload 2
aload 1
invokevirtual android/graphics/drawable/Drawable/draw(Landroid/graphics/Canvas;)V
aload 1
invokevirtual android/graphics/Canvas/restore()V
return
.limit locals 5
.limit stack 3
.end method

.method protected fillGap(Z)V
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getChildCount()I
istore 2
iload 1
ifeq L0
aload 0
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mFirstPosition I
iload 2
iadd
aload 0
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mFirstPosition I
iload 2
iadd
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getItemTop(I)I
invokespecial com/huewu/pla/lib/internal/PLA_ListView/fillDown(II)Landroid/view/View;
pop
aload 0
iload 1
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/onAdjustChildViews(Z)V
return
L0:
aload 0
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mFirstPosition I
iconst_1
isub
aload 0
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mFirstPosition I
iconst_1
isub
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getItemBottom(I)I
invokespecial com/huewu/pla/lib/internal/PLA_ListView/fillUp(II)Landroid/view/View;
pop
aload 0
iload 1
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/onAdjustChildViews(Z)V
return
.limit locals 3
.limit stack 5
.end method

.method findMotionRow(I)I
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getChildCount()I
istore 3
iload 3
ifle L0
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mStackFromBottom Z
ifne L1
iconst_0
istore 2
L2:
iload 2
iload 3
if_icmplt L3
L0:
iconst_m1
ireturn
L3:
iload 1
aload 0
iload 2
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getChildAt(I)Landroid/view/View;
invokevirtual android/view/View/getBottom()I
if_icmpgt L4
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mFirstPosition I
iload 2
iadd
ireturn
L4:
iload 2
iconst_1
iadd
istore 2
goto L2
L1:
iload 3
iconst_1
isub
istore 2
L5:
iload 2
iflt L0
iload 1
aload 0
iload 2
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getChildAt(I)Landroid/view/View;
invokevirtual android/view/View/getTop()I
if_icmplt L6
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mFirstPosition I
iload 2
iadd
ireturn
L6:
iload 2
iconst_1
isub
istore 2
goto L5
.limit locals 4
.limit stack 3
.end method

.method public fullScroll(I)Z
iconst_0
istore 2
iload 1
bipush 33
if_icmpne L0
aload 0
iconst_0
iconst_1
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/lookForSelectablePosition(IZ)I
iflt L1
aload 0
iconst_1
putfield com/huewu/pla/lib/internal/PLA_ListView/mLayoutMode I
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/invokeOnItemScrollListener()V
iconst_1
istore 2
L1:
iload 2
ifeq L2
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/awakenScrollBars()Z
ifne L2
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/awakenScrollBars()Z
pop
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/invalidate()V
L2:
iload 2
ireturn
L0:
iload 1
sipush 130
if_icmpne L1
aload 0
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mItemCount I
iconst_1
isub
iconst_1
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/lookForSelectablePosition(IZ)I
iflt L3
aload 0
iconst_3
putfield com/huewu/pla/lib/internal/PLA_ListView/mLayoutMode I
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/invokeOnItemScrollListener()V
L3:
iconst_1
istore 2
goto L1
.limit locals 3
.limit stack 3
.end method

.method public volatile synthetic getAdapter()Landroid/widget/Adapter;
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getAdapter()Landroid/widget/ListAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mAdapter Landroid/widget/ListAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getCheckItemIds()[J
.annotation visible Ljava/lang/Deprecated;
.end annotation
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mAdapter Landroid/widget/ListAdapter;
ifnull L0
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mAdapter Landroid/widget/ListAdapter;
invokeinterface android/widget/ListAdapter/hasStableIds()Z 0
ifeq L0
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getCheckedItemIds()[J
areturn
L0:
iconst_0
newarray long
areturn
.limit locals 1
.limit stack 1
.end method

.method public getCheckedItemIds()[J
iconst_0
newarray long
areturn
.limit locals 1
.limit stack 1
.end method

.method public getCheckedItemPosition()I
iconst_m1
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
aconst_null
areturn
.limit locals 1
.limit stack 1
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mDivider Landroid/graphics/drawable/Drawable;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getDividerHeight()I
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mDividerHeight I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getFirstVisiblePosition()I
iconst_0
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mFirstPosition I
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getHeaderViewsCount()I
isub
invokestatic java/lang/Math/max(II)I
ireturn
.limit locals 1
.limit stack 3
.end method

.method public getFooterViewsCount()I
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mFooterViewInfos Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getHeaderViewsCount()I
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mHeaderViewInfos Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method protected getItemBottom(I)I
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getChildCount()I
ifle L0
aload 0
iconst_0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getChildAt(I)Landroid/view/View;
invokevirtual android/view/View/getTop()I
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mDividerHeight I
isub
ireturn
L0:
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getHeight()I
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getListPaddingBottom()I
isub
ireturn
.limit locals 2
.limit stack 2
.end method

.method protected getItemLeft(I)I
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mListPadding Landroid/graphics/Rect;
getfield android/graphics/Rect/left I
ireturn
.limit locals 2
.limit stack 1
.end method

.method protected getItemTop(I)I
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getChildCount()I
istore 1
iload 1
ifle L0
aload 0
iload 1
iconst_1
isub
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getChildAt(I)Landroid/view/View;
invokevirtual android/view/View/getBottom()I
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mDividerHeight I
iadd
ireturn
L0:
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getListPaddingTop()I
ireturn
.limit locals 2
.limit stack 3
.end method

.method public getItemsCanFocus()Z
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mItemsCanFocus Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method protected getLastChild()Landroid/view/View;
aload 0
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getChildCount()I
iconst_1
isub
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getChildAt(I)Landroid/view/View;
areturn
.limit locals 1
.limit stack 3
.end method

.method public getLastVisiblePosition()I
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mFirstPosition I
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getChildCount()I
iadd
iconst_1
isub
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mAdapter Landroid/widget/ListAdapter;
invokeinterface android/widget/ListAdapter/getCount()I 0
iconst_1
isub
invokestatic java/lang/Math/min(II)I
ireturn
.limit locals 1
.limit stack 3
.end method

.method public getMaxScrollAmount()I
ldc_w 0.33F
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getBottom()I
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getTop()I
isub
i2f
fmul
f2i
ireturn
.limit locals 1
.limit stack 3
.end method

.method public getOverscrollFooter()Landroid/graphics/drawable/Drawable;
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mOverScrollFooter Landroid/graphics/drawable/Drawable;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getOverscrollHeader()Landroid/graphics/drawable/Drawable;
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mOverScrollHeader Landroid/graphics/drawable/Drawable;
areturn
.limit locals 1
.limit stack 1
.end method

.method public isFixedView(Landroid/view/View;)Z
iconst_1
istore 5
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mHeaderViewInfos Ljava/util/ArrayList;
astore 6
aload 6
invokevirtual java/util/ArrayList/size()I
istore 3
iconst_0
istore 2
L0:
iload 2
iload 3
if_icmplt L1
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mFooterViewInfos Ljava/util/ArrayList;
astore 6
aload 6
invokevirtual java/util/ArrayList/size()I
istore 3
iconst_0
istore 2
L2:
iload 2
iload 3
if_icmplt L3
iconst_0
istore 4
L4:
iload 4
ireturn
L1:
iload 5
istore 4
aload 6
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo
getfield com/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo/view Landroid/view/View;
aload 1
if_acmpeq L4
iload 2
iconst_1
iadd
istore 2
goto L0
L3:
iload 5
istore 4
aload 6
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo
getfield com/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo/view Landroid/view/View;
aload 1
if_acmpeq L4
iload 2
iconst_1
iadd
istore 2
goto L2
.limit locals 7
.limit stack 2
.end method

.method public isItemChecked(I)Z
iconst_0
ireturn
.limit locals 2
.limit stack 1
.end method

.method public isOpaque()Z
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mCachingStarted Z
ifeq L0
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mIsCacheColorOpaque Z
ifeq L0
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mDividerIsOpaque Z
ifne L1
L0:
aload 0
invokespecial com/huewu/pla/lib/internal/PLA_AbsListView/isOpaque()Z
ifne L1
iconst_0
ireturn
L1:
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method

.method protected layoutChildren()V
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
.catch all from L6 to L7 using L2
.catch all from L7 to L8 using L2
.catch all from L9 to L10 using L2
.catch all from L10 to L11 using L2
.catch all from L12 to L2 using L2
.catch all from L13 to L14 using L2
.catch all from L15 to L16 using L2
.catch all from L17 to L18 using L2
.catch all from L18 to L19 using L2
.catch all from L20 to L21 using L2
.catch all from L21 to L22 using L2
.catch all from L22 to L23 using L2
.catch all from L24 to L25 using L2
.catch all from L26 to L27 using L2
.catch all from L28 to L29 using L2
.catch all from L30 to L31 using L2
.catch all from L32 to L33 using L2
.catch all from L34 to L35 using L2
.catch all from L36 to L37 using L2
.catch all from L38 to L39 using L2
.catch all from L40 to L41 using L2
.catch all from L42 to L43 using L2
.catch all from L44 to L45 using L2
.catch all from L46 to L47 using L2
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mBlockLayoutRequests Z
istore 5
iload 5
ifne L48
aload 0
iconst_1
putfield com/huewu/pla/lib/internal/PLA_ListView/mBlockLayoutRequests Z
L0:
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/invalidate()V
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mAdapter Landroid/widget/ListAdapter;
ifnonnull L3
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/resetList()V
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/invokeOnItemScrollListener()V
L1:
iload 5
ifne L48
aload 0
iconst_0
putfield com/huewu/pla/lib/internal/PLA_ListView/mBlockLayoutRequests Z
L48:
return
L3:
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mListPadding Landroid/graphics/Rect;
getfield android/graphics/Rect/top I
istore 2
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getBottom()I
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getTop()I
isub
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mListPadding Landroid/graphics/Rect;
getfield android/graphics/Rect/bottom I
isub
istore 3
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getChildCount()I
istore 4
L4:
aconst_null
astore 7
L5:
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mLayoutMode I
tableswitch 1
L7
L6
L7
L7
L7
default : L49
L6:
aload 0
iconst_0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getChildAt(I)Landroid/view/View;
astore 7
L7:
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mDataChanged Z
istore 6
L8:
iload 6
ifeq L10
L9:
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/handleDataChanged()V
L10:
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mItemCount I
ifne L12
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/resetList()V
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/invokeOnItemScrollListener()V
L11:
iload 5
ifne L48
aload 0
iconst_0
putfield com/huewu/pla/lib/internal/PLA_ListView/mBlockLayoutRequests Z
return
L12:
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mItemCount I
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mAdapter Landroid/widget/ListAdapter;
invokeinterface android/widget/ListAdapter/getCount()I 0
if_icmpeq L13
new java/lang/IllegalStateException
dup
new java/lang/StringBuilder
dup
ldc "The content of the adapter has changed but ListView did not receive a notification. Make sure the content of your adapter is not modified from a background thread, but only from the UI thread. [in ListView("
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getId()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ", "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc ") with Adapter("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mAdapter Landroid/widget/ListAdapter;
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc ")]"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L2:
astore 7
iload 5
ifne L50
aload 0
iconst_0
putfield com/huewu/pla/lib/internal/PLA_ListView/mBlockLayoutRequests Z
L50:
aload 7
athrow
L13:
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mFirstPosition I
istore 1
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mRecycler Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;
astore 8
L14:
iload 6
ifeq L26
iload 4
iconst_1
isub
istore 1
goto L51
L15:
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mLayoutMode I
tableswitch 1
L32
L16
L30
L34
L28
default : L52
L16:
iload 4
ifne L38
L17:
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/detachAllViewsFromParent()V
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mStackFromBottom Z
ifne L36
aload 0
iload 2
invokespecial com/huewu/pla/lib/internal/PLA_ListView/fillFromTop(I)Landroid/view/View;
pop
L18:
aload 8
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/scrapActiveViews()V
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mTouchMode I
ifle L46
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mTouchMode I
iconst_3
if_icmpge L46
aload 0
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mMotionPosition I
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mFirstPosition I
isub
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getChildAt(I)Landroid/view/View;
astore 7
L19:
aload 7
ifnull L21
L20:
aload 0
aload 7
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/positionSelector(Landroid/view/View;)V
L21:
aload 0
iconst_0
putfield com/huewu/pla/lib/internal/PLA_ListView/mLayoutMode I
aload 0
iconst_0
putfield com/huewu/pla/lib/internal/PLA_ListView/mDataChanged Z
aload 0
iconst_0
putfield com/huewu/pla/lib/internal/PLA_ListView/mNeedSync Z
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mItemCount I
ifle L22
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/checkSelectionChanged()V
L22:
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/invokeOnItemScrollListener()V
L23:
iload 5
ifne L48
aload 0
iconst_0
putfield com/huewu/pla/lib/internal/PLA_ListView/mBlockLayoutRequests Z
return
L24:
aload 8
aload 0
iload 1
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getChildAt(I)Landroid/view/View;
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/addScrapView(Landroid/view/View;)V
L25:
iload 1
iconst_1
isub
istore 1
goto L51
L26:
aload 8
iload 4
iload 1
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/fillActiveViews(II)V
L27:
goto L15
L28:
aload 0
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mSyncPosition I
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/onLayoutSync(I)V
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/detachAllViewsFromParent()V
aload 0
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mSyncPosition I
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mSpecificTop I
invokespecial com/huewu/pla/lib/internal/PLA_ListView/fillSpecific(II)Landroid/view/View;
pop
aload 0
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mSyncPosition I
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/onLayoutSyncFinished(I)V
L29:
goto L18
L30:
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/detachAllViewsFromParent()V
aload 0
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mItemCount I
iconst_1
isub
iload 3
invokespecial com/huewu/pla/lib/internal/PLA_ListView/fillUp(II)Landroid/view/View;
pop
aload 0
invokespecial com/huewu/pla/lib/internal/PLA_ListView/adjustViewsUpOrDown()V
L31:
goto L18
L32:
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/detachAllViewsFromParent()V
aload 0
iconst_0
putfield com/huewu/pla/lib/internal/PLA_ListView/mFirstPosition I
aload 0
iload 2
invokespecial com/huewu/pla/lib/internal/PLA_ListView/fillFromTop(I)Landroid/view/View;
pop
aload 0
invokespecial com/huewu/pla/lib/internal/PLA_ListView/adjustViewsUpOrDown()V
L33:
goto L18
L34:
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/detachAllViewsFromParent()V
aload 0
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/reconcileSelectedPosition()I
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mSpecificTop I
invokespecial com/huewu/pla/lib/internal/PLA_ListView/fillSpecific(II)Landroid/view/View;
pop
L35:
goto L18
L36:
aload 0
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mItemCount I
iconst_1
isub
iload 3
invokespecial com/huewu/pla/lib/internal/PLA_ListView/fillUp(II)Landroid/view/View;
pop
L37:
goto L18
L38:
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mFirstPosition I
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mItemCount I
if_icmpge L44
aload 0
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mFirstPosition I
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/onLayoutSync(I)V
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/detachAllViewsFromParent()V
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mFirstPosition I
istore 3
L39:
aload 7
ifnonnull L42
iload 2
istore 1
L40:
aload 0
iload 3
iload 1
invokespecial com/huewu/pla/lib/internal/PLA_ListView/fillSpecific(II)Landroid/view/View;
pop
aload 0
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mFirstPosition I
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/onLayoutSyncFinished(I)V
L41:
goto L18
L42:
aload 7
invokevirtual android/view/View/getTop()I
istore 1
L43:
goto L40
L44:
aload 0
iconst_0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/onLayoutSync(I)V
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/detachAllViewsFromParent()V
aload 0
iconst_0
iload 2
invokespecial com/huewu/pla/lib/internal/PLA_ListView/fillSpecific(II)Landroid/view/View;
pop
aload 0
iconst_0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/onLayoutSyncFinished(I)V
L45:
goto L18
L46:
aload 0
iconst_0
putfield com/huewu/pla/lib/internal/PLA_ListView/mSelectedTop I
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mSelectorRect Landroid/graphics/Rect;
invokevirtual android/graphics/Rect/setEmpty()V
L47:
goto L21
L49:
goto L6
L51:
iload 1
ifge L24
goto L15
L52:
goto L16
.limit locals 9
.limit stack 5
.end method

.method lookForSelectablePosition(IZ)I
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mAdapter Landroid/widget/ListAdapter;
astore 5
aload 5
ifnull L0
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/isInTouchMode()Z
ifeq L1
L0:
iconst_m1
ireturn
L1:
aload 5
invokeinterface android/widget/ListAdapter/getCount()I 0
istore 4
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mAreAllItemsSelectable Z
ifne L2
iload 2
ifeq L3
iconst_0
iload 1
invokestatic java/lang/Math/max(II)I
istore 1
L4:
iload 1
istore 3
iload 1
iload 4
if_icmpge L5
aload 5
iload 1
invokeinterface android/widget/ListAdapter/isEnabled(I)Z 1
ifeq L6
iload 1
istore 3
L5:
iload 3
iflt L0
iload 3
iload 4
if_icmpge L0
iload 3
ireturn
L6:
iload 1
iconst_1
iadd
istore 1
goto L4
L3:
iload 1
iload 4
iconst_1
isub
invokestatic java/lang/Math/min(II)I
istore 1
L7:
iload 1
istore 3
iload 1
iflt L5
iload 1
istore 3
aload 5
iload 1
invokeinterface android/widget/ListAdapter/isEnabled(I)Z 1
ifne L5
iload 1
iconst_1
isub
istore 1
goto L7
L2:
iload 1
iflt L0
iload 1
iload 4
if_icmpge L0
iload 1
ireturn
.limit locals 6
.limit stack 3
.end method

.method final measureHeightOfChildren(IIIII)I
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mAdapter Landroid/widget/ListAdapter;
astore 12
aload 12
ifnonnull L0
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mListPadding Landroid/graphics/Rect;
getfield android/graphics/Rect/top I
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mListPadding Landroid/graphics/Rect;
getfield android/graphics/Rect/bottom I
iadd
istore 2
L1:
iload 2
ireturn
L0:
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mListPadding Landroid/graphics/Rect;
getfield android/graphics/Rect/top I
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mListPadding Landroid/graphics/Rect;
getfield android/graphics/Rect/bottom I
iadd
istore 9
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mDividerHeight I
ifle L2
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mDivider Landroid/graphics/drawable/Drawable;
ifnull L2
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mDividerHeight I
istore 6
L3:
iconst_0
istore 10
iload 3
istore 7
iload 3
iconst_m1
if_icmpne L4
aload 12
invokeinterface android/widget/ListAdapter/getCount()I 0
iconst_1
isub
istore 7
L4:
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mRecycler Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;
astore 12
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/recycleOnMeasure()Z
istore 11
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mIsScrap [Z
astore 13
iload 2
istore 8
iload 9
istore 3
iload 10
istore 2
L5:
iload 8
iload 7
if_icmple L6
iload 3
ireturn
L2:
iconst_0
istore 6
goto L3
L6:
new java/lang/StringBuilder
dup
ldc "measureHeightOfChildren:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
iload 8
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/huewu/pla/lib/DebugUtil/i(Ljava/lang/String;)V
aload 0
iload 8
aload 13
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/obtainView(I[Z)Landroid/view/View;
astore 14
aload 0
aload 14
iload 8
iload 1
invokespecial com/huewu/pla/lib/internal/PLA_ListView/measureScrapChild(Landroid/view/View;II)V
iload 3
istore 9
iload 8
ifle L7
iload 3
iload 6
iadd
istore 9
L7:
iload 11
ifeq L8
aload 12
aload 14
invokevirtual android/view/View/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast com/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams
getfield com/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams/viewType I
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/shouldRecycleViewType(I)Z
ifeq L8
ldc "measureHeightOfChildren"
invokestatic com/huewu/pla/lib/DebugUtil/i(Ljava/lang/String;)V
aload 12
aload 14
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/addScrapView(Landroid/view/View;)V
L8:
iload 9
aload 14
invokevirtual android/view/View/getMeasuredHeight()I
iadd
istore 3
iload 3
iload 4
if_icmplt L9
iload 5
iflt L10
iload 8
iload 5
if_icmple L10
iload 2
ifle L10
iload 3
iload 4
if_icmpne L1
L10:
iload 4
ireturn
L9:
iload 2
istore 9
iload 5
iflt L11
iload 2
istore 9
iload 8
iload 5
if_icmplt L11
iload 3
istore 9
L11:
iload 8
iconst_1
iadd
istore 8
iload 9
istore 2
goto L5
.limit locals 15
.limit stack 4
.end method

.method protected onAdjustChildViews(Z)V
iload 1
ifeq L0
aload 0
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getChildCount()I
invokespecial com/huewu/pla/lib/internal/PLA_ListView/correctTooHigh(I)V
return
L0:
aload 0
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getChildCount()I
invokespecial com/huewu/pla/lib/internal/PLA_ListView/correctTooLow(I)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onFinishInflate()V
aload 0
invokespecial com/huewu/pla/lib/internal/PLA_AbsListView/onFinishInflate()V
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getChildCount()I
istore 2
iload 2
ifle L0
iconst_0
istore 1
L1:
iload 1
iload 2
if_icmplt L2
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/removeAllViews()V
L0:
return
L2:
aload 0
aload 0
iload 1
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getChildAt(I)Landroid/view/View;
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/addHeaderView(Landroid/view/View;)V
iload 1
iconst_1
iadd
istore 1
goto L1
.limit locals 3
.limit stack 3
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
aload 0
iload 1
iload 2
aload 3
invokespecial com/huewu/pla/lib/internal/PLA_AbsListView/onFocusChanged(ZILandroid/graphics/Rect;)V
iconst_m1
istore 5
iload 5
istore 4
iload 1
ifeq L0
iload 5
istore 4
aload 3
ifnull L0
aload 3
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getScrollX()I
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getScrollY()I
invokevirtual android/graphics/Rect/offset(II)V
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mAdapter Landroid/widget/ListAdapter;
astore 11
aload 11
invokeinterface android/widget/ListAdapter/getCount()I 0
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getChildCount()I
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mFirstPosition I
iadd
if_icmpge L1
aload 0
iconst_0
putfield com/huewu/pla/lib/internal/PLA_ListView/mLayoutMode I
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/layoutChildren()V
L1:
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mTempRect Landroid/graphics/Rect;
astore 12
ldc_w 2147483647
istore 6
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getChildCount()I
istore 9
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mFirstPosition I
istore 10
iconst_0
istore 4
L2:
iload 4
iload 9
if_icmplt L3
iload 5
istore 4
L0:
iload 4
iflt L4
aload 0
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mFirstPosition I
iload 4
iadd
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/setSelection(I)V
return
L3:
aload 11
iload 10
iload 4
iadd
invokeinterface android/widget/ListAdapter/isEnabled(I)Z 1
ifne L5
iload 6
istore 7
L6:
iload 4
iconst_1
iadd
istore 4
iload 7
istore 6
goto L2
L5:
aload 0
iload 4
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getChildAt(I)Landroid/view/View;
astore 13
aload 13
aload 12
invokevirtual android/view/View/getDrawingRect(Landroid/graphics/Rect;)V
aload 0
aload 13
aload 12
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V
aload 3
aload 12
iload 2
invokestatic com/huewu/pla/lib/internal/PLA_ListView/getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
istore 8
iload 6
istore 7
iload 8
iload 6
if_icmpge L6
iload 8
istore 7
iload 4
istore 5
goto L6
L4:
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/requestLayout()V
return
.limit locals 14
.limit stack 4
.end method

.method protected onItemAddedToList(IZ)V
return
.limit locals 3
.limit stack 0
.end method

.method protected onLayoutChild(Landroid/view/View;IIIII)V
aload 1
iload 3
iload 4
iload 5
iload 6
invokevirtual android/view/View/layout(IIII)V
return
.limit locals 7
.limit stack 5
.end method

.method protected onMeasure(II)V
aload 0
iload 1
iload 2
invokespecial com/huewu/pla/lib/internal/PLA_AbsListView/onMeasure(II)V
iload 1
invokestatic android/view/View$MeasureSpec/getMode(I)I
istore 9
iload 2
invokestatic android/view/View$MeasureSpec/getMode(I)I
istore 8
iload 1
invokestatic android/view/View$MeasureSpec/getSize(I)I
istore 4
iload 2
invokestatic android/view/View$MeasureSpec/getSize(I)I
istore 5
iconst_0
istore 6
iconst_0
istore 7
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mAdapter Landroid/widget/ListAdapter;
ifnonnull L0
iconst_0
istore 2
L1:
aload 0
iload 2
putfield com/huewu/pla/lib/internal/PLA_ListView/mItemCount I
iload 7
istore 3
iload 6
istore 2
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mItemCount I
ifle L2
iload 9
ifeq L3
iload 7
istore 3
iload 6
istore 2
iload 8
ifne L2
L3:
aload 0
iconst_0
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mIsScrap [Z
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/obtainView(I[Z)Landroid/view/View;
astore 10
aload 0
aload 10
iconst_0
iload 1
invokespecial com/huewu/pla/lib/internal/PLA_ListView/measureScrapChild(Landroid/view/View;II)V
aload 10
invokevirtual android/view/View/getMeasuredWidth()I
istore 6
aload 10
invokevirtual android/view/View/getMeasuredHeight()I
istore 7
iload 7
istore 3
iload 6
istore 2
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/recycleOnMeasure()Z
ifeq L2
iload 7
istore 3
iload 6
istore 2
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mRecycler Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;
aload 10
invokevirtual android/view/View/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast com/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams
getfield com/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams/viewType I
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/shouldRecycleViewType(I)Z
ifeq L2
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mRecycler Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;
aload 10
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/addScrapView(Landroid/view/View;)V
iload 6
istore 2
iload 7
istore 3
L2:
iload 9
ifne L4
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mListPadding Landroid/graphics/Rect;
getfield android/graphics/Rect/left I
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mListPadding Landroid/graphics/Rect;
getfield android/graphics/Rect/right I
iadd
iload 2
iadd
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getVerticalScrollbarWidth()I
iadd
istore 4
L4:
iload 5
istore 2
iload 8
ifne L5
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mListPadding Landroid/graphics/Rect;
getfield android/graphics/Rect/top I
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mListPadding Landroid/graphics/Rect;
getfield android/graphics/Rect/bottom I
iadd
iload 3
iadd
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getVerticalFadingEdgeLength()I
iconst_2
imul
iadd
istore 2
L5:
iload 2
istore 3
iload 8
ldc_w -2147483648
if_icmpne L6
aload 0
iload 1
iconst_0
iconst_m1
iload 2
iconst_m1
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/measureHeightOfChildren(IIIII)I
istore 3
L6:
aload 0
iload 4
iload 3
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/setMeasuredDimension(II)V
aload 0
iload 1
putfield com/huewu/pla/lib/internal/PLA_ListView/mWidthMeasureSpec I
return
L0:
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mAdapter Landroid/widget/ListAdapter;
invokeinterface android/widget/ListAdapter/getCount()I 0
istore 2
goto L1
.limit locals 11
.limit stack 6
.end method

.method protected onMeasureChild(Landroid/view/View;III)V
aload 1
iload 3
iload 4
invokevirtual android/view/View/measure(II)V
return
.limit locals 5
.limit stack 3
.end method

.method protected onOffsetChild(Landroid/view/View;III)V
aload 1
iload 3
invokevirtual android/view/View/offsetLeftAndRight(I)V
aload 1
iload 4
invokevirtual android/view/View/offsetTopAndBottom(I)V
return
.limit locals 5
.limit stack 2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mItemsCanFocus Z
ifeq L0
aload 1
invokevirtual android/view/MotionEvent/getAction()I
ifne L0
aload 1
invokevirtual android/view/MotionEvent/getEdgeFlags()I
ifeq L0
iconst_0
ireturn
L0:
aload 0
aload 1
invokespecial com/huewu/pla/lib/internal/PLA_AbsListView/onTouchEvent(Landroid/view/MotionEvent;)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
iconst_0
aload 0
aload 1
iload 2
lload 3
invokespecial com/huewu/pla/lib/internal/PLA_AbsListView/performItemClick(Landroid/view/View;IJ)Z
ior
ireturn
.limit locals 5
.limit stack 6
.end method

.method protected recycleOnMeasure()Z
.annotation visible Landroid/view/ViewDebug$ExportedProperty;
category s = "list"
.end annotation
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method

.method public removeFooterView(Landroid/view/View;)Z
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mFooterViewInfos Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifle L0
iconst_0
istore 2
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mAdapter Landroid/widget/ListAdapter;
checkcast com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter
aload 1
invokevirtual com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/removeFooter(Landroid/view/View;)Z
ifeq L1
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mDataSetObserver Lcom/huewu/pla/lib/internal/PLA_AdapterView$AdapterDataSetObserver;
invokevirtual com/huewu/pla/lib/internal/PLA_AdapterView$AdapterDataSetObserver/onChanged()V
iconst_1
istore 2
L1:
aload 0
aload 1
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mFooterViewInfos Ljava/util/ArrayList;
invokespecial com/huewu/pla/lib/internal/PLA_ListView/removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V
iload 2
ireturn
L0:
iconst_0
ireturn
.limit locals 3
.limit stack 3
.end method

.method public removeHeaderView(Landroid/view/View;)Z
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mHeaderViewInfos Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifle L0
iconst_0
istore 2
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mAdapter Landroid/widget/ListAdapter;
checkcast com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter
aload 1
invokevirtual com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/removeHeader(Landroid/view/View;)Z
ifeq L1
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mDataSetObserver Lcom/huewu/pla/lib/internal/PLA_AdapterView$AdapterDataSetObserver;
invokevirtual com/huewu/pla/lib/internal/PLA_AdapterView$AdapterDataSetObserver/onChanged()V
iconst_1
istore 2
L1:
aload 0
aload 1
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mHeaderViewInfos Ljava/util/ArrayList;
invokespecial com/huewu/pla/lib/internal/PLA_ListView/removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V
iload 2
ireturn
L0:
iconst_0
ireturn
.limit locals 3
.limit stack 3
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
aload 2
getfield android/graphics/Rect/top I
istore 9
aload 2
aload 1
invokevirtual android/view/View/getLeft()I
aload 1
invokevirtual android/view/View/getTop()I
invokevirtual android/graphics/Rect/offset(II)V
aload 2
aload 1
invokevirtual android/view/View/getScrollX()I
ineg
aload 1
invokevirtual android/view/View/getScrollY()I
ineg
invokevirtual android/graphics/Rect/offset(II)V
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getHeight()I
istore 8
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getScrollY()I
istore 6
iload 6
iload 8
iadd
istore 4
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getVerticalFadingEdgeLength()I
istore 7
iload 6
istore 5
aload 0
invokespecial com/huewu/pla/lib/internal/PLA_ListView/showingTopFadingEdge()Z
ifeq L0
iload 6
istore 5
iload 9
iload 7
if_icmple L0
iload 6
iload 7
iadd
istore 5
L0:
aload 0
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getChildCount()I
iconst_1
isub
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getChildAt(I)Landroid/view/View;
invokevirtual android/view/View/getBottom()I
istore 9
iload 4
istore 6
aload 0
invokespecial com/huewu/pla/lib/internal/PLA_ListView/showingBottomFadingEdge()Z
ifeq L1
iload 4
istore 6
aload 2
getfield android/graphics/Rect/bottom I
iload 9
iload 7
isub
if_icmpge L1
iload 4
iload 7
isub
istore 6
L1:
iconst_0
istore 7
aload 2
getfield android/graphics/Rect/bottom I
iload 6
if_icmple L2
aload 2
getfield android/graphics/Rect/top I
iload 5
if_icmple L2
aload 2
invokevirtual android/graphics/Rect/height()I
iload 8
if_icmple L3
iconst_0
aload 2
getfield android/graphics/Rect/top I
iload 5
isub
iadd
istore 4
L4:
iload 4
iload 9
iload 6
isub
invokestatic java/lang/Math/min(II)I
istore 4
L5:
iload 4
ifeq L6
iconst_1
istore 3
L7:
iload 3
ifeq L8
aload 0
iload 4
ineg
invokespecial com/huewu/pla/lib/internal/PLA_ListView/scrollListItemsBy(I)V
aload 0
aload 1
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/positionSelector(Landroid/view/View;)V
aload 0
aload 1
invokevirtual android/view/View/getTop()I
putfield com/huewu/pla/lib/internal/PLA_ListView/mSelectedTop I
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/invalidate()V
L8:
iload 3
ireturn
L3:
iconst_0
aload 2
getfield android/graphics/Rect/bottom I
iload 6
isub
iadd
istore 4
goto L4
L2:
iload 7
istore 4
aload 2
getfield android/graphics/Rect/top I
iload 5
if_icmpge L5
iload 7
istore 4
aload 2
getfield android/graphics/Rect/bottom I
iload 6
if_icmpge L5
aload 2
invokevirtual android/graphics/Rect/height()I
iload 8
if_icmple L9
iconst_0
iload 6
aload 2
getfield android/graphics/Rect/bottom I
isub
isub
istore 4
L10:
iload 4
aload 0
iconst_0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getChildAt(I)Landroid/view/View;
invokevirtual android/view/View/getTop()I
iload 5
isub
invokestatic java/lang/Math/max(II)I
istore 4
goto L5
L9:
iconst_0
iload 5
aload 2
getfield android/graphics/Rect/top I
isub
isub
istore 4
goto L10
L6:
iconst_0
istore 3
goto L7
.limit locals 10
.limit stack 3
.end method

.method resetList()V
aload 0
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mHeaderViewInfos Ljava/util/ArrayList;
invokespecial com/huewu/pla/lib/internal/PLA_ListView/clearRecycledState(Ljava/util/ArrayList;)V
aload 0
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mFooterViewInfos Ljava/util/ArrayList;
invokespecial com/huewu/pla/lib/internal/PLA_ListView/clearRecycledState(Ljava/util/ArrayList;)V
aload 0
invokespecial com/huewu/pla/lib/internal/PLA_AbsListView/resetList()V
aload 0
iconst_0
putfield com/huewu/pla/lib/internal/PLA_ListView/mLayoutMode I
return
.limit locals 1
.limit stack 2
.end method

.method public volatile synthetic setAdapter(Landroid/widget/Adapter;)V
aload 0
aload 1
checkcast android/widget/ListAdapter
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/setAdapter(Landroid/widget/ListAdapter;)V
return
.limit locals 2
.limit stack 2
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mAdapter Landroid/widget/ListAdapter;
ifnull L0
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mAdapter Landroid/widget/ListAdapter;
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mDataSetObserver Lcom/huewu/pla/lib/internal/PLA_AdapterView$AdapterDataSetObserver;
invokeinterface android/widget/ListAdapter/unregisterDataSetObserver(Landroid/database/DataSetObserver;)V 1
L0:
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/resetList()V
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mRecycler Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/clear()V
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mHeaderViewInfos Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifgt L1
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mFooterViewInfos Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifle L2
L1:
aload 0
new com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter
dup
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mHeaderViewInfos Ljava/util/ArrayList;
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mFooterViewInfos Ljava/util/ArrayList;
aload 1
invokespecial com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/<init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V
putfield com/huewu/pla/lib/internal/PLA_ListView/mAdapter Landroid/widget/ListAdapter;
L3:
aload 0
iconst_m1
putfield com/huewu/pla/lib/internal/PLA_ListView/mOldSelectedPosition I
aload 0
ldc2_w -9223372036854775808L
putfield com/huewu/pla/lib/internal/PLA_ListView/mOldSelectedRowId J
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mAdapter Landroid/widget/ListAdapter;
ifnull L4
aload 0
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mAdapter Landroid/widget/ListAdapter;
invokeinterface android/widget/ListAdapter/areAllItemsEnabled()Z 0
putfield com/huewu/pla/lib/internal/PLA_ListView/mAreAllItemsSelectable Z
aload 0
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mItemCount I
putfield com/huewu/pla/lib/internal/PLA_ListView/mOldItemCount I
aload 0
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mAdapter Landroid/widget/ListAdapter;
invokeinterface android/widget/ListAdapter/getCount()I 0
putfield com/huewu/pla/lib/internal/PLA_ListView/mItemCount I
aload 0
new com/huewu/pla/lib/internal/PLA_AdapterView$AdapterDataSetObserver
dup
aload 0
invokespecial com/huewu/pla/lib/internal/PLA_AdapterView$AdapterDataSetObserver/<init>(Lcom/huewu/pla/lib/internal/PLA_AdapterView;)V
putfield com/huewu/pla/lib/internal/PLA_ListView/mDataSetObserver Lcom/huewu/pla/lib/internal/PLA_AdapterView$AdapterDataSetObserver;
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mAdapter Landroid/widget/ListAdapter;
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mDataSetObserver Lcom/huewu/pla/lib/internal/PLA_AdapterView$AdapterDataSetObserver;
invokeinterface android/widget/ListAdapter/registerDataSetObserver(Landroid/database/DataSetObserver;)V 1
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mRecycler Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mAdapter Landroid/widget/ListAdapter;
invokeinterface android/widget/ListAdapter/getViewTypeCount()I 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/setViewTypeCount(I)V
L5:
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/requestLayout()V
return
L2:
aload 0
aload 1
putfield com/huewu/pla/lib/internal/PLA_ListView/mAdapter Landroid/widget/ListAdapter;
goto L3
L4:
aload 0
iconst_1
putfield com/huewu/pla/lib/internal/PLA_ListView/mAreAllItemsSelectable Z
goto L5
.limit locals 2
.limit stack 6
.end method

.method public setCacheColorHint(I)V
iload 1
bipush 24
iushr
sipush 255
if_icmpne L0
iconst_1
istore 2
L1:
aload 0
iload 2
putfield com/huewu/pla/lib/internal/PLA_ListView/mIsCacheColorOpaque Z
iload 2
ifeq L2
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mDividerPaint Landroid/graphics/Paint;
ifnonnull L3
aload 0
new android/graphics/Paint
dup
invokespecial android/graphics/Paint/<init>()V
putfield com/huewu/pla/lib/internal/PLA_ListView/mDividerPaint Landroid/graphics/Paint;
L3:
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mDividerPaint Landroid/graphics/Paint;
iload 1
invokevirtual android/graphics/Paint/setColor(I)V
L2:
aload 0
iload 1
invokespecial com/huewu/pla/lib/internal/PLA_AbsListView/setCacheColorHint(I)V
return
L0:
iconst_0
istore 2
goto L1
.limit locals 3
.limit stack 3
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
iconst_0
istore 2
aload 1
ifnull L0
aload 0
aload 1
invokevirtual android/graphics/drawable/Drawable/getIntrinsicHeight()I
putfield com/huewu/pla/lib/internal/PLA_ListView/mDividerHeight I
aload 0
aload 1
instanceof android/graphics/drawable/ColorDrawable
putfield com/huewu/pla/lib/internal/PLA_ListView/mClipDivider Z
L1:
aload 0
aload 1
putfield com/huewu/pla/lib/internal/PLA_ListView/mDivider Landroid/graphics/drawable/Drawable;
aload 1
ifnull L2
aload 1
invokevirtual android/graphics/drawable/Drawable/getOpacity()I
iconst_m1
if_icmpeq L2
L3:
aload 0
iload 2
putfield com/huewu/pla/lib/internal/PLA_ListView/mDividerIsOpaque Z
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/requestLayoutIfNecessary()V
return
L0:
aload 0
iconst_0
putfield com/huewu/pla/lib/internal/PLA_ListView/mDividerHeight I
aload 0
iconst_0
putfield com/huewu/pla/lib/internal/PLA_ListView/mClipDivider Z
goto L1
L2:
iconst_1
istore 2
goto L3
.limit locals 3
.limit stack 2
.end method

.method public setDividerHeight(I)V
aload 0
iload 1
putfield com/huewu/pla/lib/internal/PLA_ListView/mDividerHeight I
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/requestLayoutIfNecessary()V
return
.limit locals 2
.limit stack 2
.end method

.method public setFooterDividersEnabled(Z)V
aload 0
iload 1
putfield com/huewu/pla/lib/internal/PLA_ListView/mFooterDividersEnabled Z
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/invalidate()V
return
.limit locals 2
.limit stack 2
.end method

.method public setHeaderDividersEnabled(Z)V
aload 0
iload 1
putfield com/huewu/pla/lib/internal/PLA_ListView/mHeaderDividersEnabled Z
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/invalidate()V
return
.limit locals 2
.limit stack 2
.end method

.method public setItemChecked(IZ)V
return
.limit locals 3
.limit stack 0
.end method

.method public setItemsCanFocus(Z)V
aload 0
iload 1
putfield com/huewu/pla/lib/internal/PLA_ListView/mItemsCanFocus Z
iload 1
ifne L0
aload 0
ldc_w 393216
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/setDescendantFocusability(I)V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V
aload 0
aload 1
putfield com/huewu/pla/lib/internal/PLA_ListView/mOverScrollFooter Landroid/graphics/drawable/Drawable;
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/invalidate()V
return
.limit locals 2
.limit stack 2
.end method

.method public setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V
aload 0
aload 1
putfield com/huewu/pla/lib/internal/PLA_ListView/mOverScrollHeader Landroid/graphics/drawable/Drawable;
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/getScrollY()I
ifge L0
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/invalidate()V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public setSelection(I)V
return
.limit locals 2
.limit stack 0
.end method

.method public setSelectionFromTop(II)V
aload 0
iconst_4
putfield com/huewu/pla/lib/internal/PLA_ListView/mLayoutMode I
aload 0
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mListPadding Landroid/graphics/Rect;
getfield android/graphics/Rect/top I
iload 2
iadd
putfield com/huewu/pla/lib/internal/PLA_ListView/mSpecificTop I
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mNeedSync Z
ifeq L0
aload 0
iload 1
putfield com/huewu/pla/lib/internal/PLA_ListView/mSyncPosition I
aload 0
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mAdapter Landroid/widget/ListAdapter;
iload 1
invokeinterface android/widget/ListAdapter/getItemId(I)J 1
putfield com/huewu/pla/lib/internal/PLA_ListView/mSyncRowId J
L0:
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mPositionScroller Lcom/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller;
ifnull L1
aload 0
getfield com/huewu/pla/lib/internal/PLA_ListView/mPositionScroller Lcom/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller;
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/stop()V
L1:
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_ListView/requestLayout()V
return
.limit locals 3
.limit stack 3
.end method
