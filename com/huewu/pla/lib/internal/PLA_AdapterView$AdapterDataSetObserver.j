.bytecode 50.0
.class synchronized com/huewu/pla/lib/internal/PLA_AdapterView$AdapterDataSetObserver
.super android/database/DataSetObserver
.inner class AdapterDataSetObserver inner com/huewu/pla/lib/internal/PLA_AdapterView$AdapterDataSetObserver outer com/huewu/pla/lib/internal/PLA_AdapterView

.field private 'mInstanceState' Landroid/os/Parcelable;

.field final synthetic 'this$0' Lcom/huewu/pla/lib/internal/PLA_AdapterView;

.method <init>(Lcom/huewu/pla/lib/internal/PLA_AdapterView;)V
aload 0
aload 1
putfield com/huewu/pla/lib/internal/PLA_AdapterView$AdapterDataSetObserver/this$0 Lcom/huewu/pla/lib/internal/PLA_AdapterView;
aload 0
invokespecial android/database/DataSetObserver/<init>()V
aload 0
aconst_null
putfield com/huewu/pla/lib/internal/PLA_AdapterView$AdapterDataSetObserver/mInstanceState Landroid/os/Parcelable;
return
.limit locals 2
.limit stack 2
.end method

.method public clearSavedState()V
aload 0
aconst_null
putfield com/huewu/pla/lib/internal/PLA_AdapterView$AdapterDataSetObserver/mInstanceState Landroid/os/Parcelable;
return
.limit locals 1
.limit stack 2
.end method

.method public onChanged()V
ldc "data changed by onChanged()"
invokestatic com/huewu/pla/lib/DebugUtil/LogDebug(Ljava/lang/String;)V
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView$AdapterDataSetObserver/this$0 Lcom/huewu/pla/lib/internal/PLA_AdapterView;
iconst_1
putfield com/huewu/pla/lib/internal/PLA_AdapterView/mDataChanged Z
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView$AdapterDataSetObserver/this$0 Lcom/huewu/pla/lib/internal/PLA_AdapterView;
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView$AdapterDataSetObserver/this$0 Lcom/huewu/pla/lib/internal/PLA_AdapterView;
getfield com/huewu/pla/lib/internal/PLA_AdapterView/mItemCount I
putfield com/huewu/pla/lib/internal/PLA_AdapterView/mOldItemCount I
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView$AdapterDataSetObserver/this$0 Lcom/huewu/pla/lib/internal/PLA_AdapterView;
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView$AdapterDataSetObserver/this$0 Lcom/huewu/pla/lib/internal/PLA_AdapterView;
invokevirtual com/huewu/pla/lib/internal/PLA_AdapterView/getAdapter()Landroid/widget/Adapter;
invokeinterface android/widget/Adapter/getCount()I 0
putfield com/huewu/pla/lib/internal/PLA_AdapterView/mItemCount I
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView$AdapterDataSetObserver/this$0 Lcom/huewu/pla/lib/internal/PLA_AdapterView;
invokevirtual com/huewu/pla/lib/internal/PLA_AdapterView/getAdapter()Landroid/widget/Adapter;
invokeinterface android/widget/Adapter/hasStableIds()Z 0
ifeq L0
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView$AdapterDataSetObserver/mInstanceState Landroid/os/Parcelable;
ifnull L0
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView$AdapterDataSetObserver/this$0 Lcom/huewu/pla/lib/internal/PLA_AdapterView;
getfield com/huewu/pla/lib/internal/PLA_AdapterView/mOldItemCount I
ifne L0
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView$AdapterDataSetObserver/this$0 Lcom/huewu/pla/lib/internal/PLA_AdapterView;
getfield com/huewu/pla/lib/internal/PLA_AdapterView/mItemCount I
ifle L0
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView$AdapterDataSetObserver/this$0 Lcom/huewu/pla/lib/internal/PLA_AdapterView;
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView$AdapterDataSetObserver/mInstanceState Landroid/os/Parcelable;
invokestatic com/huewu/pla/lib/internal/PLA_AdapterView/access$0(Lcom/huewu/pla/lib/internal/PLA_AdapterView;Landroid/os/Parcelable;)V
aload 0
aconst_null
putfield com/huewu/pla/lib/internal/PLA_AdapterView$AdapterDataSetObserver/mInstanceState Landroid/os/Parcelable;
L1:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView$AdapterDataSetObserver/this$0 Lcom/huewu/pla/lib/internal/PLA_AdapterView;
invokevirtual com/huewu/pla/lib/internal/PLA_AdapterView/requestLayout()V
return
L0:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView$AdapterDataSetObserver/this$0 Lcom/huewu/pla/lib/internal/PLA_AdapterView;
invokevirtual com/huewu/pla/lib/internal/PLA_AdapterView/rememberSyncState()V
goto L1
.limit locals 1
.limit stack 2
.end method

.method public onInvalidated()V
ldc "data changed by onInvalidated()"
invokestatic com/huewu/pla/lib/DebugUtil/LogDebug(Ljava/lang/String;)V
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView$AdapterDataSetObserver/this$0 Lcom/huewu/pla/lib/internal/PLA_AdapterView;
iconst_1
putfield com/huewu/pla/lib/internal/PLA_AdapterView/mDataChanged Z
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView$AdapterDataSetObserver/this$0 Lcom/huewu/pla/lib/internal/PLA_AdapterView;
invokevirtual com/huewu/pla/lib/internal/PLA_AdapterView/getAdapter()Landroid/widget/Adapter;
invokeinterface android/widget/Adapter/hasStableIds()Z 0
ifeq L0
aload 0
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView$AdapterDataSetObserver/this$0 Lcom/huewu/pla/lib/internal/PLA_AdapterView;
invokestatic com/huewu/pla/lib/internal/PLA_AdapterView/access$1(Lcom/huewu/pla/lib/internal/PLA_AdapterView;)Landroid/os/Parcelable;
putfield com/huewu/pla/lib/internal/PLA_AdapterView$AdapterDataSetObserver/mInstanceState Landroid/os/Parcelable;
L0:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView$AdapterDataSetObserver/this$0 Lcom/huewu/pla/lib/internal/PLA_AdapterView;
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView$AdapterDataSetObserver/this$0 Lcom/huewu/pla/lib/internal/PLA_AdapterView;
getfield com/huewu/pla/lib/internal/PLA_AdapterView/mItemCount I
putfield com/huewu/pla/lib/internal/PLA_AdapterView/mOldItemCount I
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView$AdapterDataSetObserver/this$0 Lcom/huewu/pla/lib/internal/PLA_AdapterView;
iconst_0
putfield com/huewu/pla/lib/internal/PLA_AdapterView/mItemCount I
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView$AdapterDataSetObserver/this$0 Lcom/huewu/pla/lib/internal/PLA_AdapterView;
iconst_m1
putfield com/huewu/pla/lib/internal/PLA_AdapterView/mSelectedPosition I
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView$AdapterDataSetObserver/this$0 Lcom/huewu/pla/lib/internal/PLA_AdapterView;
ldc2_w -9223372036854775808L
putfield com/huewu/pla/lib/internal/PLA_AdapterView/mSelectedRowId J
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView$AdapterDataSetObserver/this$0 Lcom/huewu/pla/lib/internal/PLA_AdapterView;
iconst_0
putfield com/huewu/pla/lib/internal/PLA_AdapterView/mNeedSync Z
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView$AdapterDataSetObserver/this$0 Lcom/huewu/pla/lib/internal/PLA_AdapterView;
invokevirtual com/huewu/pla/lib/internal/PLA_AdapterView/requestLayout()V
return
.limit locals 1
.limit stack 3
.end method
