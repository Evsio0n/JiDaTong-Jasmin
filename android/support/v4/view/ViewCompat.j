.bytecode 50.0
.class public synchronized android/support/v4/view/ViewCompat
.super java/lang/Object
.inner class static BaseViewCompatImpl inner android/support/v4/view/ViewCompat$BaseViewCompatImpl outer android/support/v4/view/ViewCompat
.inner class static GBViewCompatImpl inner android/support/v4/view/ViewCompat$GBViewCompatImpl outer android/support/v4/view/ViewCompat
.inner class static HCViewCompatImpl inner android/support/v4/view/ViewCompat$HCViewCompatImpl outer android/support/v4/view/ViewCompat
.inner class static ICSViewCompatImpl inner android/support/v4/view/ViewCompat$ICSViewCompatImpl outer android/support/v4/view/ViewCompat
.inner class static JBViewCompatImpl inner android/support/v4/view/ViewCompat$JBViewCompatImpl outer android/support/v4/view/ViewCompat
.inner class static JbMr1ViewCompatImpl inner android/support/v4/view/ViewCompat$JbMr1ViewCompatImpl outer android/support/v4/view/ViewCompat
.inner class static abstract interface ViewCompatImpl inner android/support/v4/view/ViewCompat$ViewCompatImpl outer android/support/v4/view/ViewCompat

.field private static final 'FAKE_FRAME_TIME' J = 10L


.field static final 'IMPL' Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

.field public static final 'IMPORTANT_FOR_ACCESSIBILITY_AUTO' I = 0


.field public static final 'IMPORTANT_FOR_ACCESSIBILITY_NO' I = 2


.field public static final 'IMPORTANT_FOR_ACCESSIBILITY_YES' I = 1


.field public static final 'LAYER_TYPE_HARDWARE' I = 2


.field public static final 'LAYER_TYPE_NONE' I = 0


.field public static final 'LAYER_TYPE_SOFTWARE' I = 1


.field public static final 'OVER_SCROLL_ALWAYS' I = 0


.field public static final 'OVER_SCROLL_IF_CONTENT_SCROLLS' I = 1


.field public static final 'OVER_SCROLL_NEVER' I = 2


.method static <clinit>()V
getstatic android/os/Build$VERSION/SDK_INT I
istore 0
iload 0
bipush 17
if_icmplt L0
new android/support/v4/view/ViewCompat$JbMr1ViewCompatImpl
dup
invokespecial android/support/v4/view/ViewCompat$JbMr1ViewCompatImpl/<init>()V
putstatic android/support/v4/view/ViewCompat/IMPL Landroid/support/v4/view/ViewCompat$ViewCompatImpl;
return
L0:
iload 0
bipush 16
if_icmplt L1
new android/support/v4/view/ViewCompat$JBViewCompatImpl
dup
invokespecial android/support/v4/view/ViewCompat$JBViewCompatImpl/<init>()V
putstatic android/support/v4/view/ViewCompat/IMPL Landroid/support/v4/view/ViewCompat$ViewCompatImpl;
return
L1:
iload 0
bipush 14
if_icmplt L2
new android/support/v4/view/ViewCompat$ICSViewCompatImpl
dup
invokespecial android/support/v4/view/ViewCompat$ICSViewCompatImpl/<init>()V
putstatic android/support/v4/view/ViewCompat/IMPL Landroid/support/v4/view/ViewCompat$ViewCompatImpl;
return
L2:
iload 0
bipush 11
if_icmplt L3
new android/support/v4/view/ViewCompat$HCViewCompatImpl
dup
invokespecial android/support/v4/view/ViewCompat$HCViewCompatImpl/<init>()V
putstatic android/support/v4/view/ViewCompat/IMPL Landroid/support/v4/view/ViewCompat$ViewCompatImpl;
return
L3:
iload 0
bipush 9
if_icmplt L4
new android/support/v4/view/ViewCompat$GBViewCompatImpl
dup
invokespecial android/support/v4/view/ViewCompat$GBViewCompatImpl/<init>()V
putstatic android/support/v4/view/ViewCompat/IMPL Landroid/support/v4/view/ViewCompat$ViewCompatImpl;
return
L4:
new android/support/v4/view/ViewCompat$BaseViewCompatImpl
dup
invokespecial android/support/v4/view/ViewCompat$BaseViewCompatImpl/<init>()V
putstatic android/support/v4/view/ViewCompat/IMPL Landroid/support/v4/view/ViewCompat$ViewCompatImpl;
return
.limit locals 1
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static canScrollHorizontally(Landroid/view/View;I)Z
getstatic android/support/v4/view/ViewCompat/IMPL Landroid/support/v4/view/ViewCompat$ViewCompatImpl;
aload 0
iload 1
invokeinterface android/support/v4/view/ViewCompat$ViewCompatImpl/canScrollHorizontally(Landroid/view/View;I)Z 2
ireturn
.limit locals 2
.limit stack 3
.end method

.method public static canScrollVertically(Landroid/view/View;I)Z
getstatic android/support/v4/view/ViewCompat/IMPL Landroid/support/v4/view/ViewCompat$ViewCompatImpl;
aload 0
iload 1
invokeinterface android/support/v4/view/ViewCompat$ViewCompatImpl/canScrollVertically(Landroid/view/View;I)Z 2
ireturn
.limit locals 2
.limit stack 3
.end method

.method public static getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
getstatic android/support/v4/view/ViewCompat/IMPL Landroid/support/v4/view/ViewCompat$ViewCompatImpl;
aload 0
invokeinterface android/support/v4/view/ViewCompat$ViewCompatImpl/getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat; 1
areturn
.limit locals 1
.limit stack 2
.end method

.method public static getImportantForAccessibility(Landroid/view/View;)I
getstatic android/support/v4/view/ViewCompat/IMPL Landroid/support/v4/view/ViewCompat$ViewCompatImpl;
aload 0
invokeinterface android/support/v4/view/ViewCompat$ViewCompatImpl/getImportantForAccessibility(Landroid/view/View;)I 1
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static getLabelFor(Landroid/view/View;)I
getstatic android/support/v4/view/ViewCompat/IMPL Landroid/support/v4/view/ViewCompat$ViewCompatImpl;
aload 0
invokeinterface android/support/v4/view/ViewCompat$ViewCompatImpl/getLabelFor(Landroid/view/View;)I 1
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static getLayerType(Landroid/view/View;)I
getstatic android/support/v4/view/ViewCompat/IMPL Landroid/support/v4/view/ViewCompat$ViewCompatImpl;
aload 0
invokeinterface android/support/v4/view/ViewCompat$ViewCompatImpl/getLayerType(Landroid/view/View;)I 1
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static getOverScrollMode(Landroid/view/View;)I
getstatic android/support/v4/view/ViewCompat/IMPL Landroid/support/v4/view/ViewCompat$ViewCompatImpl;
aload 0
invokeinterface android/support/v4/view/ViewCompat$ViewCompatImpl/getOverScrollMode(Landroid/view/View;)I 1
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static hasTransientState(Landroid/view/View;)Z
getstatic android/support/v4/view/ViewCompat/IMPL Landroid/support/v4/view/ViewCompat$ViewCompatImpl;
aload 0
invokeinterface android/support/v4/view/ViewCompat$ViewCompatImpl/hasTransientState(Landroid/view/View;)Z 1
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
getstatic android/support/v4/view/ViewCompat/IMPL Landroid/support/v4/view/ViewCompat$ViewCompatImpl;
aload 0
aload 1
invokeinterface android/support/v4/view/ViewCompat$ViewCompatImpl/onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V 2
return
.limit locals 2
.limit stack 3
.end method

.method public static onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
getstatic android/support/v4/view/ViewCompat/IMPL Landroid/support/v4/view/ViewCompat$ViewCompatImpl;
aload 0
aload 1
invokeinterface android/support/v4/view/ViewCompat$ViewCompatImpl/onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V 2
return
.limit locals 2
.limit stack 3
.end method

.method public static onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
getstatic android/support/v4/view/ViewCompat/IMPL Landroid/support/v4/view/ViewCompat$ViewCompatImpl;
aload 0
aload 1
invokeinterface android/support/v4/view/ViewCompat$ViewCompatImpl/onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V 2
return
.limit locals 2
.limit stack 3
.end method

.method public static performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
getstatic android/support/v4/view/ViewCompat/IMPL Landroid/support/v4/view/ViewCompat$ViewCompatImpl;
aload 0
iload 1
aload 2
invokeinterface android/support/v4/view/ViewCompat$ViewCompatImpl/performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z 3
ireturn
.limit locals 3
.limit stack 4
.end method

.method public static postInvalidateOnAnimation(Landroid/view/View;)V
getstatic android/support/v4/view/ViewCompat/IMPL Landroid/support/v4/view/ViewCompat$ViewCompatImpl;
aload 0
invokeinterface android/support/v4/view/ViewCompat$ViewCompatImpl/postInvalidateOnAnimation(Landroid/view/View;)V 1
return
.limit locals 1
.limit stack 2
.end method

.method public static postInvalidateOnAnimation(Landroid/view/View;IIII)V
getstatic android/support/v4/view/ViewCompat/IMPL Landroid/support/v4/view/ViewCompat$ViewCompatImpl;
aload 0
iload 1
iload 2
iload 3
iload 4
invokeinterface android/support/v4/view/ViewCompat$ViewCompatImpl/postInvalidateOnAnimation(Landroid/view/View;IIII)V 5
return
.limit locals 5
.limit stack 6
.end method

.method public static postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
getstatic android/support/v4/view/ViewCompat/IMPL Landroid/support/v4/view/ViewCompat$ViewCompatImpl;
aload 0
aload 1
invokeinterface android/support/v4/view/ViewCompat$ViewCompatImpl/postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V 2
return
.limit locals 2
.limit stack 3
.end method

.method public static postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V
getstatic android/support/v4/view/ViewCompat/IMPL Landroid/support/v4/view/ViewCompat$ViewCompatImpl;
aload 0
aload 1
lload 2
invokeinterface android/support/v4/view/ViewCompat$ViewCompatImpl/postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V 4
return
.limit locals 4
.limit stack 5
.end method

.method public static setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V
getstatic android/support/v4/view/ViewCompat/IMPL Landroid/support/v4/view/ViewCompat$ViewCompatImpl;
aload 0
aload 1
invokeinterface android/support/v4/view/ViewCompat$ViewCompatImpl/setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V 2
return
.limit locals 2
.limit stack 3
.end method

.method public static setHasTransientState(Landroid/view/View;Z)V
getstatic android/support/v4/view/ViewCompat/IMPL Landroid/support/v4/view/ViewCompat$ViewCompatImpl;
aload 0
iload 1
invokeinterface android/support/v4/view/ViewCompat$ViewCompatImpl/setHasTransientState(Landroid/view/View;Z)V 2
return
.limit locals 2
.limit stack 3
.end method

.method public static setImportantForAccessibility(Landroid/view/View;I)V
getstatic android/support/v4/view/ViewCompat/IMPL Landroid/support/v4/view/ViewCompat$ViewCompatImpl;
aload 0
iload 1
invokeinterface android/support/v4/view/ViewCompat$ViewCompatImpl/setImportantForAccessibility(Landroid/view/View;I)V 2
return
.limit locals 2
.limit stack 3
.end method

.method public static setLabelFor(Landroid/view/View;I)V
getstatic android/support/v4/view/ViewCompat/IMPL Landroid/support/v4/view/ViewCompat$ViewCompatImpl;
aload 0
iload 1
invokeinterface android/support/v4/view/ViewCompat$ViewCompatImpl/setLabelFor(Landroid/view/View;I)V 2
return
.limit locals 2
.limit stack 3
.end method

.method public static setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V
getstatic android/support/v4/view/ViewCompat/IMPL Landroid/support/v4/view/ViewCompat$ViewCompatImpl;
aload 0
iload 1
aload 2
invokeinterface android/support/v4/view/ViewCompat$ViewCompatImpl/setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V 3
return
.limit locals 3
.limit stack 4
.end method

.method public static setOverScrollMode(Landroid/view/View;I)V
getstatic android/support/v4/view/ViewCompat/IMPL Landroid/support/v4/view/ViewCompat$ViewCompatImpl;
aload 0
iload 1
invokeinterface android/support/v4/view/ViewCompat$ViewCompatImpl/setOverScrollMode(Landroid/view/View;I)V 2
return
.limit locals 2
.limit stack 3
.end method
