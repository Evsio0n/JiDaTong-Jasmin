.bytecode 50.0
.class final synchronized android/support/v4/view/accessibility/AccessibilityNodeProviderCompatJellyBean$1
.super android/view/accessibility/AccessibilityNodeProvider
.enclosing method android/support/v4/view/accessibility/AccessibilityNodeProviderCompatJellyBean/newAccessibilityNodeProviderBridge(Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatJellyBean$AccessibilityNodeInfoBridge;)Ljava/lang/Object;
.inner class static final inner android/support/v4/view/accessibility/AccessibilityNodeProviderCompatJellyBean$1

.field final synthetic 'val$bridge' Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatJellyBean$AccessibilityNodeInfoBridge;

.method <init>(Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatJellyBean$AccessibilityNodeInfoBridge;)V
aload 0
aload 1
putfield android/support/v4/view/accessibility/AccessibilityNodeProviderCompatJellyBean$1/val$bridge Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatJellyBean$AccessibilityNodeInfoBridge;
aload 0
invokespecial android/view/accessibility/AccessibilityNodeProvider/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
aload 0
getfield android/support/v4/view/accessibility/AccessibilityNodeProviderCompatJellyBean$1/val$bridge Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatJellyBean$AccessibilityNodeInfoBridge;
iload 1
invokeinterface android/support/v4/view/accessibility/AccessibilityNodeProviderCompatJellyBean$AccessibilityNodeInfoBridge/createAccessibilityNodeInfo(I)Ljava/lang/Object; 1
checkcast android/view/accessibility/AccessibilityNodeInfo
areturn
.limit locals 2
.limit stack 2
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
.signature "(Ljava/lang/String;I)Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
aload 0
getfield android/support/v4/view/accessibility/AccessibilityNodeProviderCompatJellyBean$1/val$bridge Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatJellyBean$AccessibilityNodeInfoBridge;
aload 1
iload 2
invokeinterface android/support/v4/view/accessibility/AccessibilityNodeProviderCompatJellyBean$AccessibilityNodeInfoBridge/findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List; 2
areturn
.limit locals 3
.limit stack 3
.end method

.method public performAction(IILandroid/os/Bundle;)Z
aload 0
getfield android/support/v4/view/accessibility/AccessibilityNodeProviderCompatJellyBean$1/val$bridge Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatJellyBean$AccessibilityNodeInfoBridge;
iload 1
iload 2
aload 3
invokeinterface android/support/v4/view/accessibility/AccessibilityNodeProviderCompatJellyBean$AccessibilityNodeInfoBridge/performAction(IILandroid/os/Bundle;)Z 3
ireturn
.limit locals 4
.limit stack 4
.end method
