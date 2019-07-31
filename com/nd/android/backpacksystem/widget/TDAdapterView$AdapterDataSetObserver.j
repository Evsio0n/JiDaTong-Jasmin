.bytecode 50.0
.class synchronized com/nd/android/backpacksystem/widget/TDAdapterView$AdapterDataSetObserver
.super android/database/DataSetObserver
.inner class AdapterDataSetObserver inner com/nd/android/backpacksystem/widget/TDAdapterView$AdapterDataSetObserver outer com/nd/android/backpacksystem/widget/TDAdapterView

.field private 'mInstanceState' Landroid/os/Parcelable;

.field final synthetic 'this$0' Lcom/nd/android/backpacksystem/widget/TDAdapterView;

.method <init>(Lcom/nd/android/backpacksystem/widget/TDAdapterView;)V
aload 0
aload 1
putfield com/nd/android/backpacksystem/widget/TDAdapterView$AdapterDataSetObserver/this$0 Lcom/nd/android/backpacksystem/widget/TDAdapterView;
aload 0
invokespecial android/database/DataSetObserver/<init>()V
aload 0
aconst_null
putfield com/nd/android/backpacksystem/widget/TDAdapterView$AdapterDataSetObserver/mInstanceState Landroid/os/Parcelable;
return
.limit locals 2
.limit stack 2
.end method

.method public clearSavedState()V
aload 0
aconst_null
putfield com/nd/android/backpacksystem/widget/TDAdapterView$AdapterDataSetObserver/mInstanceState Landroid/os/Parcelable;
return
.limit locals 1
.limit stack 2
.end method

.method public onChanged()V
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView$AdapterDataSetObserver/this$0 Lcom/nd/android/backpacksystem/widget/TDAdapterView;
iconst_1
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mDataChanged Z
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView$AdapterDataSetObserver/this$0 Lcom/nd/android/backpacksystem/widget/TDAdapterView;
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView$AdapterDataSetObserver/this$0 Lcom/nd/android/backpacksystem/widget/TDAdapterView;
getfield com/nd/android/backpacksystem/widget/TDAdapterView/mItemCount I
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mOldItemCount I
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView$AdapterDataSetObserver/this$0 Lcom/nd/android/backpacksystem/widget/TDAdapterView;
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView$AdapterDataSetObserver/this$0 Lcom/nd/android/backpacksystem/widget/TDAdapterView;
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/getAdapter()Landroid/widget/Adapter;
invokeinterface android/widget/Adapter/getCount()I 0
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mItemCount I
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView$AdapterDataSetObserver/this$0 Lcom/nd/android/backpacksystem/widget/TDAdapterView;
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/getAdapter()Landroid/widget/Adapter;
invokeinterface android/widget/Adapter/hasStableIds()Z 0
ifeq L0
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView$AdapterDataSetObserver/mInstanceState Landroid/os/Parcelable;
ifnull L0
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView$AdapterDataSetObserver/this$0 Lcom/nd/android/backpacksystem/widget/TDAdapterView;
getfield com/nd/android/backpacksystem/widget/TDAdapterView/mOldItemCount I
ifne L0
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView$AdapterDataSetObserver/this$0 Lcom/nd/android/backpacksystem/widget/TDAdapterView;
getfield com/nd/android/backpacksystem/widget/TDAdapterView/mItemCount I
ifle L0
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView$AdapterDataSetObserver/this$0 Lcom/nd/android/backpacksystem/widget/TDAdapterView;
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView$AdapterDataSetObserver/mInstanceState Landroid/os/Parcelable;
invokestatic com/nd/android/backpacksystem/widget/TDAdapterView/access$000(Lcom/nd/android/backpacksystem/widget/TDAdapterView;Landroid/os/Parcelable;)V
aload 0
aconst_null
putfield com/nd/android/backpacksystem/widget/TDAdapterView$AdapterDataSetObserver/mInstanceState Landroid/os/Parcelable;
L1:
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView$AdapterDataSetObserver/this$0 Lcom/nd/android/backpacksystem/widget/TDAdapterView;
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/checkFocus()V
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView$AdapterDataSetObserver/this$0 Lcom/nd/android/backpacksystem/widget/TDAdapterView;
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/requestLayout()V
return
L0:
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView$AdapterDataSetObserver/this$0 Lcom/nd/android/backpacksystem/widget/TDAdapterView;
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/rememberSyncState()V
goto L1
.limit locals 1
.limit stack 2
.end method

.method public onInvalidated()V
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView$AdapterDataSetObserver/this$0 Lcom/nd/android/backpacksystem/widget/TDAdapterView;
iconst_1
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mDataChanged Z
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView$AdapterDataSetObserver/this$0 Lcom/nd/android/backpacksystem/widget/TDAdapterView;
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/getAdapter()Landroid/widget/Adapter;
invokeinterface android/widget/Adapter/hasStableIds()Z 0
ifeq L0
aload 0
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView$AdapterDataSetObserver/this$0 Lcom/nd/android/backpacksystem/widget/TDAdapterView;
invokestatic com/nd/android/backpacksystem/widget/TDAdapterView/access$100(Lcom/nd/android/backpacksystem/widget/TDAdapterView;)Landroid/os/Parcelable;
putfield com/nd/android/backpacksystem/widget/TDAdapterView$AdapterDataSetObserver/mInstanceState Landroid/os/Parcelable;
L0:
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView$AdapterDataSetObserver/this$0 Lcom/nd/android/backpacksystem/widget/TDAdapterView;
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView$AdapterDataSetObserver/this$0 Lcom/nd/android/backpacksystem/widget/TDAdapterView;
getfield com/nd/android/backpacksystem/widget/TDAdapterView/mItemCount I
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mOldItemCount I
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView$AdapterDataSetObserver/this$0 Lcom/nd/android/backpacksystem/widget/TDAdapterView;
iconst_0
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mItemCount I
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView$AdapterDataSetObserver/this$0 Lcom/nd/android/backpacksystem/widget/TDAdapterView;
iconst_m1
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mSelectedPosition I
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView$AdapterDataSetObserver/this$0 Lcom/nd/android/backpacksystem/widget/TDAdapterView;
ldc2_w -9223372036854775808L
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mSelectedRowId J
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView$AdapterDataSetObserver/this$0 Lcom/nd/android/backpacksystem/widget/TDAdapterView;
iconst_m1
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mNextSelectedPosition I
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView$AdapterDataSetObserver/this$0 Lcom/nd/android/backpacksystem/widget/TDAdapterView;
ldc2_w -9223372036854775808L
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mNextSelectedRowId J
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView$AdapterDataSetObserver/this$0 Lcom/nd/android/backpacksystem/widget/TDAdapterView;
iconst_0
putfield com/nd/android/backpacksystem/widget/TDAdapterView/mNeedSync Z
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView$AdapterDataSetObserver/this$0 Lcom/nd/android/backpacksystem/widget/TDAdapterView;
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/checkSelectionChanged()V
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView$AdapterDataSetObserver/this$0 Lcom/nd/android/backpacksystem/widget/TDAdapterView;
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/checkFocus()V
aload 0
getfield com/nd/android/backpacksystem/widget/TDAdapterView$AdapterDataSetObserver/this$0 Lcom/nd/android/backpacksystem/widget/TDAdapterView;
invokevirtual com/nd/android/backpacksystem/widget/TDAdapterView/requestLayout()V
return
.limit locals 1
.limit stack 3
.end method
