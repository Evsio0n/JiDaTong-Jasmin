.bytecode 50.0
.class synchronized android/support/v4/view/accessibility/AccessibilityRecordCompatIcsMr1
.super java/lang/Object

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getMaxScrollX(Ljava/lang/Object;)I
aload 0
checkcast android/view/accessibility/AccessibilityRecord
invokevirtual android/view/accessibility/AccessibilityRecord/getMaxScrollX()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public static getMaxScrollY(Ljava/lang/Object;)I
aload 0
checkcast android/view/accessibility/AccessibilityRecord
invokevirtual android/view/accessibility/AccessibilityRecord/getMaxScrollY()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public static setMaxScrollX(Ljava/lang/Object;I)V
aload 0
checkcast android/view/accessibility/AccessibilityRecord
iload 1
invokevirtual android/view/accessibility/AccessibilityRecord/setMaxScrollX(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public static setMaxScrollY(Ljava/lang/Object;I)V
aload 0
checkcast android/view/accessibility/AccessibilityRecord
iload 1
invokevirtual android/view/accessibility/AccessibilityRecord/setMaxScrollY(I)V
return
.limit locals 2
.limit stack 2
.end method
