.bytecode 50.0
.class synchronized android/support/v4/view/AccessibilityDelegateCompatIcs
.super java/lang/Object
.inner class static final inner android/support/v4/view/AccessibilityDelegateCompatIcs$1
.inner class public static abstract interface AccessibilityDelegateBridge inner android/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge outer android/support/v4/view/AccessibilityDelegateCompatIcs

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static dispatchPopulateAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
aload 0
checkcast android/view/View$AccessibilityDelegate
aload 1
aload 2
invokevirtual android/view/View$AccessibilityDelegate/dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
ireturn
.limit locals 3
.limit stack 3
.end method

.method public static newAccessibilityDelegateBridge(Landroid/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;)Ljava/lang/Object;
new android/support/v4/view/AccessibilityDelegateCompatIcs$1
dup
aload 0
invokespecial android/support/v4/view/AccessibilityDelegateCompatIcs$1/<init>(Landroid/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;)V
areturn
.limit locals 1
.limit stack 3
.end method

.method public static newAccessibilityDelegateDefaultImpl()Ljava/lang/Object;
new android/view/View$AccessibilityDelegate
dup
invokespecial android/view/View$AccessibilityDelegate/<init>()V
areturn
.limit locals 0
.limit stack 2
.end method

.method public static onInitializeAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
aload 0
checkcast android/view/View$AccessibilityDelegate
aload 1
aload 2
invokevirtual android/view/View$AccessibilityDelegate/onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
return
.limit locals 3
.limit stack 3
.end method

.method public static onInitializeAccessibilityNodeInfo(Ljava/lang/Object;Landroid/view/View;Ljava/lang/Object;)V
aload 0
checkcast android/view/View$AccessibilityDelegate
aload 1
aload 2
checkcast android/view/accessibility/AccessibilityNodeInfo
invokevirtual android/view/View$AccessibilityDelegate/onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
return
.limit locals 3
.limit stack 3
.end method

.method public static onPopulateAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
aload 0
checkcast android/view/View$AccessibilityDelegate
aload 1
aload 2
invokevirtual android/view/View$AccessibilityDelegate/onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
return
.limit locals 3
.limit stack 3
.end method

.method public static onRequestSendAccessibilityEvent(Ljava/lang/Object;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
aload 0
checkcast android/view/View$AccessibilityDelegate
aload 1
aload 2
aload 3
invokevirtual android/view/View$AccessibilityDelegate/onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
ireturn
.limit locals 4
.limit stack 4
.end method

.method public static sendAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;I)V
aload 0
checkcast android/view/View$AccessibilityDelegate
aload 1
iload 2
invokevirtual android/view/View$AccessibilityDelegate/sendAccessibilityEvent(Landroid/view/View;I)V
return
.limit locals 3
.limit stack 3
.end method

.method public static sendAccessibilityEventUnchecked(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
aload 0
checkcast android/view/View$AccessibilityDelegate
aload 1
aload 2
invokevirtual android/view/View$AccessibilityDelegate/sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
return
.limit locals 3
.limit stack 3
.end method
