.bytecode 50.0
.class synchronized android/support/v4/view/accessibility/AccessibilityManagerCompatIcs
.super java/lang/Object
.inner class static final inner android/support/v4/view/accessibility/AccessibilityManagerCompatIcs$1
.inner class static abstract interface AccessibilityStateChangeListenerBridge inner android/support/v4/view/accessibility/AccessibilityManagerCompatIcs$AccessibilityStateChangeListenerBridge outer android/support/v4/view/accessibility/AccessibilityManagerCompatIcs

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Ljava/lang/Object;)Z
aload 0
aload 1
checkcast android/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener
invokevirtual android/view/accessibility/AccessibilityManager/addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method public static getEnabledAccessibilityServiceList(Landroid/view/accessibility/AccessibilityManager;I)Ljava/util/List;
.signature "(Landroid/view/accessibility/AccessibilityManager;I)Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
aload 0
iload 1
invokevirtual android/view/accessibility/AccessibilityManager/getEnabledAccessibilityServiceList(I)Ljava/util/List;
areturn
.limit locals 2
.limit stack 2
.end method

.method public static getInstalledAccessibilityServiceList(Landroid/view/accessibility/AccessibilityManager;)Ljava/util/List;
.signature "(Landroid/view/accessibility/AccessibilityManager;)Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
aload 0
invokevirtual android/view/accessibility/AccessibilityManager/getInstalledAccessibilityServiceList()Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public static isTouchExplorationEnabled(Landroid/view/accessibility/AccessibilityManager;)Z
aload 0
invokevirtual android/view/accessibility/AccessibilityManager/isTouchExplorationEnabled()Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public static newAccessibilityStateChangeListener(Landroid/support/v4/view/accessibility/AccessibilityManagerCompatIcs$AccessibilityStateChangeListenerBridge;)Ljava/lang/Object;
new android/support/v4/view/accessibility/AccessibilityManagerCompatIcs$1
dup
aload 0
invokespecial android/support/v4/view/accessibility/AccessibilityManagerCompatIcs$1/<init>(Landroid/support/v4/view/accessibility/AccessibilityManagerCompatIcs$AccessibilityStateChangeListenerBridge;)V
areturn
.limit locals 1
.limit stack 3
.end method

.method public static removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Ljava/lang/Object;)Z
aload 0
aload 1
checkcast android/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener
invokevirtual android/view/accessibility/AccessibilityManager/removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z
ireturn
.limit locals 2
.limit stack 2
.end method
