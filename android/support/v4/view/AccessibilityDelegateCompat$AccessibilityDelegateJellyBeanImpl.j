.bytecode 50.0
.class synchronized android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl
.super android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl
.inner class static AccessibilityDelegateJellyBeanImpl inner android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl outer android/support/v4/view/AccessibilityDelegateCompat
.inner class inner android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl$1

.method <init>()V
aload 0
invokespecial android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getAccessibilityNodeProvider(Ljava/lang/Object;Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
aload 1
aload 2
invokestatic android/support/v4/view/AccessibilityDelegateCompatJellyBean/getAccessibilityNodeProvider(Ljava/lang/Object;Landroid/view/View;)Ljava/lang/Object;
astore 1
aload 1
ifnull L0
new android/support/v4/view/accessibility/AccessibilityNodeProviderCompat
dup
aload 1
invokespecial android/support/v4/view/accessibility/AccessibilityNodeProviderCompat/<init>(Ljava/lang/Object;)V
areturn
L0:
aconst_null
areturn
.limit locals 3
.limit stack 3
.end method

.method public newAccessiblityDelegateBridge(Landroid/support/v4/view/AccessibilityDelegateCompat;)Ljava/lang/Object;
new android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl$1
dup
aload 0
aload 1
invokespecial android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl$1/<init>(Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl;Landroid/support/v4/view/AccessibilityDelegateCompat;)V
invokestatic android/support/v4/view/AccessibilityDelegateCompatJellyBean/newAccessibilityDelegateBridge(Landroid/support/v4/view/AccessibilityDelegateCompatJellyBean$AccessibilityDelegateBridgeJellyBean;)Ljava/lang/Object;
areturn
.limit locals 2
.limit stack 4
.end method

.method public performAccessibilityAction(Ljava/lang/Object;Landroid/view/View;ILandroid/os/Bundle;)Z
aload 1
aload 2
iload 3
aload 4
invokestatic android/support/v4/view/AccessibilityDelegateCompatJellyBean/performAccessibilityAction(Ljava/lang/Object;Landroid/view/View;ILandroid/os/Bundle;)Z
ireturn
.limit locals 5
.limit stack 4
.end method
