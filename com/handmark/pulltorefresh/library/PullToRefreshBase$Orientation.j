.bytecode 50.0
.class public final synchronized enum com/handmark/pulltorefresh/library/PullToRefreshBase$Orientation
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;>;"
.inner class public static final enum Orientation inner com/handmark/pulltorefresh/library/PullToRefreshBase$Orientation outer com/handmark/pulltorefresh/library/PullToRefreshBase

.field private static final synthetic 'ENUM$VALUES' [Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

.field public static final enum 'HORIZONTAL' Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

.field public static final enum 'VERTICAL' Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

.method static <clinit>()V
new com/handmark/pulltorefresh/library/PullToRefreshBase$Orientation
dup
ldc "VERTICAL"
iconst_0
invokespecial com/handmark/pulltorefresh/library/PullToRefreshBase$Orientation/<init>(Ljava/lang/String;I)V
putstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Orientation/VERTICAL Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
new com/handmark/pulltorefresh/library/PullToRefreshBase$Orientation
dup
ldc "HORIZONTAL"
iconst_1
invokespecial com/handmark/pulltorefresh/library/PullToRefreshBase$Orientation/<init>(Ljava/lang/String;I)V
putstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Orientation/HORIZONTAL Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
iconst_2
anewarray com/handmark/pulltorefresh/library/PullToRefreshBase$Orientation
dup
iconst_0
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Orientation/VERTICAL Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
aastore
dup
iconst_1
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Orientation/HORIZONTAL Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
aastore
putstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Orientation/ENUM$VALUES [Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
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

.method public static valueOf(Ljava/lang/String;)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
ldc com/handmark/pulltorefresh/library/PullToRefreshBase$Orientation
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/handmark/pulltorefresh/library/PullToRefreshBase$Orientation
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Orientation/ENUM$VALUES [Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
astore 1
aload 1
arraylength
istore 0
iload 0
anewarray com/handmark/pulltorefresh/library/PullToRefreshBase$Orientation
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
