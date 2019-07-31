.bytecode 50.0
.class synchronized android/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerIcsImpl
.super android/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerStubImpl
.inner class static AccessibilityManagerIcsImpl inner android/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerIcsImpl outer android/support/v4/view/accessibility/AccessibilityManagerCompat
.inner class inner android/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerIcsImpl$1

.method <init>()V
aload 0
invokespecial android/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerStubImpl/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;)Z
aload 1
aload 2
getfield android/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat/mListener Ljava/lang/Object;
invokestatic android/support/v4/view/accessibility/AccessibilityManagerCompatIcs/addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Ljava/lang/Object;)Z
ireturn
.limit locals 3
.limit stack 2
.end method

.method public getEnabledAccessibilityServiceList(Landroid/view/accessibility/AccessibilityManager;I)Ljava/util/List;
.signature "(Landroid/view/accessibility/AccessibilityManager;I)Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
aload 1
iload 2
invokestatic android/support/v4/view/accessibility/AccessibilityManagerCompatIcs/getEnabledAccessibilityServiceList(Landroid/view/accessibility/AccessibilityManager;I)Ljava/util/List;
areturn
.limit locals 3
.limit stack 2
.end method

.method public getInstalledAccessibilityServiceList(Landroid/view/accessibility/AccessibilityManager;)Ljava/util/List;
.signature "(Landroid/view/accessibility/AccessibilityManager;)Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
aload 1
invokestatic android/support/v4/view/accessibility/AccessibilityManagerCompatIcs/getInstalledAccessibilityServiceList(Landroid/view/accessibility/AccessibilityManager;)Ljava/util/List;
areturn
.limit locals 2
.limit stack 1
.end method

.method public isTouchExplorationEnabled(Landroid/view/accessibility/AccessibilityManager;)Z
aload 1
invokestatic android/support/v4/view/accessibility/AccessibilityManagerCompatIcs/isTouchExplorationEnabled(Landroid/view/accessibility/AccessibilityManager;)Z
ireturn
.limit locals 2
.limit stack 1
.end method

.method public newAccessiblityStateChangeListener(Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;)Ljava/lang/Object;
new android/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerIcsImpl$1
dup
aload 0
aload 1
invokespecial android/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerIcsImpl$1/<init>(Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerIcsImpl;Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;)V
invokestatic android/support/v4/view/accessibility/AccessibilityManagerCompatIcs/newAccessibilityStateChangeListener(Landroid/support/v4/view/accessibility/AccessibilityManagerCompatIcs$AccessibilityStateChangeListenerBridge;)Ljava/lang/Object;
areturn
.limit locals 2
.limit stack 4
.end method

.method public removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;)Z
aload 1
aload 2
getfield android/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat/mListener Ljava/lang/Object;
invokestatic android/support/v4/view/accessibility/AccessibilityManagerCompatIcs/removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Ljava/lang/Object;)Z
ireturn
.limit locals 3
.limit stack 2
.end method
