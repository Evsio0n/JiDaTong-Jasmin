.bytecode 50.0
.class public synchronized abstract com/nd/android/backpacksystem/widget/TDAbsSpinner
.super com/nd/android/backpacksystem/widget/TDAdapterView
.signature "Lcom/nd/android/backpacksystem/widget/TDAdapterView<Landroid/widget/SpinnerAdapter;>;"
.inner class static synthetic inner com/nd/android/backpacksystem/widget/TDAbsSpinner$1
.inner class RecycleBin inner com/nd/android/backpacksystem/widget/TDAbsSpinner$RecycleBin outer com/nd/android/backpacksystem/widget/TDAbsSpinner
.inner class static SavedState inner com/nd/android/backpacksystem/widget/TDAbsSpinner$SavedState outer com/nd/android/backpacksystem/widget/TDAbsSpinner
.inner class static final inner com/nd/android/backpacksystem/widget/TDAbsSpinner$SavedState$1

.field protected 'mAdapter' Landroid/widget/SpinnerAdapter;

.field protected 'mBlockLayoutRequests' Z

.field private 'mDataSetObserver' Landroid/database/DataSetObserver;

.field protected 'mHeightMeasureSpec' I

.field protected 'mInterpolator' Landroid/view/animation/Interpolator;

.field protected 'mRecycler' Lcom/nd/android/backpacksystem/widget/TDAbsSpinner$RecycleBin;

.field protected 'mSelectionBottomPadding' I

.field protected 'mSelectionLeftPadding' I

.field protected 'mSelectionRightPadding' I

.field protected 'mSelectionTopPadding' I

.field protected 'mSpinnerPadding' Landroid/graphics/Rect;

.field private 'mTouchFrame' Landroid/graphics/Rect;

.field protected 'mWidthMeasureSpec' I

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial com/nd/android/backpacksystem/widget/TDAdapterView/<init>(Landroid/content/Context;)V
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mSelectionLeftPadding I
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mSelectionTopPadding I
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mSelectionRightPadding I
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mSelectionBottomPadding I
aload 0
new android/graphics/Rect
dup
invokespecial android/graphics/Rect/<init>()V
putfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mSpinnerPadding Landroid/graphics/Rect;
aload 0
new com/nd/android/backpacksystem/widget/TDAbsSpinner$RecycleBin
dup
aload 0
invokespecial com/nd/android/backpacksystem/widget/TDAbsSpinner$RecycleBin/<init>(Lcom/nd/android/backpacksystem/widget/TDAbsSpinner;)V
putfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mRecycler Lcom/nd/android/backpacksystem/widget/TDAbsSpinner$RecycleBin;
aload 0
invokespecial com/nd/android/backpacksystem/widget/TDAbsSpinner/initAbsSpinner()V
return
.limit locals 2
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
iconst_0
invokespecial com/nd/android/backpacksystem/widget/TDAbsSpinner/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return
.limit locals 3
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
aload 1
aload 2
iload 3
invokespecial com/nd/android/backpacksystem/widget/TDAdapterView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mSelectionLeftPadding I
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mSelectionTopPadding I
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mSelectionRightPadding I
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mSelectionBottomPadding I
aload 0
new android/graphics/Rect
dup
invokespecial android/graphics/Rect/<init>()V
putfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mSpinnerPadding Landroid/graphics/Rect;
aload 0
new com/nd/android/backpacksystem/widget/TDAbsSpinner$RecycleBin
dup
aload 0
invokespecial com/nd/android/backpacksystem/widget/TDAbsSpinner$RecycleBin/<init>(Lcom/nd/android/backpacksystem/widget/TDAbsSpinner;)V
putfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mRecycler Lcom/nd/android/backpacksystem/widget/TDAbsSpinner$RecycleBin;
aload 0
invokespecial com/nd/android/backpacksystem/widget/TDAbsSpinner/initAbsSpinner()V
aload 1
aload 2
getstatic com/nd/android/backpacksystem/R$styleable/AbsSpinner [I
iload 3
iconst_0
invokevirtual android/content/Context/obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
astore 2
aload 2
getstatic com/nd/android/backpacksystem/R$styleable/AbsSpinner_entries I
invokevirtual android/content/res/TypedArray/getTextArray(I)[Ljava/lang/CharSequence;
astore 4
aload 4
ifnull L0
new android/widget/ArrayAdapter
dup
aload 1
ldc_w 17367048
aload 4
invokespecial android/widget/ArrayAdapter/<init>(Landroid/content/Context;I[Ljava/lang/Object;)V
astore 1
aload 1
ldc_w 17367049
invokevirtual android/widget/ArrayAdapter/setDropDownViewResource(I)V
aload 0
aload 1
invokevirtual com/nd/android/backpacksystem/widget/TDAbsSpinner/setAdapter(Landroid/widget/SpinnerAdapter;)V
L0:
aload 2
invokevirtual android/content/res/TypedArray/recycle()V
return
.limit locals 5
.limit stack 5
.end method

.method static synthetic access$100(Lcom/nd/android/backpacksystem/widget/TDAbsSpinner;Landroid/view/View;Z)V
aload 0
aload 1
iload 2
invokevirtual com/nd/android/backpacksystem/widget/TDAbsSpinner/removeDetachedView(Landroid/view/View;Z)V
return
.limit locals 3
.limit stack 3
.end method

.method private initAbsSpinner()V
aload 0
iconst_1
invokevirtual com/nd/android/backpacksystem/widget/TDAbsSpinner/setFocusable(Z)V
aload 0
iconst_0
invokevirtual com/nd/android/backpacksystem/widget/TDAbsSpinner/setWillNotDraw(Z)V
return
.limit locals 1
.limit stack 2
.end method

.method private setSelectionInt(IZ)V
iload 1
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mOldSelectedPosition I
if_icmpeq L0
aload 0
iconst_1
putfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mBlockLayoutRequests Z
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mSelectedPosition I
istore 3
aload 0
iload 1
invokevirtual com/nd/android/backpacksystem/widget/TDAbsSpinner/setNextSelectedPositionInt(I)V
aload 0
iload 1
iload 3
isub
iload 2
invokevirtual com/nd/android/backpacksystem/widget/TDAbsSpinner/layout(IZ)V
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mBlockLayoutRequests Z
L0:
return
.limit locals 4
.limit stack 3
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
new android/view/ViewGroup$LayoutParams
dup
iconst_m1
bipush -2
invokespecial android/view/ViewGroup$LayoutParams/<init>(II)V
areturn
.limit locals 1
.limit stack 4
.end method

.method public volatile synthetic getAdapter()Landroid/widget/Adapter;
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAbsSpinner/getAdapter()Landroid/widget/SpinnerAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getAdapter()Landroid/widget/SpinnerAdapter;
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mAdapter Landroid/widget/SpinnerAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method getChildHeight(Landroid/view/View;)I
aload 1
invokevirtual android/view/View/getMeasuredHeight()I
ireturn
.limit locals 2
.limit stack 1
.end method

.method getChildWidth(Landroid/view/View;)I
aload 1
invokevirtual android/view/View/getMeasuredWidth()I
ireturn
.limit locals 2
.limit stack 1
.end method

.method public getCount()I
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mItemCount I
ireturn
.limit locals 1
.limit stack 1
.end method

.method protected getDataSetObserver()Landroid/database/DataSetObserver;
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mDataSetObserver Landroid/database/DataSetObserver;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSelectedView()Landroid/view/View;
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mItemCount I
ifle L0
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mSelectedPosition I
iflt L0
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mSelectedPosition I
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mFirstPosition I
isub
invokestatic java/lang/Math/abs(I)I
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAbsSpinner/getChildCount()I
if_icmple L1
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mSelectedPosition I
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mItemCount I
iadd
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mFirstPosition I
isub
istore 1
aload 0
iload 1
invokevirtual com/nd/android/backpacksystem/widget/TDAbsSpinner/getChildAt(I)Landroid/view/View;
astore 2
aload 2
iload 1
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
aload 2
areturn
L1:
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mSelectedPosition I
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mFirstPosition I
isub
invokestatic java/lang/Math/abs(I)I
istore 1
aload 0
iload 1
invokevirtual com/nd/android/backpacksystem/widget/TDAbsSpinner/getChildAt(I)Landroid/view/View;
astore 2
aload 2
iload 1
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
aload 2
areturn
L0:
aconst_null
areturn
.limit locals 3
.limit stack 2
.end method

.method handleDataChanged()V
aload 0
invokespecial com/nd/android/backpacksystem/widget/TDAdapterView/handleDataChanged()V
return
.limit locals 1
.limit stack 1
.end method

.method protected abstract layout(IZ)V
.end method

.method protected onMeasure(II)V
iload 1
invokestatic android/view/View$MeasureSpec/getMode(I)I
istore 9
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mSpinnerPadding Landroid/graphics/Rect;
astore 11
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAbsSpinner/getPaddingLeft()I
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mSelectionLeftPadding I
if_icmple L0
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAbsSpinner/getPaddingLeft()I
istore 3
L1:
aload 11
iload 3
putfield android/graphics/Rect/left I
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mSpinnerPadding Landroid/graphics/Rect;
astore 11
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAbsSpinner/getPaddingTop()I
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mSelectionTopPadding I
if_icmple L2
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAbsSpinner/getPaddingTop()I
istore 3
L3:
aload 11
iload 3
putfield android/graphics/Rect/top I
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mSpinnerPadding Landroid/graphics/Rect;
astore 11
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAbsSpinner/getPaddingRight()I
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mSelectionRightPadding I
if_icmple L4
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAbsSpinner/getPaddingRight()I
istore 3
L5:
aload 11
iload 3
putfield android/graphics/Rect/right I
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mSpinnerPadding Landroid/graphics/Rect;
astore 11
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAbsSpinner/getPaddingBottom()I
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mSelectionBottomPadding I
if_icmple L6
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAbsSpinner/getPaddingBottom()I
istore 3
L7:
aload 11
iload 3
putfield android/graphics/Rect/bottom I
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mDataChanged Z
ifeq L8
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAbsSpinner/handleDataChanged()V
L8:
iconst_0
istore 6
iconst_0
istore 7
iconst_1
istore 8
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAbsSpinner/getSelectedItemPosition()I
istore 10
iload 8
istore 5
iload 6
istore 4
iload 7
istore 3
iload 10
iflt L9
iload 8
istore 5
iload 6
istore 4
iload 7
istore 3
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mAdapter Landroid/widget/SpinnerAdapter;
ifnull L9
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mRecycler Lcom/nd/android/backpacksystem/widget/TDAbsSpinner$RecycleBin;
iload 10
invokevirtual com/nd/android/backpacksystem/widget/TDAbsSpinner$RecycleBin/get(I)Landroid/view/View;
astore 12
aload 12
astore 11
aload 12
ifnonnull L10
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mAdapter Landroid/widget/SpinnerAdapter;
iload 10
aconst_null
aload 0
invokeinterface android/widget/SpinnerAdapter/getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View; 3
astore 11
L10:
aload 11
ifnull L11
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mRecycler Lcom/nd/android/backpacksystem/widget/TDAbsSpinner$RecycleBin;
iload 10
aload 11
invokevirtual com/nd/android/backpacksystem/widget/TDAbsSpinner$RecycleBin/put(ILandroid/view/View;)V
L11:
iload 8
istore 5
iload 6
istore 4
iload 7
istore 3
aload 11
ifnull L9
aload 11
invokevirtual android/view/View/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
ifnonnull L12
aload 0
iconst_1
putfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mBlockLayoutRequests Z
aload 11
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAbsSpinner/generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
invokevirtual android/view/View/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mBlockLayoutRequests Z
L12:
aload 0
aload 11
iload 1
iload 2
invokevirtual com/nd/android/backpacksystem/widget/TDAbsSpinner/measureChild(Landroid/view/View;II)V
aload 0
aload 11
invokevirtual com/nd/android/backpacksystem/widget/TDAbsSpinner/getChildHeight(Landroid/view/View;)I
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mVisibleCount I
imul
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mSpinnerPadding Landroid/graphics/Rect;
getfield android/graphics/Rect/top I
iadd
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mSpinnerPadding Landroid/graphics/Rect;
getfield android/graphics/Rect/bottom I
iadd
istore 4
aload 0
aload 11
invokevirtual com/nd/android/backpacksystem/widget/TDAbsSpinner/getChildWidth(Landroid/view/View;)I
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mSpinnerPadding Landroid/graphics/Rect;
getfield android/graphics/Rect/left I
iadd
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mSpinnerPadding Landroid/graphics/Rect;
getfield android/graphics/Rect/right I
iadd
istore 3
iconst_0
istore 5
L9:
iload 4
istore 6
iload 3
istore 4
iload 5
ifeq L13
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mSpinnerPadding Landroid/graphics/Rect;
getfield android/graphics/Rect/top I
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mSpinnerPadding Landroid/graphics/Rect;
getfield android/graphics/Rect/bottom I
iadd
istore 5
iload 5
istore 6
iload 3
istore 4
iload 9
ifne L13
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mSpinnerPadding Landroid/graphics/Rect;
getfield android/graphics/Rect/left I
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mSpinnerPadding Landroid/graphics/Rect;
getfield android/graphics/Rect/right I
iadd
istore 4
iload 5
istore 6
L13:
iload 6
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAbsSpinner/getSuggestedMinimumHeight()I
invokestatic java/lang/Math/max(II)I
istore 3
iload 4
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAbsSpinner/getSuggestedMinimumWidth()I
invokestatic java/lang/Math/max(II)I
istore 4
iload 3
iload 2
invokestatic com/nd/android/backpacksystem/widget/TDAbsSpinner/resolveSize(II)I
istore 3
aload 0
iload 4
iload 1
invokestatic com/nd/android/backpacksystem/widget/TDAbsSpinner/resolveSize(II)I
iload 3
invokevirtual com/nd/android/backpacksystem/widget/TDAbsSpinner/setMeasuredDimension(II)V
aload 0
iload 2
putfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mHeightMeasureSpec I
aload 0
iload 1
putfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mWidthMeasureSpec I
return
L0:
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mSelectionLeftPadding I
istore 3
goto L1
L2:
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mSelectionTopPadding I
istore 3
goto L3
L4:
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mSelectionRightPadding I
istore 3
goto L5
L6:
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mSelectionBottomPadding I
istore 3
goto L7
.limit locals 13
.limit stack 4
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
aload 1
checkcast com/nd/android/backpacksystem/widget/TDAbsSpinner$SavedState
astore 1
aload 0
aload 1
invokevirtual com/nd/android/backpacksystem/widget/TDAbsSpinner$SavedState/getSuperState()Landroid/os/Parcelable;
invokespecial com/nd/android/backpacksystem/widget/TDAdapterView/onRestoreInstanceState(Landroid/os/Parcelable;)V
aload 1
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner$SavedState/selectedId J
lconst_0
lcmp
iflt L0
aload 0
iconst_1
putfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mDataChanged Z
aload 0
iconst_1
putfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mNeedSync Z
aload 0
aload 1
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner$SavedState/selectedId J
putfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mSyncRowId J
aload 0
aload 1
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner$SavedState/position I
putfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mSyncPosition I
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mSyncMode I
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAbsSpinner/requestLayout()V
L0:
return
.limit locals 2
.limit stack 4
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
new com/nd/android/backpacksystem/widget/TDAbsSpinner$SavedState
dup
aload 0
invokespecial com/nd/android/backpacksystem/widget/TDAdapterView/onSaveInstanceState()Landroid/os/Parcelable;
invokespecial com/nd/android/backpacksystem/widget/TDAbsSpinner$SavedState/<init>(Landroid/os/Parcelable;)V
astore 1
aload 1
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAbsSpinner/getSelectedItemId()J
putfield com/nd/android/backpacksystem/widget/TDAbsSpinner$SavedState/selectedId J
aload 1
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner$SavedState/selectedId J
lconst_0
lcmp
iflt L0
aload 1
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAbsSpinner/getSelectedItemPosition()I
putfield com/nd/android/backpacksystem/widget/TDAbsSpinner$SavedState/position I
aload 1
areturn
L0:
aload 1
iconst_m1
putfield com/nd/android/backpacksystem/widget/TDAbsSpinner$SavedState/position I
aload 1
areturn
.limit locals 2
.limit stack 4
.end method

.method public pointToPosition(II)I
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mTouchFrame Landroid/graphics/Rect;
astore 5
aload 5
astore 4
aload 5
ifnonnull L0
aload 0
new android/graphics/Rect
dup
invokespecial android/graphics/Rect/<init>()V
putfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mTouchFrame Landroid/graphics/Rect;
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mTouchFrame Landroid/graphics/Rect;
astore 4
L0:
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAbsSpinner/getChildCount()I
iconst_1
isub
istore 3
L1:
iload 3
iflt L2
aload 0
iload 3
invokevirtual com/nd/android/backpacksystem/widget/TDAbsSpinner/getChildAt(I)Landroid/view/View;
astore 5
aload 5
invokevirtual android/view/View/getVisibility()I
ifne L3
aload 5
aload 4
invokevirtual android/view/View/getHitRect(Landroid/graphics/Rect;)V
aload 4
iload 1
iload 2
invokevirtual android/graphics/Rect/contains(II)Z
ifeq L3
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mFirstPosition I
iload 3
iadd
ireturn
L3:
iload 3
iconst_1
isub
istore 3
goto L1
L2:
iconst_m1
ireturn
.limit locals 6
.limit stack 3
.end method

.method recycleAllViews()V
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAbsSpinner/getChildCount()I
istore 2
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mRecycler Lcom/nd/android/backpacksystem/widget/TDAbsSpinner$RecycleBin;
astore 3
iconst_0
istore 1
L0:
iload 1
iload 2
if_icmpge L1
aload 0
iload 1
invokevirtual com/nd/android/backpacksystem/widget/TDAbsSpinner/getChildAt(I)Landroid/view/View;
astore 4
aload 3
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mFirstPosition I
iload 1
iadd
aload 4
invokevirtual com/nd/android/backpacksystem/widget/TDAbsSpinner$RecycleBin/put(ILandroid/view/View;)V
iload 1
iconst_1
iadd
istore 1
goto L0
L1:
return
.limit locals 5
.limit stack 3
.end method

.method public requestLayout()V
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mBlockLayoutRequests Z
ifne L0
aload 0
invokespecial com/nd/android/backpacksystem/widget/TDAdapterView/requestLayout()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method resetList()V
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mDataChanged Z
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mNeedSync Z
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAbsSpinner/removeAllViewsInLayout()V
aload 0
iconst_m1
putfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mOldSelectedPosition I
aload 0
ldc2_w -9223372036854775808L
putfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mOldSelectedRowId J
aload 0
iconst_m1
invokevirtual com/nd/android/backpacksystem/widget/TDAbsSpinner/setSelectedPositionInt(I)V
aload 0
iconst_m1
invokevirtual com/nd/android/backpacksystem/widget/TDAbsSpinner/setNextSelectedPositionInt(I)V
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAbsSpinner/invalidate()V
return
.limit locals 1
.limit stack 3
.end method

.method public volatile synthetic setAdapter(Landroid/widget/Adapter;)V
aload 0
aload 1
checkcast android/widget/SpinnerAdapter
invokevirtual com/nd/android/backpacksystem/widget/TDAbsSpinner/setAdapter(Landroid/widget/SpinnerAdapter;)V
return
.limit locals 2
.limit stack 2
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
iconst_m1
istore 2
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mAdapter Landroid/widget/SpinnerAdapter;
ifnull L0
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mAdapter Landroid/widget/SpinnerAdapter;
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mDataSetObserver Landroid/database/DataSetObserver;
invokeinterface android/widget/SpinnerAdapter/unregisterDataSetObserver(Landroid/database/DataSetObserver;)V 1
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAbsSpinner/resetList()V
L0:
aload 0
aload 1
putfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mAdapter Landroid/widget/SpinnerAdapter;
aload 0
iconst_m1
putfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mOldSelectedPosition I
aload 0
ldc2_w -9223372036854775808L
putfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mOldSelectedRowId J
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mAdapter Landroid/widget/SpinnerAdapter;
ifnull L1
aload 0
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mItemCount I
putfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mOldItemCount I
aload 0
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mAdapter Landroid/widget/SpinnerAdapter;
invokeinterface android/widget/SpinnerAdapter/getCount()I 0
putfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mItemCount I
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAbsSpinner/checkFocus()V
aload 0
new com/nd/android/backpacksystem/widget/TDAdapterView$AdapterDataSetObserver
dup
aload 0
invokespecial com/nd/android/backpacksystem/widget/TDAdapterView$AdapterDataSetObserver/<init>(Lcom/nd/android/backpacksystem/widget/TDAdapterView;)V
putfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mDataSetObserver Landroid/database/DataSetObserver;
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mAdapter Landroid/widget/SpinnerAdapter;
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mDataSetObserver Landroid/database/DataSetObserver;
invokeinterface android/widget/SpinnerAdapter/registerDataSetObserver(Landroid/database/DataSetObserver;)V 1
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mItemCount I
ifle L2
iconst_0
istore 2
L2:
aload 0
iload 2
invokevirtual com/nd/android/backpacksystem/widget/TDAbsSpinner/setSelectedPositionInt(I)V
aload 0
iload 2
invokevirtual com/nd/android/backpacksystem/widget/TDAbsSpinner/setNextSelectedPositionInt(I)V
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mItemCount I
ifne L3
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAbsSpinner/checkSelectionChanged()V
L3:
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAbsSpinner/requestLayout()V
return
L1:
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAbsSpinner/checkFocus()V
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAbsSpinner/resetList()V
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAbsSpinner/checkSelectionChanged()V
goto L3
.limit locals 3
.limit stack 4
.end method

.method public setSelection(I)V
aload 0
iload 1
invokevirtual com/nd/android/backpacksystem/widget/TDAbsSpinner/setNextSelectedPositionInt(I)V
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAbsSpinner/requestLayout()V
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAbsSpinner/invalidate()V
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAbsSpinner/checkSelectionChanged()V
return
.limit locals 2
.limit stack 2
.end method

.method public setSelection(IZ)V
iload 2
ifeq L0
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mFirstPosition I
iload 1
if_icmpgt L0
iload 1
aload 0
getfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mFirstPosition I
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAbsSpinner/getChildCount()I
iadd
iconst_1
isub
if_icmpgt L0
iconst_1
istore 2
L1:
aload 0
iload 1
iload 2
invokespecial com/nd/android/backpacksystem/widget/TDAbsSpinner/setSelectionInt(IZ)V
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAbsSpinner/checkSelectionChanged()V
return
L0:
iconst_0
istore 2
goto L1
.limit locals 3
.limit stack 3
.end method

.method public setVisibleCount(I)V
aload 0
iload 1
putfield com/nd/android/backpacksystem/widget/TDAbsSpinner/mVisibleCount I
return
.limit locals 2
.limit stack 2
.end method
