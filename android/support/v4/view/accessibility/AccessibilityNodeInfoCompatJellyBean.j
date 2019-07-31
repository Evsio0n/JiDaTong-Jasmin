.bytecode 50.0
.class synchronized android/support/v4/view/accessibility/AccessibilityNodeInfoCompatJellyBean
.super java/lang/Object

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static addChild(Ljava/lang/Object;Landroid/view/View;I)V
aload 0
checkcast android/view/accessibility/AccessibilityNodeInfo
aload 1
iload 2
invokevirtual android/view/accessibility/AccessibilityNodeInfo/addChild(Landroid/view/View;I)V
return
.limit locals 3
.limit stack 3
.end method

.method public static findFocus(Ljava/lang/Object;I)Ljava/lang/Object;
aload 0
checkcast android/view/accessibility/AccessibilityNodeInfo
iload 1
invokevirtual android/view/accessibility/AccessibilityNodeInfo/findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
areturn
.limit locals 2
.limit stack 2
.end method

.method public static focusSearch(Ljava/lang/Object;I)Ljava/lang/Object;
aload 0
checkcast android/view/accessibility/AccessibilityNodeInfo
iload 1
invokevirtual android/view/accessibility/AccessibilityNodeInfo/focusSearch(I)Landroid/view/accessibility/AccessibilityNodeInfo;
areturn
.limit locals 2
.limit stack 2
.end method

.method public static getMovementGranularities(Ljava/lang/Object;)I
aload 0
checkcast android/view/accessibility/AccessibilityNodeInfo
invokevirtual android/view/accessibility/AccessibilityNodeInfo/getMovementGranularities()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public static isAccessibilityFocused(Ljava/lang/Object;)Z
aload 0
checkcast android/view/accessibility/AccessibilityNodeInfo
invokevirtual android/view/accessibility/AccessibilityNodeInfo/isAccessibilityFocused()Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public static isVisibleToUser(Ljava/lang/Object;)Z
aload 0
checkcast android/view/accessibility/AccessibilityNodeInfo
invokevirtual android/view/accessibility/AccessibilityNodeInfo/isVisibleToUser()Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public static obtain(Landroid/view/View;I)Ljava/lang/Object;
aload 0
iload 1
invokestatic android/view/accessibility/AccessibilityNodeInfo/obtain(Landroid/view/View;I)Landroid/view/accessibility/AccessibilityNodeInfo;
areturn
.limit locals 2
.limit stack 2
.end method

.method public static performAction(Ljava/lang/Object;ILandroid/os/Bundle;)Z
aload 0
checkcast android/view/accessibility/AccessibilityNodeInfo
iload 1
aload 2
invokevirtual android/view/accessibility/AccessibilityNodeInfo/performAction(ILandroid/os/Bundle;)Z
ireturn
.limit locals 3
.limit stack 3
.end method

.method public static setAccesibilityFocused(Ljava/lang/Object;Z)V
aload 0
checkcast android/view/accessibility/AccessibilityNodeInfo
iload 1
invokevirtual android/view/accessibility/AccessibilityNodeInfo/setAccessibilityFocused(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method public static setMovementGranularities(Ljava/lang/Object;I)V
aload 0
checkcast android/view/accessibility/AccessibilityNodeInfo
iload 1
invokevirtual android/view/accessibility/AccessibilityNodeInfo/setMovementGranularities(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public static setParent(Ljava/lang/Object;Landroid/view/View;I)V
aload 0
checkcast android/view/accessibility/AccessibilityNodeInfo
aload 1
iload 2
invokevirtual android/view/accessibility/AccessibilityNodeInfo/setParent(Landroid/view/View;I)V
return
.limit locals 3
.limit stack 3
.end method

.method public static setSource(Ljava/lang/Object;Landroid/view/View;I)V
aload 0
checkcast android/view/accessibility/AccessibilityNodeInfo
aload 1
iload 2
invokevirtual android/view/accessibility/AccessibilityNodeInfo/setSource(Landroid/view/View;I)V
return
.limit locals 3
.limit stack 3
.end method

.method public static setVisibleToUser(Ljava/lang/Object;Z)V
aload 0
checkcast android/view/accessibility/AccessibilityNodeInfo
iload 1
invokevirtual android/view/accessibility/AccessibilityNodeInfo/setVisibleToUser(Z)V
return
.limit locals 2
.limit stack 2
.end method
