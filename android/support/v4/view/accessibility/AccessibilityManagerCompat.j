.bytecode 50.0
.class public synchronized android/support/v4/view/accessibility/AccessibilityManagerCompat
.super java/lang/Object
.inner class static AccessibilityManagerIcsImpl inner android/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerIcsImpl outer android/support/v4/view/accessibility/AccessibilityManagerCompat
.inner class inner android/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerIcsImpl$1
.inner class static AccessibilityManagerStubImpl inner android/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerStubImpl outer android/support/v4/view/accessibility/AccessibilityManagerCompat
.inner class static abstract interface AccessibilityManagerVersionImpl inner android/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerVersionImpl outer android/support/v4/view/accessibility/AccessibilityManagerCompat
.inner class public static abstract AccessibilityStateChangeListenerCompat inner android/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat outer android/support/v4/view/accessibility/AccessibilityManagerCompat

.field private static final 'IMPL' Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerVersionImpl;

.method static <clinit>()V
getstatic android/os/Build$VERSION/SDK_INT I
bipush 14
if_icmplt L0
new android/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerIcsImpl
dup
invokespecial android/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerIcsImpl/<init>()V
putstatic android/support/v4/view/accessibility/AccessibilityManagerCompat/IMPL Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerVersionImpl;
return
L0:
new android/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerStubImpl
dup
invokespecial android/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerStubImpl/<init>()V
putstatic android/support/v4/view/accessibility/AccessibilityManagerCompat/IMPL Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerVersionImpl;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$000()Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerVersionImpl;
getstatic android/support/v4/view/accessibility/AccessibilityManagerCompat/IMPL Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerVersionImpl;
areturn
.limit locals 0
.limit stack 1
.end method

.method public static addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;)Z
getstatic android/support/v4/view/accessibility/AccessibilityManagerCompat/IMPL Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerVersionImpl;
aload 0
aload 1
invokeinterface android/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerVersionImpl/addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;)Z 2
ireturn
.limit locals 2
.limit stack 3
.end method

.method public static getEnabledAccessibilityServiceList(Landroid/view/accessibility/AccessibilityManager;I)Ljava/util/List;
.signature "(Landroid/view/accessibility/AccessibilityManager;I)Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
getstatic android/support/v4/view/accessibility/AccessibilityManagerCompat/IMPL Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerVersionImpl;
aload 0
iload 1
invokeinterface android/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerVersionImpl/getEnabledAccessibilityServiceList(Landroid/view/accessibility/AccessibilityManager;I)Ljava/util/List; 2
areturn
.limit locals 2
.limit stack 3
.end method

.method public static getInstalledAccessibilityServiceList(Landroid/view/accessibility/AccessibilityManager;)Ljava/util/List;
.signature "(Landroid/view/accessibility/AccessibilityManager;)Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
getstatic android/support/v4/view/accessibility/AccessibilityManagerCompat/IMPL Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerVersionImpl;
aload 0
invokeinterface android/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerVersionImpl/getInstalledAccessibilityServiceList(Landroid/view/accessibility/AccessibilityManager;)Ljava/util/List; 1
areturn
.limit locals 1
.limit stack 2
.end method

.method public static isTouchExplorationEnabled(Landroid/view/accessibility/AccessibilityManager;)Z
getstatic android/support/v4/view/accessibility/AccessibilityManagerCompat/IMPL Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerVersionImpl;
aload 0
invokeinterface android/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerVersionImpl/isTouchExplorationEnabled(Landroid/view/accessibility/AccessibilityManager;)Z 1
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;)Z
getstatic android/support/v4/view/accessibility/AccessibilityManagerCompat/IMPL Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerVersionImpl;
aload 0
aload 1
invokeinterface android/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerVersionImpl/removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;)Z 2
ireturn
.limit locals 2
.limit stack 3
.end method
