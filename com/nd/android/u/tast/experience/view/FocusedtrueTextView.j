.bytecode 50.0
.class public synchronized com/nd/android/u/tast/experience/view/FocusedtrueTextView
.super android/widget/TextView

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/TextView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return
.limit locals 3
.limit stack 3
.end method

.method public isFocused()Z
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setFocusedTextColor(I)V
getstatic java/lang/System/out Ljava/io/PrintStream;
ldc "\u8bbe\u7f6e\u989c\u8272"
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
aload 0
iload 1
invokevirtual com/nd/android/u/tast/experience/view/FocusedtrueTextView/setTextColor(I)V
return
.limit locals 2
.limit stack 2
.end method
