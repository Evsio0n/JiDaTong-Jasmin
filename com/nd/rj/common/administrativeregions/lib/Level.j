.bytecode 50.0
.class public final synchronized enum com/nd/rj/common/administrativeregions/lib/Level
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/rj/common/administrativeregions/lib/Level;>;"

.field private static synthetic '$SWITCH_TABLE$com$nd$rj$common$administrativeregions$lib$Level' [I

.field private static final synthetic 'ENUM$VALUES' [Lcom/nd/rj/common/administrativeregions/lib/Level;

.field public static final enum 'INVALID' Lcom/nd/rj/common/administrativeregions/lib/Level;

.field public static final enum 'LEVEL_1' Lcom/nd/rj/common/administrativeregions/lib/Level;

.field public static final enum 'LEVEL_2' Lcom/nd/rj/common/administrativeregions/lib/Level;

.field public static final enum 'LEVEL_3' Lcom/nd/rj/common/administrativeregions/lib/Level;

.field private 'mLevel' I

.method static synthetic $SWITCH_TABLE$com$nd$rj$common$administrativeregions$lib$Level()[I
.catch java/lang/NoSuchFieldError from L0 to L1 using L2
.catch java/lang/NoSuchFieldError from L1 to L3 using L4
.catch java/lang/NoSuchFieldError from L3 to L5 using L6
.catch java/lang/NoSuchFieldError from L5 to L7 using L8
getstatic com/nd/rj/common/administrativeregions/lib/Level/$SWITCH_TABLE$com$nd$rj$common$administrativeregions$lib$Level [I
astore 0
aload 0
ifnull L9
aload 0
areturn
L9:
invokestatic com/nd/rj/common/administrativeregions/lib/Level/values()[Lcom/nd/rj/common/administrativeregions/lib/Level;
arraylength
newarray int
astore 0
L0:
aload 0
getstatic com/nd/rj/common/administrativeregions/lib/Level/INVALID Lcom/nd/rj/common/administrativeregions/lib/Level;
invokevirtual com/nd/rj/common/administrativeregions/lib/Level/ordinal()I
iconst_1
iastore
L1:
aload 0
getstatic com/nd/rj/common/administrativeregions/lib/Level/LEVEL_1 Lcom/nd/rj/common/administrativeregions/lib/Level;
invokevirtual com/nd/rj/common/administrativeregions/lib/Level/ordinal()I
iconst_2
iastore
L3:
aload 0
getstatic com/nd/rj/common/administrativeregions/lib/Level/LEVEL_2 Lcom/nd/rj/common/administrativeregions/lib/Level;
invokevirtual com/nd/rj/common/administrativeregions/lib/Level/ordinal()I
iconst_3
iastore
L5:
aload 0
getstatic com/nd/rj/common/administrativeregions/lib/Level/LEVEL_3 Lcom/nd/rj/common/administrativeregions/lib/Level;
invokevirtual com/nd/rj/common/administrativeregions/lib/Level/ordinal()I
iconst_4
iastore
L7:
aload 0
putstatic com/nd/rj/common/administrativeregions/lib/Level/$SWITCH_TABLE$com$nd$rj$common$administrativeregions$lib$Level [I
aload 0
areturn
L8:
astore 1
goto L7
L6:
astore 1
goto L5
L4:
astore 1
goto L3
L2:
astore 1
goto L1
.limit locals 2
.limit stack 3
.end method

.method static <clinit>()V
new com/nd/rj/common/administrativeregions/lib/Level
dup
ldc "INVALID"
iconst_0
sipush -1000
invokespecial com/nd/rj/common/administrativeregions/lib/Level/<init>(Ljava/lang/String;II)V
putstatic com/nd/rj/common/administrativeregions/lib/Level/INVALID Lcom/nd/rj/common/administrativeregions/lib/Level;
new com/nd/rj/common/administrativeregions/lib/Level
dup
ldc "LEVEL_1"
iconst_1
iconst_1
invokespecial com/nd/rj/common/administrativeregions/lib/Level/<init>(Ljava/lang/String;II)V
putstatic com/nd/rj/common/administrativeregions/lib/Level/LEVEL_1 Lcom/nd/rj/common/administrativeregions/lib/Level;
new com/nd/rj/common/administrativeregions/lib/Level
dup
ldc "LEVEL_2"
iconst_2
iconst_2
invokespecial com/nd/rj/common/administrativeregions/lib/Level/<init>(Ljava/lang/String;II)V
putstatic com/nd/rj/common/administrativeregions/lib/Level/LEVEL_2 Lcom/nd/rj/common/administrativeregions/lib/Level;
new com/nd/rj/common/administrativeregions/lib/Level
dup
ldc "LEVEL_3"
iconst_3
iconst_3
invokespecial com/nd/rj/common/administrativeregions/lib/Level/<init>(Ljava/lang/String;II)V
putstatic com/nd/rj/common/administrativeregions/lib/Level/LEVEL_3 Lcom/nd/rj/common/administrativeregions/lib/Level;
iconst_4
anewarray com/nd/rj/common/administrativeregions/lib/Level
dup
iconst_0
getstatic com/nd/rj/common/administrativeregions/lib/Level/INVALID Lcom/nd/rj/common/administrativeregions/lib/Level;
aastore
dup
iconst_1
getstatic com/nd/rj/common/administrativeregions/lib/Level/LEVEL_1 Lcom/nd/rj/common/administrativeregions/lib/Level;
aastore
dup
iconst_2
getstatic com/nd/rj/common/administrativeregions/lib/Level/LEVEL_2 Lcom/nd/rj/common/administrativeregions/lib/Level;
aastore
dup
iconst_3
getstatic com/nd/rj/common/administrativeregions/lib/Level/LEVEL_3 Lcom/nd/rj/common/administrativeregions/lib/Level;
aastore
putstatic com/nd/rj/common/administrativeregions/lib/Level/ENUM$VALUES [Lcom/nd/rj/common/administrativeregions/lib/Level;
return
.limit locals 0
.limit stack 5
.end method

.method private <init>(Ljava/lang/String;II)V
aload 0
aload 1
iload 2
invokespecial java/lang/Enum/<init>(Ljava/lang/String;I)V
aload 0
iload 3
putfield com/nd/rj/common/administrativeregions/lib/Level/mLevel I
return
.limit locals 4
.limit stack 3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nd/rj/common/administrativeregions/lib/Level;
ldc com/nd/rj/common/administrativeregions/lib/Level
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/rj/common/administrativeregions/lib/Level
areturn
.limit locals 1
.limit stack 2
.end method

.method static valueToLevel(I)Lcom/nd/rj/common/administrativeregions/lib/Level;
invokestatic com/nd/rj/common/administrativeregions/lib/Level/values()[Lcom/nd/rj/common/administrativeregions/lib/Level;
astore 5
aload 5
arraylength
istore 2
iconst_0
istore 1
L0:
iload 1
iload 2
if_icmplt L1
getstatic com/nd/rj/common/administrativeregions/lib/Level/INVALID Lcom/nd/rj/common/administrativeregions/lib/Level;
astore 3
L2:
aload 3
areturn
L1:
aload 5
iload 1
aaload
astore 4
aload 4
astore 3
aload 4
getfield com/nd/rj/common/administrativeregions/lib/Level/mLevel I
iload 0
if_icmpeq L2
iload 1
iconst_1
iadd
istore 1
goto L0
.limit locals 6
.limit stack 2
.end method

.method public static values()[Lcom/nd/rj/common/administrativeregions/lib/Level;
getstatic com/nd/rj/common/administrativeregions/lib/Level/ENUM$VALUES [Lcom/nd/rj/common/administrativeregions/lib/Level;
astore 1
aload 1
arraylength
istore 0
iload 0
anewarray com/nd/rj/common/administrativeregions/lib/Level
astore 2
aload 1
iconst_0
aload 2
iconst_0
iload 0
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 2
areturn
.limit locals 3
.limit stack 5
.end method

.method getNextLevel()Lcom/nd/rj/common/administrativeregions/lib/Level;
invokestatic com/nd/rj/common/administrativeregions/lib/Level/$SWITCH_TABLE$com$nd$rj$common$administrativeregions$lib$Level()[I
aload 0
invokevirtual com/nd/rj/common/administrativeregions/lib/Level/ordinal()I
iaload
tableswitch 2
L0
L1
default : L2
L2:
getstatic com/nd/rj/common/administrativeregions/lib/Level/INVALID Lcom/nd/rj/common/administrativeregions/lib/Level;
areturn
L0:
getstatic com/nd/rj/common/administrativeregions/lib/Level/LEVEL_2 Lcom/nd/rj/common/administrativeregions/lib/Level;
areturn
L1:
getstatic com/nd/rj/common/administrativeregions/lib/Level/LEVEL_3 Lcom/nd/rj/common/administrativeregions/lib/Level;
areturn
.limit locals 1
.limit stack 2
.end method

.method getValue()I
aload 0
getfield com/nd/rj/common/administrativeregions/lib/Level/mLevel I
ireturn
.limit locals 1
.limit stack 1
.end method
