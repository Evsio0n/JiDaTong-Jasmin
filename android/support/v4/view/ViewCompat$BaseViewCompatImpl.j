.bytecode 50.0
.class synchronized android/support/v4/view/ViewCompat$BaseViewCompatImpl
.super java/lang/Object
.implements android/support/v4/view/ViewCompat$ViewCompatImpl
.inner class static BaseViewCompatImpl inner android/support/v4/view/ViewCompat$BaseViewCompatImpl outer android/support/v4/view/ViewCompat

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public canScrollHorizontally(Landroid/view/View;I)Z
iconst_0
ireturn
.limit locals 3
.limit stack 1
.end method

.method public canScrollVertically(Landroid/view/View;I)Z
iconst_0
ireturn
.limit locals 3
.limit stack 1
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
aconst_null
areturn
.limit locals 2
.limit stack 1
.end method

.method getFrameTime()J
ldc2_w 10L
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getImportantForAccessibility(Landroid/view/View;)I
iconst_0
ireturn
.limit locals 2
.limit stack 1
.end method

.method public getLabelFor(Landroid/view/View;)I
iconst_0
ireturn
.limit locals 2
.limit stack 1
.end method

.method public getLayerType(Landroid/view/View;)I
iconst_0
ireturn
.limit locals 2
.limit stack 1
.end method

.method public getOverScrollMode(Landroid/view/View;)I
iconst_2
ireturn
.limit locals 2
.limit stack 1
.end method

.method public hasTransientState(Landroid/view/View;)Z
iconst_0
ireturn
.limit locals 2
.limit stack 1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
return
.limit locals 3
.limit stack 0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
return
.limit locals 3
.limit stack 0
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
return
.limit locals 3
.limit stack 0
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
iconst_0
ireturn
.limit locals 4
.limit stack 1
.end method

.method public postInvalidateOnAnimation(Landroid/view/View;)V
aload 1
aload 0
invokevirtual android/support/v4/view/ViewCompat$BaseViewCompatImpl/getFrameTime()J
invokevirtual android/view/View/postInvalidateDelayed(J)V
return
.limit locals 2
.limit stack 3
.end method

.method public postInvalidateOnAnimation(Landroid/view/View;IIII)V
aload 1
aload 0
invokevirtual android/support/v4/view/ViewCompat$BaseViewCompatImpl/getFrameTime()J
iload 2
iload 3
iload 4
iload 5
invokevirtual android/view/View/postInvalidateDelayed(JIIII)V
return
.limit locals 6
.limit stack 7
.end method

.method public postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
aload 1
aload 2
aload 0
invokevirtual android/support/v4/view/ViewCompat$BaseViewCompatImpl/getFrameTime()J
invokevirtual android/view/View/postDelayed(Ljava/lang/Runnable;J)Z
pop
return
.limit locals 3
.limit stack 4
.end method

.method public postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V
aload 1
aload 2
aload 0
invokevirtual android/support/v4/view/ViewCompat$BaseViewCompatImpl/getFrameTime()J
lload 3
ladd
invokevirtual android/view/View/postDelayed(Ljava/lang/Runnable;J)Z
pop
return
.limit locals 5
.limit stack 6
.end method

.method public setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V
return
.limit locals 3
.limit stack 0
.end method

.method public setHasTransientState(Landroid/view/View;Z)V
return
.limit locals 3
.limit stack 0
.end method

.method public setImportantForAccessibility(Landroid/view/View;I)V
return
.limit locals 3
.limit stack 0
.end method

.method public setLabelFor(Landroid/view/View;I)V
return
.limit locals 3
.limit stack 0
.end method

.method public setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V
return
.limit locals 4
.limit stack 0
.end method

.method public setOverScrollMode(Landroid/view/View;I)V
return
.limit locals 3
.limit stack 0
.end method
