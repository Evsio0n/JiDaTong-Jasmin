.bytecode 50.0
.class public synchronized android/support/v4/view/AccessibilityDelegateCompat
.super java/lang/Object
.inner class static AccessibilityDelegateIcsImpl inner android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl outer android/support/v4/view/AccessibilityDelegateCompat
.inner class inner android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl$1
.inner class static abstract interface AccessibilityDelegateImpl inner android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl outer android/support/v4/view/AccessibilityDelegateCompat
.inner class static AccessibilityDelegateJellyBeanImpl inner android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl outer android/support/v4/view/AccessibilityDelegateCompat
.inner class inner android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl$1
.inner class static AccessibilityDelegateStubImpl inner android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateStubImpl outer android/support/v4/view/AccessibilityDelegateCompat

.field private static final 'DEFAULT_DELEGATE' Ljava/lang/Object;

.field private static final 'IMPL' Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;

.field final 'mBridge' Ljava/lang/Object;

.method static <clinit>()V
getstatic android/os/Build$VERSION/SDK_INT I
bipush 16
if_icmplt L0
new android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl
dup
invokespecial android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl/<init>()V
putstatic android/support/v4/view/AccessibilityDelegateCompat/IMPL Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;
L1:
getstatic android/support/v4/view/AccessibilityDelegateCompat/IMPL Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;
invokeinterface android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl/newAccessiblityDelegateDefaultImpl()Ljava/lang/Object; 0
putstatic android/support/v4/view/AccessibilityDelegateCompat/DEFAULT_DELEGATE Ljava/lang/Object;
return
L0:
getstatic android/os/Build$VERSION/SDK_INT I
bipush 14
if_icmplt L2
new android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl
dup
invokespecial android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl/<init>()V
putstatic android/support/v4/view/AccessibilityDelegateCompat/IMPL Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;
goto L1
L2:
new android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateStubImpl
dup
invokespecial android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateStubImpl/<init>()V
putstatic android/support/v4/view/AccessibilityDelegateCompat/IMPL Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;
goto L1
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
getstatic android/support/v4/view/AccessibilityDelegateCompat/IMPL Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;
aload 0
invokeinterface android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl/newAccessiblityDelegateBridge(Landroid/support/v4/view/AccessibilityDelegateCompat;)Ljava/lang/Object; 1
putfield android/support/v4/view/AccessibilityDelegateCompat/mBridge Ljava/lang/Object;
return
.limit locals 1
.limit stack 3
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
getstatic android/support/v4/view/AccessibilityDelegateCompat/IMPL Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;
getstatic android/support/v4/view/AccessibilityDelegateCompat/DEFAULT_DELEGATE Ljava/lang/Object;
aload 1
aload 2
invokeinterface android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl/dispatchPopulateAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z 3
ireturn
.limit locals 3
.limit stack 4
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
getstatic android/support/v4/view/AccessibilityDelegateCompat/IMPL Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;
getstatic android/support/v4/view/AccessibilityDelegateCompat/DEFAULT_DELEGATE Ljava/lang/Object;
aload 1
invokeinterface android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl/getAccessibilityNodeProvider(Ljava/lang/Object;Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat; 2
areturn
.limit locals 2
.limit stack 3
.end method

.method getBridge()Ljava/lang/Object;
aload 0
getfield android/support/v4/view/AccessibilityDelegateCompat/mBridge Ljava/lang/Object;
areturn
.limit locals 1
.limit stack 1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
getstatic android/support/v4/view/AccessibilityDelegateCompat/IMPL Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;
getstatic android/support/v4/view/AccessibilityDelegateCompat/DEFAULT_DELEGATE Ljava/lang/Object;
aload 1
aload 2
invokeinterface android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl/onInitializeAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V 3
return
.limit locals 3
.limit stack 4
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
getstatic android/support/v4/view/AccessibilityDelegateCompat/IMPL Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;
getstatic android/support/v4/view/AccessibilityDelegateCompat/DEFAULT_DELEGATE Ljava/lang/Object;
aload 1
aload 2
invokeinterface android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl/onInitializeAccessibilityNodeInfo(Ljava/lang/Object;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V 3
return
.limit locals 3
.limit stack 4
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
getstatic android/support/v4/view/AccessibilityDelegateCompat/IMPL Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;
getstatic android/support/v4/view/AccessibilityDelegateCompat/DEFAULT_DELEGATE Ljava/lang/Object;
aload 1
aload 2
invokeinterface android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl/onPopulateAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V 3
return
.limit locals 3
.limit stack 4
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
getstatic android/support/v4/view/AccessibilityDelegateCompat/IMPL Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;
getstatic android/support/v4/view/AccessibilityDelegateCompat/DEFAULT_DELEGATE Ljava/lang/Object;
aload 1
aload 2
aload 3
invokeinterface android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl/onRequestSendAccessibilityEvent(Ljava/lang/Object;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z 4
ireturn
.limit locals 4
.limit stack 5
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
getstatic android/support/v4/view/AccessibilityDelegateCompat/IMPL Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;
getstatic android/support/v4/view/AccessibilityDelegateCompat/DEFAULT_DELEGATE Ljava/lang/Object;
aload 1
iload 2
aload 3
invokeinterface android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl/performAccessibilityAction(Ljava/lang/Object;Landroid/view/View;ILandroid/os/Bundle;)Z 4
ireturn
.limit locals 4
.limit stack 5
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
getstatic android/support/v4/view/AccessibilityDelegateCompat/IMPL Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;
getstatic android/support/v4/view/AccessibilityDelegateCompat/DEFAULT_DELEGATE Ljava/lang/Object;
aload 1
iload 2
invokeinterface android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl/sendAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;I)V 3
return
.limit locals 3
.limit stack 4
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
getstatic android/support/v4/view/AccessibilityDelegateCompat/IMPL Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;
getstatic android/support/v4/view/AccessibilityDelegateCompat/DEFAULT_DELEGATE Ljava/lang/Object;
aload 1
aload 2
invokeinterface android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl/sendAccessibilityEventUnchecked(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V 3
return
.limit locals 3
.limit stack 4
.end method
