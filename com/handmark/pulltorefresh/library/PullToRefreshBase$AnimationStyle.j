.bytecode 50.0
.class public final synchronized enum com/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;>;"
.inner class public static final enum AnimationStyle inner com/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle outer com/handmark/pulltorefresh/library/PullToRefreshBase

.field private static synthetic '$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$AnimationStyle' [I

.field private static final synthetic 'ENUM$VALUES' [Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

.field public static final enum 'FLIP' Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

.field public static final enum 'ROTATE' Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

.method static synthetic $SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$AnimationStyle()[I
.catch java/lang/NoSuchFieldError from L0 to L1 using L2
.catch java/lang/NoSuchFieldError from L1 to L3 using L4
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle/$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$AnimationStyle [I
astore 0
aload 0
ifnull L5
aload 0
areturn
L5:
invokestatic com/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle/values()[Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
arraylength
newarray int
astore 0
L0:
aload 0
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle/FLIP Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle/ordinal()I
iconst_2
iastore
L1:
aload 0
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle/ROTATE Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle/ordinal()I
iconst_1
iastore
L3:
aload 0
putstatic com/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle/$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$AnimationStyle [I
aload 0
areturn
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
new com/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle
dup
ldc "ROTATE"
iconst_0
invokespecial com/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle/<init>(Ljava/lang/String;I)V
putstatic com/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle/ROTATE Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
new com/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle
dup
ldc "FLIP"
iconst_1
invokespecial com/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle/<init>(Ljava/lang/String;I)V
putstatic com/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle/FLIP Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
iconst_2
anewarray com/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle
dup
iconst_0
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle/ROTATE Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
aastore
dup
iconst_1
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle/FLIP Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
aastore
putstatic com/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle/ENUM$VALUES [Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
return
.limit locals 0
.limit stack 4
.end method

.method private <init>(Ljava/lang/String;I)V
aload 0
aload 1
iload 2
invokespecial java/lang/Enum/<init>(Ljava/lang/String;I)V
return
.limit locals 3
.limit stack 3
.end method

.method static getDefault()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle/ROTATE Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
areturn
.limit locals 0
.limit stack 1
.end method

.method static mapIntToValue(I)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
iload 0
tableswitch 1
L0
default : L1
L1:
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle/ROTATE Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
areturn
L0:
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle/FLIP Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
areturn
.limit locals 1
.limit stack 1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
ldc com/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle/ENUM$VALUES [Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
astore 1
aload 1
arraylength
istore 0
iload 0
anewarray com/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle
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

.method createLoadingLayout(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invokestatic com/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle/$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$AnimationStyle()[I
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle/ordinal()I
iaload
tableswitch 2
L0
default : L1
L1:
new com/handmark/pulltorefresh/library/internal/RotateLoadingLayout
dup
aload 1
aload 2
aload 3
aload 4
invokespecial com/handmark/pulltorefresh/library/internal/RotateLoadingLayout/<init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V
areturn
L0:
new com/handmark/pulltorefresh/library/internal/FlipLoadingLayout
dup
aload 1
aload 2
aload 3
aload 4
invokespecial com/handmark/pulltorefresh/library/internal/FlipLoadingLayout/<init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V
areturn
.limit locals 5
.limit stack 6
.end method
