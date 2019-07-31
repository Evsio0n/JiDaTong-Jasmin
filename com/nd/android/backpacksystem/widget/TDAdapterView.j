.bytecode 50.0
.class public synchronized abstract com/nd/android/backpacksystem/widget/TDAdapterView
.super android/view/ViewGroup
.signature "<T::Landroid/widget/Adapter;>Landroid/view/ViewGroup;"
.inner class static synthetic inner com/nd/android/backpacksystem/widget/TDAdapterView$1
.inner class public static AdapterContextMenuInfo inner com/nd/android/backpacksystem/widget/TDAdapterView$AdapterContextMenuInfo outer com/nd/android/backpacksystem/widget/TDAdapterView
.inner class AdapterDataSetObserver inner com/nd/android/backpacksystem/widget/TDAdapterView$AdapterDataSetObserver outer com/nd/android/backpacksystem/widget/TDAdapterView
.inner class public static abstract interface OnItemClickListener inner com/nd/android/backpacksystem/widget/TDAdapterView$OnItemClickListener outer com/nd/android/backpacksystem/widget/TDAdapterView
.inner class public static abstract interface OnItemDoubleClickListener inner com/nd/android/backpacksystem/widget/TDAdapterView$OnItemDoubleClickListener outer com/nd/android/backpacksystem/widget/TDAdapterView
.inner class public static abstract interface OnItemLongClickListener inner com/nd/android/backpacksystem/widget/TDAdapterView$OnItemLongClickListener outer com/nd/android/backpacksystem/widget/TDAdapterView
.inner class public static abstract interface OnItemSelectedListener inner com/nd/android/backpacksystem/widget/TDAdapterView$OnItemSelectedListener outer com/nd/android/backpacksystem/widget/TDAdapterView
.inner class private SelectionNotifier inner com/nd/android/backpacksystem/widget/TDAdapterView$SelectionNotifier outer com/nd/android/backpacksystem/widget/TDAdapterView

.field public static final 'INVALID_POSITION' I = -1


.field public static final 'INVALID_ROW_ID' J = -9223372036854775808L


.field public static final 'ITEM_VIEW_TYPE_HEADER_OR_FOOTER' I = -2


.field public static final 'ITEM_VIEW_TYPE_IGNORE' I = -1


.field static final 'SYNC_FIRST_POSITION' I = 1


.field static final 'SYNC_MAX_DURATION_MILLIS' I = 100


.field static final 'SYNC_SELECTED_POSITION' I = 0


.field 'mBlockLayoutRequests' Z

.field 'mDataChanged' Z

.field private 'mDesiredFocusableInTouchModeState' Z

.field private 'mDesiredFocusableState' Z

.field private 'mEmptyView' Landroid/view/View;

.field 'mFirstPosition' I
.annotation visible Landroid/view/ViewDebug$ExportedProperty;
.end annotation
.end field

.field 'mInLayout' Z

.field 'mItemCount' I
.annotation visible Landroid/view/ViewDebug$ExportedProperty;
.end annotation
.end field

.field private 'mLayoutHeight' I

.field 'mNeedSync' Z

.field 'mNextSelectedPosition' I
.annotation visible Landroid/view/ViewDebug$ExportedProperty;
.end annotation
.end field

.field 'mNextSelectedRowId' J

.field 'mOldItemCount' I

.field 'mOldSelectedPosition' I

.field 'mOldSelectedRowId' J

.field 'mOnItemClickListener' Lcom/nd/android/backpacksystem/widget/TDAdapterView$OnItemClickListener;

.field 'mOnItemDoubleClickListener' Lcom/nd/android/backpacksystem/widget/TDAdapterView$OnItemDoubleClickListener;

.field 'mOnItemLongClickListener' Lcom/nd/android/backpacksystem/widget/TDAdapterView$OnItemLongClickListener;

.field 'mOnItemSelectedListener' Lcom/nd/android/backpacksystem/widget/TDAdapterView$OnItemSelectedListener;

.field 'mSelectedPosition' I
.annotation visible Landroid/view/ViewDebug$ExportedProperty;
.end annotation
.end field

.field 'mSelectedRowId' J

.field private 'mSelectionNotifier' Lcom/nd/android/backpacksystem/widget/TDAdapterView$SelectionNotifier; signature "Lcom/nd/android/backpacksystem/widget/TDAdapterView<TT;>.SelectionNotifier;"

.field 'mSpecificTop' I

.field 'mSyncHeight' J

.field 'mSyncMode' I

.field 'mSyncPosition' I

.field 'mSyncRowId' J

.field protected 'mVisibleCount' I

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/view/ViewGroup/<init>(Landroid/content/Context;)V
aload 0
iconst_5
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mVisibleCount I
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mFirstPosition I
aload 0
ldc2_w -9223372036854775808L
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mSyncRowId J
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mNeedSync Z
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mInLayout Z
aload 0
iconst_m1
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mNextSelectedPosition I
aload 0
ldc2_w -9223372036854775808L
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mNextSelectedRowId J
aload 0
iconst_m1
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mSelectedPosition I
aload 0
ldc2_w -9223372036854775808L
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mSelectedRowId J
aload 0
iconst_m1
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mOldSelectedPosition I
aload 0
ldc2_w -9223372036854775808L
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mOldSelectedRowId J
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mBlockLayoutRequests Z
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/view/ViewGroup/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
iconst_5
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mVisibleCount I
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mFirstPosition I
aload 0
ldc2_w -9223372036854775808L
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mSyncRowId J
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mNeedSync Z
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mInLayout Z
aload 0
iconst_m1
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mNextSelectedPosition I
aload 0
ldc2_w -9223372036854775808L
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mNextSelectedRowId J
aload 0
iconst_m1
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mSelectedPosition I
aload 0
ldc2_w -9223372036854775808L
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mSelectedRowId J
aload 0
iconst_m1
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mOldSelectedPosition I
aload 0
ldc2_w -9223372036854775808L
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mOldSelectedRowId J
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mBlockLayoutRequests Z
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
aload 1
aload 2
iload 3
invokespecial android/view/ViewGroup/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
iconst_5
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mVisibleCount I
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mFirstPosition I
aload 0
ldc2_w -9223372036854775808L
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mSyncRowId J
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mNeedSync Z
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mInLayout Z
aload 0
iconst_m1
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mNextSelectedPosition I
aload 0
ldc2_w -9223372036854775808L
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mNextSelectedRowId J
aload 0
iconst_m1
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mSelectedPosition I
aload 0
ldc2_w -9223372036854775808L
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mSelectedRowId J
aload 0
iconst_m1
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mOldSelectedPosition I
aload 0
ldc2_w -9223372036854775808L
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mOldSelectedRowId J
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mBlockLayoutRequests Z
return
.limit locals 4
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/backpacksystem/widget/TDAdapterView;Landroid/os/Parcelable;)V
aload 0
aload 1
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/onRestoreInstanceState(Landroid/os/Parcelable;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/android/backpacksystem/widget/TDAdapterView;)Landroid/os/Parcelable;
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/onSaveInstanceState()Landroid/os/Parcelable;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/backpacksystem/widget/TDAdapterView;)V
aload 0
invokespecial com/nd/android/backpacksystem/widget/TDAdapterView/fireOnSelected()V
return
.limit locals 1
.limit stack 1
.end method

.method private fireOnSelected()V
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView/mOnItemSelectedListener Lcom/nd/android/backpacksystem/widget/TDAdapterView$OnItemSelectedListener;
ifnonnull L0
return
L0:
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/getSelectedItemPosition()I
istore 1
iload 1
iflt L1
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/getSelectedView()Landroid/view/View;
astore 2
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView/mOnItemSelectedListener Lcom/nd/android/backpacksystem/widget/TDAdapterView$OnItemSelectedListener;
aload 0
aload 2
iload 1
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/getAdapter()Landroid/widget/Adapter;
iload 1
invokeinterface android/widget/Adapter/getItemId(I)J 1
invokeinterface com/nd/android/backpacksystem/widget/TDAdapterView$OnItemSelectedListener/onItemSelected(Lcom/nd/android/backpacksystem/widget/TDAdapterView;Landroid/view/View;IJ)V 5
return
L1:
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView/mOnItemSelectedListener Lcom/nd/android/backpacksystem/widget/TDAdapterView$OnItemSelectedListener;
aload 0
invokeinterface com/nd/android/backpacksystem/widget/TDAdapterView$OnItemSelectedListener/onNothingSelected(Lcom/nd/android/backpacksystem/widget/TDAdapterView;)V 1
return
.limit locals 3
.limit stack 6
.end method

.method private updateEmptyStatus(Z)V
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/isInFilterMode()Z
ifeq L0
iconst_0
istore 1
L0:
iload 1
ifeq L1
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView/mEmptyView Landroid/view/View;
ifnull L2
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView/mEmptyView Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
bipush 8
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/setVisibility(I)V
L3:
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView/mDataChanged Z
ifeq L4
aload 0
iconst_0
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/getLeft()I
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/getTop()I
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/getRight()I
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/getBottom()I
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/onLayout(ZIIII)V
L4:
return
L2:
aload 0
iconst_0
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/setVisibility(I)V
goto L3
L1:
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView/mEmptyView Landroid/view/View;
ifnull L5
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView/mEmptyView Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
L5:
aload 0
iconst_0
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/setVisibility(I)V
return
.limit locals 2
.limit stack 6
.end method

.method public addView(Landroid/view/View;)V
new java/lang/UnsupportedOperationException
dup
ldc "addView(View) is not supported in AdapterView"
invokespecial java/lang/UnsupportedOperationException/<init>(Ljava/lang/String;)V
athrow
.limit locals 2
.limit stack 3
.end method

.method public addView(Landroid/view/View;I)V
new java/lang/UnsupportedOperationException
dup
ldc "addView(View, int) is not supported in AdapterView"
invokespecial java/lang/UnsupportedOperationException/<init>(Ljava/lang/String;)V
athrow
.limit locals 3
.limit stack 3
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
new java/lang/UnsupportedOperationException
dup
ldc "addView(View, int, LayoutParams) is not supported in AdapterView"
invokespecial java/lang/UnsupportedOperationException/<init>(Ljava/lang/String;)V
athrow
.limit locals 4
.limit stack 3
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
new java/lang/UnsupportedOperationException
dup
ldc "addView(View, LayoutParams) is not supported in AdapterView"
invokespecial java/lang/UnsupportedOperationException/<init>(Ljava/lang/String;)V
athrow
.limit locals 3
.limit stack 3
.end method

.method protected canAnimate()Z
aload 0
invokespecial android/view/ViewGroup/canAnimate()Z
ifeq L0
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView/mItemCount I
ifle L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method checkFocus()V
iconst_0
istore 3
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/getAdapter()Landroid/widget/Adapter;
astore 4
aload 4
ifnull L0
aload 4
invokeinterface android/widget/Adapter/getCount()I 0
ifne L1
L0:
iconst_1
istore 1
L2:
iload 1
ifeq L3
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/isInFilterMode()Z
ifeq L4
L3:
iconst_1
istore 1
L5:
iload 1
ifeq L6
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView/mDesiredFocusableInTouchModeState Z
ifeq L6
iconst_1
istore 2
L7:
aload 0
iload 2
invokespecial android/view/ViewGroup/setFocusableInTouchMode(Z)V
iload 1
ifeq L8
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView/mDesiredFocusableState Z
ifeq L8
iconst_1
istore 2
L9:
aload 0
iload 2
invokespecial android/view/ViewGroup/setFocusable(Z)V
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView/mEmptyView Landroid/view/View;
ifnull L10
aload 4
ifnull L11
iload 3
istore 2
aload 4
invokeinterface android/widget/Adapter/isEmpty()Z 0
ifeq L12
L11:
iconst_1
istore 2
L12:
aload 0
iload 2
invokespecial com/nd/android/backpacksystem/widget/TDAdapterView/updateEmptyStatus(Z)V
L10:
return
L1:
iconst_0
istore 1
goto L2
L4:
iconst_0
istore 1
goto L5
L6:
iconst_0
istore 2
goto L7
L8:
iconst_0
istore 2
goto L9
.limit locals 5
.limit stack 2
.end method

.method checkSelectionChanged()V
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView/mSelectedPosition I
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView/mOldSelectedPosition I
if_icmpne L0
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView/mSelectedRowId J
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView/mOldSelectedRowId J
lcmp
ifeq L1
L0:
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/selectionChanged()V
aload 0
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView/mSelectedPosition I
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mOldSelectedPosition I
aload 0
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView/mSelectedRowId J
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mOldSelectedRowId J
L1:
return
.limit locals 1
.limit stack 4
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
iconst_0
istore 2
aload 1
invokevirtual android/view/accessibility/AccessibilityEvent/getEventType()I
bipush 8
if_icmpne L0
aload 1
iconst_4
invokevirtual android/view/accessibility/AccessibilityEvent/setEventType(I)V
L0:
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/getSelectedView()Landroid/view/View;
astore 3
aload 3
ifnull L1
aload 3
aload 1
invokevirtual android/view/View/dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
istore 2
L1:
iload 2
ifne L2
aload 3
ifnull L3
aload 1
aload 3
invokevirtual android/view/View/isEnabled()Z
invokevirtual android/view/accessibility/AccessibilityEvent/setEnabled(Z)V
L3:
aload 1
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/getCount()I
invokevirtual android/view/accessibility/AccessibilityEvent/setItemCount(I)V
aload 1
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/getSelectedItemPosition()I
invokevirtual android/view/accessibility/AccessibilityEvent/setCurrentItemIndex(I)V
L2:
iload 2
ireturn
.limit locals 4
.limit stack 2
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
.signature "(Landroid/util/SparseArray<Landroid/os/Parcelable;>;)V"
aload 0
aload 1
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/dispatchThawSelfOnly(Landroid/util/SparseArray;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
.signature "(Landroid/util/SparseArray<Landroid/os/Parcelable;>;)V"
aload 0
aload 1
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V
return
.limit locals 2
.limit stack 2
.end method

.method findSyncPosition()I
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView/mItemCount I
istore 7
iload 7
ifne L0
iconst_m1
istore 5
L1:
iload 5
ireturn
L0:
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView/mSyncRowId J
lstore 8
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView/mSyncPosition I
istore 1
lload 8
ldc2_w -9223372036854775808L
lcmp
ifne L2
iconst_m1
ireturn
L2:
iload 7
iconst_1
isub
iconst_0
iload 1
invokestatic java/lang/Math/max(II)I
invokestatic java/lang/Math/min(II)I
istore 1
invokestatic android/os/SystemClock/uptimeMillis()J
lstore 10
iload 1
istore 3
iload 1
istore 4
iconst_0
istore 2
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/getAdapter()Landroid/widget/Adapter;
astore 12
aload 12
ifnonnull L3
iconst_m1
ireturn
L4:
iload 6
ifne L5
iload 2
ifeq L6
iload 5
ifne L6
L5:
iload 4
iconst_1
iadd
istore 4
iload 4
istore 1
iconst_0
istore 2
L3:
invokestatic android/os/SystemClock/uptimeMillis()J
lload 10
ldc2_w 100L
ladd
lcmp
ifgt L7
iload 1
istore 5
aload 12
iload 1
invokeinterface android/widget/Adapter/getItemId(I)J 1
lload 8
lcmp
ifeq L1
iload 4
iload 7
iconst_1
isub
if_icmpne L8
iconst_1
istore 5
L9:
iload 3
ifne L10
iconst_1
istore 6
L11:
iload 5
ifeq L4
iload 6
ifeq L4
L7:
iconst_m1
ireturn
L8:
iconst_0
istore 5
goto L9
L10:
iconst_0
istore 6
goto L11
L6:
iload 5
ifne L12
iload 2
ifne L3
iload 6
ifne L3
L12:
iload 3
iconst_1
isub
istore 3
iload 3
istore 1
iconst_1
istore 2
goto L3
.limit locals 13
.limit stack 6
.end method

.method public abstract getAdapter()Landroid/widget/Adapter;
.signature "()TT;"
.end method

.method public getCount()I
.annotation visible Landroid/view/ViewDebug$CapturedViewProperty;
.end annotation
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView/mItemCount I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getEmptyView()Landroid/view/View;
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView/mEmptyView Landroid/view/View;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getFirstVisiblePosition()I
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView/mFirstPosition I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItemAtPosition(I)Ljava/lang/Object;
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/getAdapter()Landroid/widget/Adapter;
astore 2
aload 2
ifnull L0
iload 1
ifge L1
L0:
aconst_null
areturn
L1:
aload 2
iload 1
invokeinterface android/widget/Adapter/getItem(I)Ljava/lang/Object; 1
areturn
.limit locals 3
.limit stack 2
.end method

.method public getItemIdAtPosition(I)J
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/getAdapter()Landroid/widget/Adapter;
astore 2
aload 2
ifnull L0
iload 1
ifge L1
L0:
ldc2_w -9223372036854775808L
lreturn
L1:
aload 2
iload 1
invokeinterface android/widget/Adapter/getItemId(I)J 1
lreturn
.limit locals 3
.limit stack 2
.end method

.method public getLastVisiblePosition()I
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView/mFirstPosition I
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/getChildCount()I
iadd
iconst_1
isub
ireturn
.limit locals 1
.limit stack 2
.end method

.method public final getOnItemClickListener()Lcom/nd/android/backpacksystem/widget/TDAdapterView$OnItemClickListener;
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView/mOnItemClickListener Lcom/nd/android/backpacksystem/widget/TDAdapterView$OnItemClickListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getOnItemLongClickListener()Lcom/nd/android/backpacksystem/widget/TDAdapterView$OnItemLongClickListener;
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView/mOnItemLongClickListener Lcom/nd/android/backpacksystem/widget/TDAdapterView$OnItemLongClickListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getOnItemSelectedListener()Lcom/nd/android/backpacksystem/widget/TDAdapterView$OnItemSelectedListener;
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView/mOnItemSelectedListener Lcom/nd/android/backpacksystem/widget/TDAdapterView$OnItemSelectedListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getPositionForView(Landroid/view/View;)I
.catch java/lang/ClassCastException from L0 to L1 using L2
.catch java/lang/ClassCastException from L1 to L3 using L2
.catch java/lang/ClassCastException from L3 to L4 using L2
aload 1
astore 4
L0:
aload 4
invokevirtual android/view/View/getParent()Landroid/view/ViewParent;
checkcast android/view/View
astore 1
L1:
aload 1
aload 0
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifne L5
L3:
aload 1
invokevirtual android/view/View/getParent()Landroid/view/ViewParent;
checkcast android/view/View
astore 5
L4:
aload 1
astore 4
aload 5
astore 1
goto L1
L2:
astore 1
L6:
iconst_m1
ireturn
L5:
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/getChildCount()I
istore 3
iconst_0
istore 2
L7:
iload 2
iload 3
if_icmpge L6
aload 0
iload 2
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/getChildAt(I)Landroid/view/View;
aload 4
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifeq L8
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView/mFirstPosition I
iload 2
iadd
ireturn
L8:
iload 2
iconst_1
iadd
istore 2
goto L7
.limit locals 6
.limit stack 2
.end method

.method public getSelectedItem()Ljava/lang/Object;
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/getAdapter()Landroid/widget/Adapter;
astore 2
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/getSelectedItemPosition()I
istore 1
aload 2
ifnull L0
aload 2
invokeinterface android/widget/Adapter/getCount()I 0
ifle L0
iload 1
iflt L0
aload 2
iload 1
invokeinterface android/widget/Adapter/getItem(I)Ljava/lang/Object; 1
areturn
L0:
aconst_null
areturn
.limit locals 3
.limit stack 2
.end method

.method public getSelectedItemId()J
.annotation visible Landroid/view/ViewDebug$CapturedViewProperty;
.end annotation
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView/mNextSelectedRowId J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getSelectedItemPosition()I
.annotation visible Landroid/view/ViewDebug$CapturedViewProperty;
.end annotation
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView/mNextSelectedPosition I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public abstract getSelectedView()Landroid/view/View;
.end method

.method handleDataChanged()V
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView/mItemCount I
istore 4
iconst_0
istore 2
iconst_0
istore 3
iload 4
ifle L0
iload 3
istore 1
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView/mNeedSync Z
ifeq L1
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mNeedSync Z
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/findSyncPosition()I
istore 2
iload 3
istore 1
iload 2
iflt L1
iload 3
istore 1
aload 0
iload 2
iconst_1
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/lookForSelectablePosition(IZ)I
iload 2
if_icmpne L1
aload 0
iload 2
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/setNextSelectedPositionInt(I)V
iconst_1
istore 1
L1:
iload 1
istore 2
iload 1
ifne L0
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/getSelectedItemPosition()I
istore 3
iload 3
istore 2
iload 3
iload 4
if_icmplt L2
iload 4
iconst_1
isub
istore 2
L2:
iload 2
istore 3
iload 2
ifge L3
iconst_0
istore 3
L3:
aload 0
iload 3
iconst_1
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/lookForSelectablePosition(IZ)I
istore 2
iload 2
istore 4
iload 2
ifge L4
aload 0
iload 3
iconst_0
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/lookForSelectablePosition(IZ)I
istore 4
L4:
iload 1
istore 2
iload 4
iflt L0
aload 0
iload 4
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/setNextSelectedPositionInt(I)V
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/checkSelectionChanged()V
iconst_1
istore 2
L0:
iload 2
ifne L5
aload 0
iconst_m1
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mSelectedPosition I
aload 0
ldc2_w -9223372036854775808L
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mSelectedRowId J
aload 0
iconst_m1
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mNextSelectedPosition I
aload 0
ldc2_w -9223372036854775808L
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mNextSelectedRowId J
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mNeedSync Z
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/checkSelectionChanged()V
L5:
return
.limit locals 5
.limit stack 3
.end method

.method isInFilterMode()Z
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method lookForSelectablePosition(IZ)I
iload 1
ireturn
.limit locals 3
.limit stack 1
.end method

.method protected onLayout(ZIIII)V
aload 0
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/getHeight()I
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mLayoutHeight I
return
.limit locals 6
.limit stack 2
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
iconst_0
istore 5
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView/mOnItemClickListener Lcom/nd/android/backpacksystem/widget/TDAdapterView$OnItemClickListener;
ifnull L0
aload 0
iconst_0
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/playSoundEffect(I)V
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView/mOnItemClickListener Lcom/nd/android/backpacksystem/widget/TDAdapterView$OnItemClickListener;
aload 0
aload 1
iload 2
lload 3
invokeinterface com/nd/android/backpacksystem/widget/TDAdapterView$OnItemClickListener/onItemClick(Lcom/nd/android/backpacksystem/widget/TDAdapterView;Landroid/view/View;IJ)V 5
iconst_1
istore 5
L0:
iload 5
ireturn
.limit locals 6
.limit stack 6
.end method

.method public performItemDoubleClick(Landroid/view/View;IJ)Z
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView/mOnItemDoubleClickListener Lcom/nd/android/backpacksystem/widget/TDAdapterView$OnItemDoubleClickListener;
ifnull L0
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView/mOnItemDoubleClickListener Lcom/nd/android/backpacksystem/widget/TDAdapterView$OnItemDoubleClickListener;
aload 0
aload 1
iload 2
lload 3
invokeinterface com/nd/android/backpacksystem/widget/TDAdapterView$OnItemDoubleClickListener/onItemDoubleClick(Lcom/nd/android/backpacksystem/widget/TDAdapterView;Landroid/view/View;IJ)Z 5
pop
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 5
.limit stack 6
.end method

.method rememberSyncState()V
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/getChildCount()I
ifle L0
aload 0
iconst_1
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mNeedSync Z
aload 0
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView/mLayoutHeight I
i2l
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mSyncHeight J
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView/mSelectedPosition I
iflt L1
aload 0
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView/mSelectedPosition I
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView/mFirstPosition I
isub
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/getChildAt(I)Landroid/view/View;
astore 1
aload 0
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView/mNextSelectedRowId J
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mSyncRowId J
aload 0
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView/mNextSelectedPosition I
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mSyncPosition I
aload 1
ifnull L2
aload 0
aload 1
invokevirtual android/view/View/getTop()I
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mSpecificTop I
L2:
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mSyncMode I
L0:
return
L1:
aload 0
iconst_0
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/getChildAt(I)Landroid/view/View;
astore 1
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/getAdapter()Landroid/widget/Adapter;
astore 2
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView/mFirstPosition I
iflt L3
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView/mFirstPosition I
aload 2
invokeinterface android/widget/Adapter/getCount()I 0
if_icmpge L3
aload 0
aload 2
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView/mFirstPosition I
invokeinterface android/widget/Adapter/getItemId(I)J 1
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mSyncRowId J
L4:
aload 0
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView/mFirstPosition I
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mSyncPosition I
aload 1
ifnull L5
aload 0
aload 1
invokevirtual android/view/View/getTop()I
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mSpecificTop I
L5:
aload 0
iconst_1
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mSyncMode I
return
L3:
aload 0
ldc2_w -1L
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mSyncRowId J
goto L4
.limit locals 3
.limit stack 3
.end method

.method public removeAllViews()V
new java/lang/UnsupportedOperationException
dup
ldc "removeAllViews() is not supported in AdapterView"
invokespecial java/lang/UnsupportedOperationException/<init>(Ljava/lang/String;)V
athrow
.limit locals 1
.limit stack 3
.end method

.method public removeView(Landroid/view/View;)V
new java/lang/UnsupportedOperationException
dup
ldc "removeView(View) is not supported in AdapterView"
invokespecial java/lang/UnsupportedOperationException/<init>(Ljava/lang/String;)V
athrow
.limit locals 2
.limit stack 3
.end method

.method public removeViewAt(I)V
new java/lang/UnsupportedOperationException
dup
ldc "removeViewAt(int) is not supported in AdapterView"
invokespecial java/lang/UnsupportedOperationException/<init>(Ljava/lang/String;)V
athrow
.limit locals 2
.limit stack 3
.end method

.method protected selectionChanged()V
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView/mOnItemSelectedListener Lcom/nd/android/backpacksystem/widget/TDAdapterView$OnItemSelectedListener;
ifnull L0
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView/mInLayout Z
ifne L1
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView/mBlockLayoutRequests Z
ifeq L2
L1:
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView/mSelectionNotifier Lcom/nd/android/backpacksystem/widget/TDAdapterView$SelectionNotifier;
ifnonnull L3
aload 0
new com/nd/android/backpacksystem/widget/TDAdapterView$SelectionNotifier
dup
aload 0
aconst_null
invokespecial com/nd/android/backpacksystem/widget/TDAdapterView$SelectionNotifier/<init>(Lcom/nd/android/backpacksystem/widget/TDAdapterView;Lcom/nd/android/backpacksystem/widget/TDAdapterView$1;)V
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mSelectionNotifier Lcom/nd/android/backpacksystem/widget/TDAdapterView$SelectionNotifier;
L3:
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView/mSelectionNotifier Lcom/nd/android/backpacksystem/widget/TDAdapterView$SelectionNotifier;
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView/mSelectionNotifier Lcom/nd/android/backpacksystem/widget/TDAdapterView$SelectionNotifier;
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView$SelectionNotifier/post(Ljava/lang/Runnable;)Z
pop
L0:
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView/mSelectedPosition I
iconst_m1
if_icmpeq L4
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/isShown()Z
ifeq L4
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/isInTouchMode()Z
ifne L4
aload 0
iconst_4
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/sendAccessibilityEvent(I)V
L4:
return
L2:
aload 0
invokespecial com/nd/android/backpacksystem/widget/TDAdapterView/fireOnSelected()V
goto L0
.limit locals 1
.limit stack 5
.end method

.method public abstract setAdapter(Landroid/widget/Adapter;)V
.signature "(TT;)V"
.end method

.method public setEmptyView(Landroid/view/View;)V
aload 0
aload 1
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mEmptyView Landroid/view/View;
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/getAdapter()Landroid/widget/Adapter;
astore 1
aload 1
ifnull L0
aload 1
invokeinterface android/widget/Adapter/isEmpty()Z 0
ifeq L1
L0:
iconst_1
istore 2
L2:
aload 0
iload 2
invokespecial com/nd/android/backpacksystem/widget/TDAdapterView/updateEmptyStatus(Z)V
return
L1:
iconst_0
istore 2
goto L2
.limit locals 3
.limit stack 2
.end method

.method public setFocusable(Z)V
iconst_1
istore 3
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/getAdapter()Landroid/widget/Adapter;
astore 4
aload 4
ifnull L0
aload 4
invokeinterface android/widget/Adapter/getCount()I 0
ifne L1
L0:
iconst_1
istore 2
L2:
aload 0
iload 1
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mDesiredFocusableState Z
iload 1
ifne L3
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mDesiredFocusableInTouchModeState Z
L3:
iload 1
ifeq L4
iload 3
istore 1
iload 2
ifeq L5
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/isInFilterMode()Z
ifeq L4
iload 3
istore 1
L5:
aload 0
iload 1
invokespecial android/view/ViewGroup/setFocusable(Z)V
return
L1:
iconst_0
istore 2
goto L2
L4:
iconst_0
istore 1
goto L5
.limit locals 5
.limit stack 2
.end method

.method public setFocusableInTouchMode(Z)V
iconst_1
istore 3
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/getAdapter()Landroid/widget/Adapter;
astore 4
aload 4
ifnull L0
aload 4
invokeinterface android/widget/Adapter/getCount()I 0
ifne L1
L0:
iconst_1
istore 2
L2:
aload 0
iload 1
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mDesiredFocusableInTouchModeState Z
iload 1
ifeq L3
aload 0
iconst_1
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mDesiredFocusableState Z
L3:
iload 1
ifeq L4
iload 3
istore 1
iload 2
ifeq L5
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/isInFilterMode()Z
ifeq L4
iload 3
istore 1
L5:
aload 0
iload 1
invokespecial android/view/ViewGroup/setFocusableInTouchMode(Z)V
return
L1:
iconst_0
istore 2
goto L2
L4:
iconst_0
istore 1
goto L5
.limit locals 5
.limit stack 2
.end method

.method setNextSelectedPositionInt(I)V
aload 0
iload 1
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mNextSelectedPosition I
aload 0
aload 0
iload 1
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/getItemIdAtPosition(I)J
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mNextSelectedRowId J
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView/mNeedSync Z
ifeq L0
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView/mSyncMode I
ifne L0
iload 1
iflt L0
aload 0
iload 1
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mSyncPosition I
aload 0
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView/mNextSelectedRowId J
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mSyncRowId J
L0:
return
.limit locals 2
.limit stack 3
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
new java/lang/RuntimeException
dup
ldc "Don't call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead"
invokespecial java/lang/RuntimeException/<init>(Ljava/lang/String;)V
athrow
.limit locals 2
.limit stack 3
.end method

.method public setOnItemClickListener(Lcom/nd/android/backpacksystem/widget/TDAdapterView$OnItemClickListener;)V
aload 0
aload 1
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mOnItemClickListener Lcom/nd/android/backpacksystem/widget/TDAdapterView$OnItemClickListener;
return
.limit locals 2
.limit stack 2
.end method

.method public setOnItemDoubleClickListener(Lcom/nd/android/backpacksystem/widget/TDAdapterView$OnItemDoubleClickListener;)V
aload 0
aload 1
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mOnItemDoubleClickListener Lcom/nd/android/backpacksystem/widget/TDAdapterView$OnItemDoubleClickListener;
return
.limit locals 2
.limit stack 2
.end method

.method public setOnItemLongClickListener(Lcom/nd/android/backpacksystem/widget/TDAdapterView$OnItemLongClickListener;)V
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/isLongClickable()Z
ifne L0
aload 0
iconst_1
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/setLongClickable(Z)V
L0:
aload 0
aload 1
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mOnItemLongClickListener Lcom/nd/android/backpacksystem/widget/TDAdapterView$OnItemLongClickListener;
return
.limit locals 2
.limit stack 2
.end method

.method public setOnItemSelectedListener(Lcom/nd/android/backpacksystem/widget/TDAdapterView$OnItemSelectedListener;)V
aload 0
aload 1
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mOnItemSelectedListener Lcom/nd/android/backpacksystem/widget/TDAdapterView$OnItemSelectedListener;
return
.limit locals 2
.limit stack 2
.end method

.method setSelectedPositionInt(I)V
aload 0
iload 1
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mSelectedPosition I
aload 0
aload 0
iload 1
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/getItemIdAtPosition(I)J
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mSelectedRowId J
return
.limit locals 2
.limit stack 3
.end method

.method public abstract setSelection(I)V
.end method
