.bytecode 50.0
.class public synchronized abstract android/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat
.super java/lang/Object
.inner class public static abstract AccessibilityStateChangeListenerCompat inner android/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat outer android/support/v4/view/accessibility/AccessibilityManagerCompat

.field final 'mListener' Ljava/lang/Object;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
invokestatic android/support/v4/view/accessibility/AccessibilityManagerCompat/access$000()Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerVersionImpl;
aload 0
invokeinterface android/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerVersionImpl/newAccessiblityStateChangeListener(Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;)Ljava/lang/Object; 1
putfield android/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat/mListener Ljava/lang/Object;
return
.limit locals 1
.limit stack 3
.end method

.method public abstract onAccessibilityStateChanged(Z)V
.end method
