.bytecode 50.0
.class final synchronized android/support/v4/view/AccessibilityDelegateCompatIcs$1
.super android/view/View$AccessibilityDelegate
.enclosing method android/support/v4/view/AccessibilityDelegateCompatIcs/newAccessibilityDelegateBridge(Landroid/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;)Ljava/lang/Object;
.inner class static final inner android/support/v4/view/AccessibilityDelegateCompatIcs$1

.field final synthetic 'val$bridge' Landroid/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;

.method <init>(Landroid/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;)V
aload 0
aload 1
putfield android/support/v4/view/AccessibilityDelegateCompatIcs$1/val$bridge Landroid/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;
aload 0
invokespecial android/view/View$AccessibilityDelegate/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
aload 0
getfield android/support/v4/view/AccessibilityDelegateCompatIcs$1/val$bridge Landroid/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;
aload 1
aload 2
invokeinterface android/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge/dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z 2
ireturn
.limit locals 3
.limit stack 3
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
aload 0
getfield android/support/v4/view/AccessibilityDelegateCompatIcs$1/val$bridge Landroid/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;
aload 1
aload 2
invokeinterface android/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge/onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V 2
return
.limit locals 3
.limit stack 3
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
aload 0
getfield android/support/v4/view/AccessibilityDelegateCompatIcs$1/val$bridge Landroid/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;
aload 1
aload 2
invokeinterface android/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge/onInitializeAccessibilityNodeInfo(Landroid/view/View;Ljava/lang/Object;)V 2
return
.limit locals 3
.limit stack 3
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
aload 0
getfield android/support/v4/view/AccessibilityDelegateCompatIcs$1/val$bridge Landroid/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;
aload 1
aload 2
invokeinterface android/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge/onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V 2
return
.limit locals 3
.limit stack 3
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
aload 0
getfield android/support/v4/view/AccessibilityDelegateCompatIcs$1/val$bridge Landroid/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;
aload 1
aload 2
aload 3
invokeinterface android/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge/onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z 3
ireturn
.limit locals 4
.limit stack 4
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
aload 0
getfield android/support/v4/view/AccessibilityDelegateCompatIcs$1/val$bridge Landroid/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;
aload 1
iload 2
invokeinterface android/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge/sendAccessibilityEvent(Landroid/view/View;I)V 2
return
.limit locals 3
.limit stack 3
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
aload 0
getfield android/support/v4/view/AccessibilityDelegateCompatIcs$1/val$bridge Landroid/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;
aload 1
aload 2
invokeinterface android/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge/sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V 2
return
.limit locals 3
.limit stack 3
.end method
