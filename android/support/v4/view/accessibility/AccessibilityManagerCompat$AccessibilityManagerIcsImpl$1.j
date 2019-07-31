.bytecode 50.0
.class synchronized android/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerIcsImpl$1
.super java/lang/Object
.implements android/support/v4/view/accessibility/AccessibilityManagerCompatIcs$AccessibilityStateChangeListenerBridge
.enclosing method android/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerIcsImpl/newAccessiblityStateChangeListener(Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;)Ljava/lang/Object;
.inner class static AccessibilityManagerIcsImpl inner android/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerIcsImpl outer android/support/v4/view/accessibility/AccessibilityManagerCompat
.inner class inner android/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerIcsImpl$1

.field final synthetic 'this$0' Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerIcsImpl;

.field final synthetic 'val$listener' Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;

.method <init>(Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerIcsImpl;Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;)V
aload 0
aload 1
putfield android/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerIcsImpl$1/this$0 Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerIcsImpl;
aload 0
aload 2
putfield android/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerIcsImpl$1/val$listener Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onAccessibilityStateChanged(Z)V
aload 0
getfield android/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerIcsImpl$1/val$listener Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;
iload 1
invokevirtual android/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat/onAccessibilityStateChanged(Z)V
return
.limit locals 2
.limit stack 2
.end method
