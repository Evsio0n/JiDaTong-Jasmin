.bytecode 50.0
.class final synchronized android/support/v4/view/accessibility/AccessibilityManagerCompatIcs$1
.super java/lang/Object
.implements android/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener
.enclosing method android/support/v4/view/accessibility/AccessibilityManagerCompatIcs/newAccessibilityStateChangeListener(Landroid/support/v4/view/accessibility/AccessibilityManagerCompatIcs$AccessibilityStateChangeListenerBridge;)Ljava/lang/Object;
.inner class static final inner android/support/v4/view/accessibility/AccessibilityManagerCompatIcs$1

.field final synthetic 'val$bridge' Landroid/support/v4/view/accessibility/AccessibilityManagerCompatIcs$AccessibilityStateChangeListenerBridge;

.method <init>(Landroid/support/v4/view/accessibility/AccessibilityManagerCompatIcs$AccessibilityStateChangeListenerBridge;)V
aload 0
aload 1
putfield android/support/v4/view/accessibility/AccessibilityManagerCompatIcs$1/val$bridge Landroid/support/v4/view/accessibility/AccessibilityManagerCompatIcs$AccessibilityStateChangeListenerBridge;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onAccessibilityStateChanged(Z)V
aload 0
getfield android/support/v4/view/accessibility/AccessibilityManagerCompatIcs$1/val$bridge Landroid/support/v4/view/accessibility/AccessibilityManagerCompatIcs$AccessibilityStateChangeListenerBridge;
iload 1
invokeinterface android/support/v4/view/accessibility/AccessibilityManagerCompatIcs$AccessibilityStateChangeListenerBridge/onAccessibilityStateChanged(Z)V 1
return
.limit locals 2
.limit stack 2
.end method
