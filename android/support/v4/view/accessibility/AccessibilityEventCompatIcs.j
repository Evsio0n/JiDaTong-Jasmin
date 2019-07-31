.bytecode 50.0
.class synchronized android/support/v4/view/accessibility/AccessibilityEventCompatIcs
.super java/lang/Object

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static appendRecord(Landroid/view/accessibility/AccessibilityEvent;Ljava/lang/Object;)V
aload 0
aload 1
checkcast android/view/accessibility/AccessibilityRecord
invokevirtual android/view/accessibility/AccessibilityEvent/appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V
return
.limit locals 2
.limit stack 2
.end method

.method public static getRecord(Landroid/view/accessibility/AccessibilityEvent;I)Ljava/lang/Object;
aload 0
iload 1
invokevirtual android/view/accessibility/AccessibilityEvent/getRecord(I)Landroid/view/accessibility/AccessibilityRecord;
areturn
.limit locals 2
.limit stack 2
.end method

.method public static getRecordCount(Landroid/view/accessibility/AccessibilityEvent;)I
aload 0
invokevirtual android/view/accessibility/AccessibilityEvent/getRecordCount()I
ireturn
.limit locals 1
.limit stack 1
.end method
