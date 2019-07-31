.bytecode 50.0
.class synchronized android/support/v4/view/ViewCompatICS
.super java/lang/Object

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static canScrollHorizontally(Landroid/view/View;I)Z
aload 0
iload 1
invokevirtual android/view/View/canScrollHorizontally(I)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method public static canScrollVertically(Landroid/view/View;I)Z
aload 0
iload 1
invokevirtual android/view/View/canScrollVertically(I)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method public static onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
aload 0
aload 1
invokevirtual android/view/View/onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
return
.limit locals 2
.limit stack 2
.end method

.method public static onInitializeAccessibilityNodeInfo(Landroid/view/View;Ljava/lang/Object;)V
aload 0
aload 1
checkcast android/view/accessibility/AccessibilityNodeInfo
invokevirtual android/view/View/onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
return
.limit locals 2
.limit stack 2
.end method

.method public static onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
aload 0
aload 1
invokevirtual android/view/View/onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
return
.limit locals 2
.limit stack 2
.end method

.method public static setAccessibilityDelegate(Landroid/view/View;Ljava/lang/Object;)V
aload 0
aload 1
checkcast android/view/View$AccessibilityDelegate
invokevirtual android/view/View/setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V
return
.limit locals 2
.limit stack 2
.end method
