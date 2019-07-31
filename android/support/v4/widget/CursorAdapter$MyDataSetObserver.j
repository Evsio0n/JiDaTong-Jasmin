.bytecode 50.0
.class synchronized android/support/v4/widget/CursorAdapter$MyDataSetObserver
.super android/database/DataSetObserver
.inner class private MyDataSetObserver inner android/support/v4/widget/CursorAdapter$MyDataSetObserver outer android/support/v4/widget/CursorAdapter

.field final synthetic 'this$0' Landroid/support/v4/widget/CursorAdapter;

.method private <init>(Landroid/support/v4/widget/CursorAdapter;)V
aload 0
aload 1
putfield android/support/v4/widget/CursorAdapter$MyDataSetObserver/this$0 Landroid/support/v4/widget/CursorAdapter;
aload 0
invokespecial android/database/DataSetObserver/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Landroid/support/v4/widget/CursorAdapter;Landroid/support/v4/widget/CursorAdapter$1;)V
aload 0
aload 1
invokespecial android/support/v4/widget/CursorAdapter$MyDataSetObserver/<init>(Landroid/support/v4/widget/CursorAdapter;)V
return
.limit locals 3
.limit stack 2
.end method

.method public onChanged()V
aload 0
getfield android/support/v4/widget/CursorAdapter$MyDataSetObserver/this$0 Landroid/support/v4/widget/CursorAdapter;
iconst_1
putfield android/support/v4/widget/CursorAdapter/mDataValid Z
aload 0
getfield android/support/v4/widget/CursorAdapter$MyDataSetObserver/this$0 Landroid/support/v4/widget/CursorAdapter;
invokevirtual android/support/v4/widget/CursorAdapter/notifyDataSetChanged()V
return
.limit locals 1
.limit stack 2
.end method

.method public onInvalidated()V
aload 0
getfield android/support/v4/widget/CursorAdapter$MyDataSetObserver/this$0 Landroid/support/v4/widget/CursorAdapter;
iconst_0
putfield android/support/v4/widget/CursorAdapter/mDataValid Z
aload 0
getfield android/support/v4/widget/CursorAdapter$MyDataSetObserver/this$0 Landroid/support/v4/widget/CursorAdapter;
invokevirtual android/support/v4/widget/CursorAdapter/notifyDataSetInvalidated()V
return
.limit locals 1
.limit stack 2
.end method
