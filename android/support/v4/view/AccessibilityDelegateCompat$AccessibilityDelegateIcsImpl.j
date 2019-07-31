.bytecode 50.0
.class synchronized android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl
.super android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateStubImpl
.inner class static AccessibilityDelegateIcsImpl inner android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl outer android/support/v4/view/AccessibilityDelegateCompat
.inner class inner android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl$1

.method <init>()V
aload 0
invokespecial android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateStubImpl/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public dispatchPopulateAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
aload 1
aload 2
aload 3
invokestatic android/support/v4/view/AccessibilityDelegateCompatIcs/dispatchPopulateAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
ireturn
.limit locals 4
.limit stack 3
.end method

.method public newAccessiblityDelegateBridge(Landroid/support/v4/view/AccessibilityDelegateCompat;)Ljava/lang/Object;
new android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl$1
dup
aload 0
aload 1
invokespecial android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl$1/<init>(Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl;Landroid/support/v4/view/AccessibilityDelegateCompat;)V
invokestatic android/support/v4/view/AccessibilityDelegateCompatIcs/newAccessibilityDelegateBridge(Landroid/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;)Ljava/lang/Object;
areturn
.limit locals 2
.limit stack 4
.end method

.method public newAccessiblityDelegateDefaultImpl()Ljava/lang/Object;
invokestatic android/support/v4/view/AccessibilityDelegateCompatIcs/newAccessibilityDelegateDefaultImpl()Ljava/lang/Object;
areturn
.limit locals 1
.limit stack 1
.end method

.method public onInitializeAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
aload 1
aload 2
aload 3
invokestatic android/support/v4/view/AccessibilityDelegateCompatIcs/onInitializeAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
return
.limit locals 4
.limit stack 3
.end method

.method public onInitializeAccessibilityNodeInfo(Ljava/lang/Object;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
aload 1
aload 2
aload 3
invokevirtual android/support/v4/view/accessibility/AccessibilityNodeInfoCompat/getInfo()Ljava/lang/Object;
invokestatic android/support/v4/view/AccessibilityDelegateCompatIcs/onInitializeAccessibilityNodeInfo(Ljava/lang/Object;Landroid/view/View;Ljava/lang/Object;)V
return
.limit locals 4
.limit stack 3
.end method

.method public onPopulateAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
aload 1
aload 2
aload 3
invokestatic android/support/v4/view/AccessibilityDelegateCompatIcs/onPopulateAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
return
.limit locals 4
.limit stack 3
.end method

.method public onRequestSendAccessibilityEvent(Ljava/lang/Object;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
aload 1
aload 2
aload 3
aload 4
invokestatic android/support/v4/view/AccessibilityDelegateCompatIcs/onRequestSendAccessibilityEvent(Ljava/lang/Object;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
ireturn
.limit locals 5
.limit stack 4
.end method

.method public sendAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;I)V
aload 1
aload 2
iload 3
invokestatic android/support/v4/view/AccessibilityDelegateCompatIcs/sendAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;I)V
return
.limit locals 4
.limit stack 3
.end method

.method public sendAccessibilityEventUnchecked(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
aload 1
aload 2
aload 3
invokestatic android/support/v4/view/AccessibilityDelegateCompatIcs/sendAccessibilityEventUnchecked(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
return
.limit locals 4
.limit stack 3
.end method
