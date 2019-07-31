.bytecode 50.0
.class public synchronized android/support/v4/view/accessibility/AccessibilityEventCompat
.super java/lang/Object
.inner class static AccessibilityEventIcsImpl inner android/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventIcsImpl outer android/support/v4/view/accessibility/AccessibilityEventCompat
.inner class static AccessibilityEventStubImpl inner android/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventStubImpl outer android/support/v4/view/accessibility/AccessibilityEventCompat
.inner class static abstract interface AccessibilityEventVersionImpl inner android/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl outer android/support/v4/view/accessibility/AccessibilityEventCompat

.field private static final 'IMPL' Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;

.field public static final 'TYPES_ALL_MASK' I = -1


.field public static final 'TYPE_ANNOUNCEMENT' I = 16384


.field public static final 'TYPE_GESTURE_DETECTION_END' I = 524288


.field public static final 'TYPE_GESTURE_DETECTION_START' I = 262144


.field public static final 'TYPE_TOUCH_EXPLORATION_GESTURE_END' I = 1024


.field public static final 'TYPE_TOUCH_EXPLORATION_GESTURE_START' I = 512


.field public static final 'TYPE_TOUCH_INTERACTION_END' I = 2097152


.field public static final 'TYPE_TOUCH_INTERACTION_START' I = 1048576


.field public static final 'TYPE_VIEW_ACCESSIBILITY_FOCUSED' I = 32768


.field public static final 'TYPE_VIEW_ACCESSIBILITY_FOCUS_CLEARED' I = 65536


.field public static final 'TYPE_VIEW_HOVER_ENTER' I = 128


.field public static final 'TYPE_VIEW_HOVER_EXIT' I = 256


.field public static final 'TYPE_VIEW_SCROLLED' I = 4096


.field public static final 'TYPE_VIEW_TEXT_SELECTION_CHANGED' I = 8192


.field public static final 'TYPE_VIEW_TEXT_TRAVERSED_AT_MOVEMENT_GRANULARITY' I = 131072


.field public static final 'TYPE_WINDOW_CONTENT_CHANGED' I = 2048


.method static <clinit>()V
getstatic android/os/Build$VERSION/SDK_INT I
bipush 14
if_icmplt L0
new android/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventIcsImpl
dup
invokespecial android/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventIcsImpl/<init>()V
putstatic android/support/v4/view/accessibility/AccessibilityEventCompat/IMPL Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;
return
L0:
new android/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventStubImpl
dup
invokespecial android/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventStubImpl/<init>()V
putstatic android/support/v4/view/accessibility/AccessibilityEventCompat/IMPL Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;
return
.limit locals 0
.limit stack 2
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static appendRecord(Landroid/view/accessibility/AccessibilityEvent;Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;)V
getstatic android/support/v4/view/accessibility/AccessibilityEventCompat/IMPL Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;
aload 0
aload 1
invokevirtual android/support/v4/view/accessibility/AccessibilityRecordCompat/getImpl()Ljava/lang/Object;
invokeinterface android/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl/appendRecord(Landroid/view/accessibility/AccessibilityEvent;Ljava/lang/Object;)V 2
return
.limit locals 2
.limit stack 3
.end method

.method public static getRecord(Landroid/view/accessibility/AccessibilityEvent;I)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
new android/support/v4/view/accessibility/AccessibilityRecordCompat
dup
getstatic android/support/v4/view/accessibility/AccessibilityEventCompat/IMPL Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;
aload 0
iload 1
invokeinterface android/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl/getRecord(Landroid/view/accessibility/AccessibilityEvent;I)Ljava/lang/Object; 2
invokespecial android/support/v4/view/accessibility/AccessibilityRecordCompat/<init>(Ljava/lang/Object;)V
areturn
.limit locals 2
.limit stack 5
.end method

.method public static getRecordCount(Landroid/view/accessibility/AccessibilityEvent;)I
getstatic android/support/v4/view/accessibility/AccessibilityEventCompat/IMPL Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;
aload 0
invokeinterface android/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl/getRecordCount(Landroid/view/accessibility/AccessibilityEvent;)I 1
ireturn
.limit locals 1
.limit stack 2
.end method
