.bytecode 50.0
.class public final synchronized com/tencent/mm/sdk/b/c
.super java/lang/Object

.field private static final 'GMT' Ljava/util/TimeZone;

.field private static final 'q' [J

.field private static final 'r' [C

.field private static final 's' [Ljava/lang/String;

.method static <clinit>()V
iconst_4
newarray long
dup
iconst_0
ldc2_w 300L
lastore
dup
iconst_1
ldc2_w 200L
lastore
dup
iconst_2
ldc2_w 300L
lastore
dup
iconst_3
ldc2_w 200L
lastore
putstatic com/tencent/mm/sdk/b/c/q [J
ldc "GMT"
invokestatic java/util/TimeZone/getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
putstatic com/tencent/mm/sdk/b/c/GMT Ljava/util/TimeZone;
iconst_5
newarray char
dup
iconst_0
ldc_w 60
castore
dup
iconst_1
ldc_w 62
castore
dup
iconst_2
ldc_w 34
castore
dup
iconst_3
ldc_w 39
castore
dup
iconst_4
ldc_w 38
castore
putstatic com/tencent/mm/sdk/b/c/r [C
iconst_5
anewarray java/lang/String
dup
iconst_0
ldc "&lt;"
aastore
dup
iconst_1
ldc "&gt;"
aastore
dup
iconst_2
ldc "&quot;"
aastore
dup
iconst_3
ldc "&apos;"
aastore
dup
iconst_4
ldc "&amp;"
aastore
putstatic com/tencent/mm/sdk/b/c/s [Ljava/lang/String;
return
.limit locals 0
.limit stack 5
.end method

.method public static a(Ljava/lang/String;)Z
aload 0
ifnull L0
aload 0
invokevirtual java/lang/String/length()I
ifgt L1
L0:
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method
