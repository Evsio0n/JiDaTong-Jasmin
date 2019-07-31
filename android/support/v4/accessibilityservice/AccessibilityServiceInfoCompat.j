.bytecode 50.0
.class public synchronized android/support/v4/accessibilityservice/AccessibilityServiceInfoCompat
.super java/lang/Object
.inner class static AccessibilityServiceInfoIcsImpl inner android/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoIcsImpl outer android/support/v4/accessibilityservice/AccessibilityServiceInfoCompat
.inner class static AccessibilityServiceInfoStubImpl inner android/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoStubImpl outer android/support/v4/accessibilityservice/AccessibilityServiceInfoCompat
.inner class static abstract interface AccessibilityServiceInfoVersionImpl inner android/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl outer android/support/v4/accessibilityservice/AccessibilityServiceInfoCompat

.field public static final 'FEEDBACK_ALL_MASK' I = -1


.field private static final 'IMPL' Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;

.method static <clinit>()V
getstatic android/os/Build$VERSION/SDK_INT I
bipush 14
if_icmplt L0
new android/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoIcsImpl
dup
invokespecial android/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoIcsImpl/<init>()V
putstatic android/support/v4/accessibilityservice/AccessibilityServiceInfoCompat/IMPL Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;
return
L0:
new android/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoStubImpl
dup
invokespecial android/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoStubImpl/<init>()V
putstatic android/support/v4/accessibilityservice/AccessibilityServiceInfoCompat/IMPL Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;
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

.method public static feedbackTypeToString(I)Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 2
aload 2
ldc "["
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L0:
iload 0
ifle L1
iconst_1
iload 0
invokestatic java/lang/Integer/numberOfTrailingZeros(I)I
ishl
istore 1
iload 0
iload 1
iconst_m1
ixor
iand
istore 0
aload 2
invokevirtual java/lang/StringBuilder/length()I
iconst_1
if_icmple L2
aload 2
ldc ", "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L2:
iload 1
lookupswitch
1 : L3
2 : L4
4 : L5
8 : L6
16 : L7
default : L8
L8:
goto L0
L3:
aload 2
ldc "FEEDBACK_SPOKEN"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L0
L5:
aload 2
ldc "FEEDBACK_AUDIBLE"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L0
L4:
aload 2
ldc "FEEDBACK_HAPTIC"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L0
L7:
aload 2
ldc "FEEDBACK_GENERIC"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L0
L6:
aload 2
ldc "FEEDBACK_VISUAL"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L0
L1:
aload 2
ldc "]"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 3
.limit stack 3
.end method

.method public static flagToString(I)Ljava/lang/String;
iload 0
tableswitch 1
L0
default : L1
L1:
aconst_null
areturn
L0:
ldc "DEFAULT"
areturn
.limit locals 1
.limit stack 1
.end method

.method public static getCanRetrieveWindowContent(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z
getstatic android/support/v4/accessibilityservice/AccessibilityServiceInfoCompat/IMPL Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;
aload 0
invokeinterface android/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl/getCanRetrieveWindowContent(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z 1
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static getDescription(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;
getstatic android/support/v4/accessibilityservice/AccessibilityServiceInfoCompat/IMPL Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;
aload 0
invokeinterface android/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl/getDescription(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String; 1
areturn
.limit locals 1
.limit stack 2
.end method

.method public static getId(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;
getstatic android/support/v4/accessibilityservice/AccessibilityServiceInfoCompat/IMPL Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;
aload 0
invokeinterface android/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl/getId(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String; 1
areturn
.limit locals 1
.limit stack 2
.end method

.method public static getResolveInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)Landroid/content/pm/ResolveInfo;
getstatic android/support/v4/accessibilityservice/AccessibilityServiceInfoCompat/IMPL Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;
aload 0
invokeinterface android/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl/getResolveInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)Landroid/content/pm/ResolveInfo; 1
areturn
.limit locals 1
.limit stack 2
.end method

.method public static getSettingsActivityName(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;
getstatic android/support/v4/accessibilityservice/AccessibilityServiceInfoCompat/IMPL Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;
aload 0
invokeinterface android/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl/getSettingsActivityName(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String; 1
areturn
.limit locals 1
.limit stack 2
.end method
