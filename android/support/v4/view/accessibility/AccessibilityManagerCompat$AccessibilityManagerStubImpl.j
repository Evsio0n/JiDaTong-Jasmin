.bytecode 50.0
.class synchronized android/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerStubImpl
.super java/lang/Object
.implements android/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerVersionImpl
.inner class static AccessibilityManagerStubImpl inner android/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerStubImpl outer android/support/v4/view/accessibility/AccessibilityManagerCompat

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;)Z
iconst_0
ireturn
.limit locals 3
.limit stack 1
.end method

.method public getEnabledAccessibilityServiceList(Landroid/view/accessibility/AccessibilityManager;I)Ljava/util/List;
.signature "(Landroid/view/accessibility/AccessibilityManager;I)Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
invokestatic java/util/Collections/emptyList()Ljava/util/List;
areturn
.limit locals 3
.limit stack 1
.end method

.method public getInstalledAccessibilityServiceList(Landroid/view/accessibility/AccessibilityManager;)Ljava/util/List;
.signature "(Landroid/view/accessibility/AccessibilityManager;)Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
invokestatic java/util/Collections/emptyList()Ljava/util/List;
areturn
.limit locals 2
.limit stack 1
.end method

.method public isTouchExplorationEnabled(Landroid/view/accessibility/AccessibilityManager;)Z
iconst_0
ireturn
.limit locals 2
.limit stack 1
.end method

.method public newAccessiblityStateChangeListener(Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;)Ljava/lang/Object;
aconst_null
areturn
.limit locals 2
.limit stack 1
.end method

.method public removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;)Z
iconst_0
ireturn
.limit locals 3
.limit stack 1
.end method
