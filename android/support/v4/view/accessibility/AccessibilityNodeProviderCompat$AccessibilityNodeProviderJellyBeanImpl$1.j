.bytecode 50.0
.class synchronized android/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderJellyBeanImpl$1
.super java/lang/Object
.implements android/support/v4/view/accessibility/AccessibilityNodeProviderCompatJellyBean$AccessibilityNodeInfoBridge
.enclosing method android/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderJellyBeanImpl/newAccessibilityNodeProviderBridge(Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;)Ljava/lang/Object;
.inner class static AccessibilityNodeProviderJellyBeanImpl inner android/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderJellyBeanImpl outer android/support/v4/view/accessibility/AccessibilityNodeProviderCompat
.inner class inner android/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderJellyBeanImpl$1

.field final synthetic 'this$0' Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderJellyBeanImpl;

.field final synthetic 'val$compat' Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;

.method <init>(Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderJellyBeanImpl;Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;)V
aload 0
aload 1
putfield android/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderJellyBeanImpl$1/this$0 Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderJellyBeanImpl;
aload 0
aload 2
putfield android/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderJellyBeanImpl$1/val$compat Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public createAccessibilityNodeInfo(I)Ljava/lang/Object;
aload 0
getfield android/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderJellyBeanImpl$1/val$compat Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
iload 1
invokevirtual android/support/v4/view/accessibility/AccessibilityNodeProviderCompat/createAccessibilityNodeInfo(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
astore 2
aload 2
ifnonnull L0
aconst_null
areturn
L0:
aload 2
invokevirtual android/support/v4/view/accessibility/AccessibilityNodeInfoCompat/getInfo()Ljava/lang/Object;
areturn
.limit locals 3
.limit stack 2
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
.signature "(Ljava/lang/String;I)Ljava/util/List<Ljava/lang/Object;>;"
aload 0
getfield android/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderJellyBeanImpl$1/val$compat Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
aload 1
iload 2
invokevirtual android/support/v4/view/accessibility/AccessibilityNodeProviderCompat/findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
astore 1
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
aload 1
invokeinterface java/util/List/size()I 0
istore 3
iconst_0
istore 2
L0:
iload 2
iload 3
if_icmpge L1
aload 4
aload 1
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast android/support/v4/view/accessibility/AccessibilityNodeInfoCompat
invokevirtual android/support/v4/view/accessibility/AccessibilityNodeInfoCompat/getInfo()Ljava/lang/Object;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 2
iconst_1
iadd
istore 2
goto L0
L1:
aload 4
areturn
.limit locals 5
.limit stack 3
.end method

.method public performAction(IILandroid/os/Bundle;)Z
aload 0
getfield android/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderJellyBeanImpl$1/val$compat Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
iload 1
iload 2
aload 3
invokevirtual android/support/v4/view/accessibility/AccessibilityNodeProviderCompat/performAction(IILandroid/os/Bundle;)Z
ireturn
.limit locals 4
.limit stack 4
.end method
