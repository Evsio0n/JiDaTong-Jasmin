.bytecode 50.0
.class public synchronized com/nd/android/backpacksystem/widget/TDWheelTextView
.super android/widget/TextView

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/TextView/<init>(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/TextView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return
.limit locals 3
.limit stack 3
.end method

.method public offsetTopAndBottom(I)V
aload 0
iload 1
invokespecial android/widget/TextView/offsetTopAndBottom(I)V
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDWheelTextView/invalidate()V
return
.limit locals 2
.limit stack 2
.end method
