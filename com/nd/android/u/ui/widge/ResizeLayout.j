.bytecode 50.0
.class public synchronized com/nd/android/u/ui/widge/ResizeLayout
.super android/widget/LinearLayout
.inner class public static abstract interface OnResizeListener inner com/nd/android/u/ui/widge/ResizeLayout$OnResizeListener outer com/nd/android/u/ui/widge/ResizeLayout

.field private 'mListener' Lcom/nd/android/u/ui/widge/ResizeLayout$OnResizeListener;

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return
.limit locals 3
.limit stack 3
.end method

.method protected onSizeChanged(IIII)V
aload 0
iload 1
iload 2
iload 3
iload 4
invokespecial android/widget/LinearLayout/onSizeChanged(IIII)V
aload 0
getfield com/nd/android/u/ui/widge/ResizeLayout/mListener Lcom/nd/android/u/ui/widge/ResizeLayout$OnResizeListener;
ifnull L0
aload 0
getfield com/nd/android/u/ui/widge/ResizeLayout/mListener Lcom/nd/android/u/ui/widge/ResizeLayout$OnResizeListener;
iload 1
iload 2
iload 3
iload 4
invokeinterface com/nd/android/u/ui/widge/ResizeLayout$OnResizeListener/OnResize(IIII)V 4
L0:
return
.limit locals 5
.limit stack 5
.end method

.method public setOnResizeListener(Lcom/nd/android/u/ui/widge/ResizeLayout$OnResizeListener;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/ResizeLayout/mListener Lcom/nd/android/u/ui/widge/ResizeLayout$OnResizeListener;
return
.limit locals 2
.limit stack 2
.end method
