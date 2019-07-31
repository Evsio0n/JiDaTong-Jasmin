.bytecode 50.0
.class final synchronized com/flurry/android/r
.super java/lang/Object

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method static a(Landroid/content/Context;I)I
aload 0
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getDisplayMetrics()Landroid/util/DisplayMetrics;
getfield android/util/DisplayMetrics/density F
iload 1
i2f
fmul
ldc_w 0.5F
fadd
f2i
ireturn
.limit locals 2
.limit stack 2
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
.catch java/io/UnsupportedEncodingException from L0 to L1 using L2
L0:
aload 0
ldc "UTF-8"
invokestatic java/net/URLEncoder/encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 1
L1:
aload 1
areturn
L2:
astore 1
ldc "FlurryAgent"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Cannot encode '"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/flurry/android/ai/d(Ljava/lang/String;Ljava/lang/String;)I
pop
ldc ""
areturn
.limit locals 2
.limit stack 3
.end method

.method static a(Ljava/lang/String;I)Ljava/lang/String;
aload 0
ifnonnull L0
ldc ""
astore 2
L1:
aload 2
areturn
L0:
aload 0
astore 2
aload 0
invokevirtual java/lang/String/length()I
iload 1
if_icmple L1
aload 0
iconst_0
iload 1
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
areturn
.limit locals 3
.limit stack 3
.end method

.method static a(Landroid/content/Context;Landroid/widget/ImageView;II)V
aload 1
iconst_1
invokevirtual android/widget/ImageView/setAdjustViewBounds(Z)V
aload 1
aload 0
iload 2
invokestatic com/flurry/android/r/a(Landroid/content/Context;I)I
invokevirtual android/widget/ImageView/setMinimumWidth(I)V
aload 1
aload 0
iload 3
invokestatic com/flurry/android/r/a(Landroid/content/Context;I)I
invokevirtual android/widget/ImageView/setMinimumHeight(I)V
aload 1
aload 0
iload 2
invokestatic com/flurry/android/r/a(Landroid/content/Context;I)I
invokevirtual android/widget/ImageView/setMaxWidth(I)V
aload 1
aload 0
iload 3
invokestatic com/flurry/android/r/a(Landroid/content/Context;I)I
invokevirtual android/widget/ImageView/setMaxHeight(I)V
return
.limit locals 4
.limit stack 3
.end method

.method static a(Ljava/io/Closeable;)V
.catch java/lang/Throwable from L0 to L1 using L2
aload 0
ifnull L1
L0:
aload 0
invokeinterface java/io/Closeable/close()V 0
L1:
return
L2:
astore 0
return
.limit locals 1
.limit stack 1
.end method

.method static b(Ljava/lang/String;)[B
.catch java/security/NoSuchAlgorithmException from L0 to L1 using L2
L0:
ldc "SHA-1"
invokestatic java/security/MessageDigest/getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
astore 1
aload 1
aload 0
invokevirtual java/lang/String/getBytes()[B
iconst_0
aload 0
invokevirtual java/lang/String/length()I
invokevirtual java/security/MessageDigest/update([BII)V
aload 1
invokevirtual java/security/MessageDigest/digest()[B
astore 0
L1:
aload 0
areturn
L2:
astore 0
ldc "FlurryAgent"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Unsupported SHA1: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/security/NoSuchAlgorithmException/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/flurry/android/ai/b(Ljava/lang/String;Ljava/lang/String;)I
pop
aconst_null
areturn
.limit locals 2
.limit stack 4
.end method
