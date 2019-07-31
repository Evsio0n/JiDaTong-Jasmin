.bytecode 50.0
.class synchronized android/support/v4/widget/CursorAdapter$ChangeObserver
.super android/database/ContentObserver
.inner class private ChangeObserver inner android/support/v4/widget/CursorAdapter$ChangeObserver outer android/support/v4/widget/CursorAdapter

.field final synthetic 'this$0' Landroid/support/v4/widget/CursorAdapter;

.method public <init>(Landroid/support/v4/widget/CursorAdapter;)V
aload 0
aload 1
putfield android/support/v4/widget/CursorAdapter$ChangeObserver/this$0 Landroid/support/v4/widget/CursorAdapter;
aload 0
new android/os/Handler
dup
invokespecial android/os/Handler/<init>()V
invokespecial android/database/ContentObserver/<init>(Landroid/os/Handler;)V
return
.limit locals 2
.limit stack 3
.end method

.method public deliverSelfNotifications()Z
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method

.method public onChange(Z)V
aload 0
getfield android/support/v4/widget/CursorAdapter$ChangeObserver/this$0 Landroid/support/v4/widget/CursorAdapter;
invokevirtual android/support/v4/widget/CursorAdapter/onContentChanged()V
return
.limit locals 2
.limit stack 1
.end method
