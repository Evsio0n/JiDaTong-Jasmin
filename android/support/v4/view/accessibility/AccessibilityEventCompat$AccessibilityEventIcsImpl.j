.bytecode 50.0
.class synchronized android/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventIcsImpl
.super android/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventStubImpl
.inner class static AccessibilityEventIcsImpl inner android/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventIcsImpl outer android/support/v4/view/accessibility/AccessibilityEventCompat

.method <init>()V
aload 0
invokespecial android/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventStubImpl/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public appendRecord(Landroid/view/accessibility/AccessibilityEvent;Ljava/lang/Object;)V
aload 1
aload 2
invokestatic android/support/v4/view/accessibility/AccessibilityEventCompatIcs/appendRecord(Landroid/view/accessibility/AccessibilityEvent;Ljava/lang/Object;)V
return
.limit locals 3
.limit stack 2
.end method

.method public getRecord(Landroid/view/accessibility/AccessibilityEvent;I)Ljava/lang/Object;
aload 1
iload 2
invokestatic android/support/v4/view/accessibility/AccessibilityEventCompatIcs/getRecord(Landroid/view/accessibility/AccessibilityEvent;I)Ljava/lang/Object;
areturn
.limit locals 3
.limit stack 2
.end method

.method public getRecordCount(Landroid/view/accessibility/AccessibilityEvent;)I
aload 1
invokestatic android/support/v4/view/accessibility/AccessibilityEventCompatIcs/getRecordCount(Landroid/view/accessibility/AccessibilityEvent;)I
ireturn
.limit locals 2
.limit stack 1
.end method
