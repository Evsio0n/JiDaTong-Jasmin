.bytecode 50.0
.class synchronized android/support/v4/view/AccessibilityDelegateCompatJellyBean
.super java/lang/Object
.inner class static final inner android/support/v4/view/AccessibilityDelegateCompatJellyBean$1
.inner class public static abstract interface AccessibilityDelegateBridgeJellyBean inner android/support/v4/view/AccessibilityDelegateCompatJellyBean$AccessibilityDelegateBridgeJellyBean outer android/support/v4/view/AccessibilityDelegateCompatJellyBean

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getAccessibilityNodeProvider(Ljava/lang/Object;Landroid/view/View;)Ljava/lang/Object;
aload 0
checkcast android/view/View$AccessibilityDelegate
aload 1
invokevirtual android/view/View$AccessibilityDelegate/getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
areturn
.limit locals 2
.limit stack 2
.end method

.method public static newAccessibilityDelegateBridge(Landroid/support/v4/view/AccessibilityDelegateCompatJellyBean$AccessibilityDelegateBridgeJellyBean;)Ljava/lang/Object;
new android/support/v4/view/AccessibilityDelegateCompatJellyBean$1
dup
aload 0
invokespecial android/support/v4/view/AccessibilityDelegateCompatJellyBean$1/<init>(Landroid/support/v4/view/AccessibilityDelegateCompatJellyBean$AccessibilityDelegateBridgeJellyBean;)V
areturn
.limit locals 1
.limit stack 3
.end method

.method public static performAccessibilityAction(Ljava/lang/Object;Landroid/view/View;ILandroid/os/Bundle;)Z
aload 0
checkcast android/view/View$AccessibilityDelegate
aload 1
iload 2
aload 3
invokevirtual android/view/View$AccessibilityDelegate/performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
ireturn
.limit locals 4
.limit stack 4
.end method
