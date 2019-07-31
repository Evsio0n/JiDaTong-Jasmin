.bytecode 50.0
.class public synchronized com/nd/rj/common/login/jobnumber/HeartPasswordTransformationMethod
.super android/text/method/PasswordTransformationMethod
.inner class private static PasswordCharSequence inner com/nd/rj/common/login/jobnumber/HeartPasswordTransformationMethod$PasswordCharSequence outer com/nd/rj/common/login/jobnumber/HeartPasswordTransformationMethod
.inner class private static ViewReference inner com/nd/rj/common/login/jobnumber/HeartPasswordTransformationMethod$ViewReference outer com/nd/rj/common/login/jobnumber/HeartPasswordTransformationMethod
.inner class private static Visible inner com/nd/rj/common/login/jobnumber/HeartPasswordTransformationMethod$Visible outer com/nd/rj/common/login/jobnumber/HeartPasswordTransformationMethod

.field private static final 'ACTIVE' Ljava/lang/Object;

.field private static final 'DOT' C = 9829


.method static <clinit>()V
new android/text/NoCopySpan$Concrete
dup
invokespecial android/text/NoCopySpan$Concrete/<init>()V
putstatic com/nd/rj/common/login/jobnumber/HeartPasswordTransformationMethod/ACTIVE Ljava/lang/Object;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial android/text/method/PasswordTransformationMethod/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$000()Ljava/lang/Object;
getstatic com/nd/rj/common/login/jobnumber/HeartPasswordTransformationMethod/ACTIVE Ljava/lang/Object;
areturn
.limit locals 0
.limit stack 1
.end method

.method public static getDefaultShowPassword()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 1
iconst_0
istore 0
L0:
iload 0
bipush 10
if_icmpge L1
aload 1
sipush 9829
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
iload 0
iconst_1
iadd
istore 0
goto L0
L1:
aload 1
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 2
.limit stack 2
.end method

.method private static removeVisibleSpans(Landroid/text/Spannable;)V
aload 0
iconst_0
aload 0
invokeinterface android/text/Spannable/length()I 0
ldc com/nd/rj/common/login/jobnumber/HeartPasswordTransformationMethod$Visible
invokeinterface android/text/Spannable/getSpans(IILjava/lang/Class;)[Ljava/lang/Object; 3
checkcast [Lcom/nd/rj/common/login/jobnumber/HeartPasswordTransformationMethod$Visible;
astore 2
iconst_0
istore 1
L0:
iload 1
aload 2
arraylength
if_icmpge L1
aload 0
aload 2
iload 1
aaload
invokeinterface android/text/Spannable/removeSpan(Ljava/lang/Object;)V 1
iload 1
iconst_1
iadd
istore 1
goto L0
L1:
return
.limit locals 3
.limit stack 4
.end method

.method public getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
aload 1
instanceof android/text/Spannable
ifeq L0
aload 1
checkcast android/text/Spannable
astore 4
aload 4
iconst_0
aload 4
invokeinterface android/text/Spannable/length()I 0
ldc com/nd/rj/common/login/jobnumber/HeartPasswordTransformationMethod$ViewReference
invokeinterface android/text/Spannable/getSpans(IILjava/lang/Class;)[Ljava/lang/Object; 3
checkcast [Lcom/nd/rj/common/login/jobnumber/HeartPasswordTransformationMethod$ViewReference;
astore 5
iconst_0
istore 3
L1:
iload 3
aload 5
arraylength
if_icmpge L2
aload 4
aload 5
iload 3
aaload
invokeinterface android/text/Spannable/removeSpan(Ljava/lang/Object;)V 1
iload 3
iconst_1
iadd
istore 3
goto L1
L2:
aload 4
invokestatic com/nd/rj/common/login/jobnumber/HeartPasswordTransformationMethod/removeVisibleSpans(Landroid/text/Spannable;)V
aload 4
new com/nd/rj/common/login/jobnumber/HeartPasswordTransformationMethod$ViewReference
dup
aload 2
invokespecial com/nd/rj/common/login/jobnumber/HeartPasswordTransformationMethod$ViewReference/<init>(Landroid/view/View;)V
iconst_0
iconst_0
bipush 34
invokeinterface android/text/Spannable/setSpan(Ljava/lang/Object;III)V 4
L0:
new com/nd/rj/common/login/jobnumber/HeartPasswordTransformationMethod$PasswordCharSequence
dup
aload 1
invokespecial com/nd/rj/common/login/jobnumber/HeartPasswordTransformationMethod$PasswordCharSequence/<init>(Ljava/lang/CharSequence;)V
areturn
.limit locals 6
.limit stack 5
.end method
