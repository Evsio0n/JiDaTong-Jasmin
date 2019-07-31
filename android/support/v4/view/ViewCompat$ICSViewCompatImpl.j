.bytecode 50.0
.class synchronized android/support/v4/view/ViewCompat$ICSViewCompatImpl
.super android/support/v4/view/ViewCompat$HCViewCompatImpl
.inner class static ICSViewCompatImpl inner android/support/v4/view/ViewCompat$ICSViewCompatImpl outer android/support/v4/view/ViewCompat

.method <init>()V
aload 0
invokespecial android/support/v4/view/ViewCompat$HCViewCompatImpl/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public canScrollHorizontally(Landroid/view/View;I)Z
aload 1
iload 2
invokestatic android/support/v4/view/ViewCompatICS/canScrollHorizontally(Landroid/view/View;I)Z
ireturn
.limit locals 3
.limit stack 2
.end method

.method public canScrollVertically(Landroid/view/View;I)Z
aload 1
iload 2
invokestatic android/support/v4/view/ViewCompatICS/canScrollVertically(Landroid/view/View;I)Z
ireturn
.limit locals 3
.limit stack 2
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
aload 1
aload 2
invokestatic android/support/v4/view/ViewCompatICS/onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
return
.limit locals 3
.limit stack 2
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
aload 1
aload 2
invokevirtual android/support/v4/view/accessibility/AccessibilityNodeInfoCompat/getInfo()Ljava/lang/Object;
invokestatic android/support/v4/view/ViewCompatICS/onInitializeAccessibilityNodeInfo(Landroid/view/View;Ljava/lang/Object;)V
return
.limit locals 3
.limit stack 2
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
aload 1
aload 2
invokestatic android/support/v4/view/ViewCompatICS/onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
return
.limit locals 3
.limit stack 2
.end method

.method public setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V
aload 1
aload 2
invokevirtual android/support/v4/view/AccessibilityDelegateCompat/getBridge()Ljava/lang/Object;
invokestatic android/support/v4/view/ViewCompatICS/setAccessibilityDelegate(Landroid/view/View;Ljava/lang/Object;)V
return
.limit locals 3
.limit stack 2
.end method
