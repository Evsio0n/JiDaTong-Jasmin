.bytecode 50.0
.class public synchronized android/support/v4/view/accessibility/AccessibilityNodeProviderCompat
.super java/lang/Object
.inner class static abstract interface AccessibilityNodeProviderImpl inner android/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderImpl outer android/support/v4/view/accessibility/AccessibilityNodeProviderCompat
.inner class static AccessibilityNodeProviderJellyBeanImpl inner android/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderJellyBeanImpl outer android/support/v4/view/accessibility/AccessibilityNodeProviderCompat
.inner class inner android/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderJellyBeanImpl$1
.inner class static AccessibilityNodeProviderStubImpl inner android/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderStubImpl outer android/support/v4/view/accessibility/AccessibilityNodeProviderCompat

.field private static final 'IMPL' Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderImpl;

.field private final 'mProvider' Ljava/lang/Object;

.method static <clinit>()V
getstatic android/os/Build$VERSION/SDK_INT I
bipush 16
if_icmplt L0
new android/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderJellyBeanImpl
dup
invokespecial android/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderJellyBeanImpl/<init>()V
putstatic android/support/v4/view/accessibility/AccessibilityNodeProviderCompat/IMPL Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderImpl;
return
L0:
new android/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderStubImpl
dup
invokespecial android/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderStubImpl/<init>()V
putstatic android/support/v4/view/accessibility/AccessibilityNodeProviderCompat/IMPL Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderImpl;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
getstatic android/support/v4/view/accessibility/AccessibilityNodeProviderCompat/IMPL Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderImpl;
aload 0
invokeinterface android/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderImpl/newAccessibilityNodeProviderBridge(Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;)Ljava/lang/Object; 1
putfield android/support/v4/view/accessibility/AccessibilityNodeProviderCompat/mProvider Ljava/lang/Object;
return
.limit locals 1
.limit stack 3
.end method

.method public <init>(Ljava/lang/Object;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield android/support/v4/view/accessibility/AccessibilityNodeProviderCompat/mProvider Ljava/lang/Object;
return
.limit locals 2
.limit stack 2
.end method

.method public createAccessibilityNodeInfo(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
aconst_null
areturn
.limit locals 2
.limit stack 1
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
.signature "(Ljava/lang/String;I)Ljava/util/List<Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;>;"
aconst_null
areturn
.limit locals 3
.limit stack 1
.end method

.method public getProvider()Ljava/lang/Object;
aload 0
getfield android/support/v4/view/accessibility/AccessibilityNodeProviderCompat/mProvider Ljava/lang/Object;
areturn
.limit locals 1
.limit stack 1
.end method

.method public performAction(IILandroid/os/Bundle;)Z
iconst_0
ireturn
.limit locals 4
.limit stack 1
.end method
