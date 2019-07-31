.bytecode 50.0
.class public final synchronized com/handmark/pulltorefresh/library/OverscrollHelper
.super java/lang/Object
.annotation invisible Landroid/annotation/TargetApi;
value I = 9
.end annotation

.field private static synthetic '$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation' [I

.field static final 'DEFAULT_OVERSCROLL_SCALE' F = 1.0F


.field static final 'LOG_TAG' Ljava/lang/String; = "OverscrollHelper"

.method static synthetic $SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation()[I
.catch java/lang/NoSuchFieldError from L0 to L1 using L2
.catch java/lang/NoSuchFieldError from L1 to L3 using L4
getstatic com/handmark/pulltorefresh/library/OverscrollHelper/$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation [I
astore 0
aload 0
ifnull L5
aload 0
areturn
L5:
invokestatic com/handmark/pulltorefresh/library/PullToRefreshBase$Orientation/values()[Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
arraylength
newarray int
astore 0
L0:
aload 0
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Orientation/HORIZONTAL Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Orientation/ordinal()I
iconst_2
iastore
L1:
aload 0
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Orientation/VERTICAL Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Orientation/ordinal()I
iconst_1
iastore
L3:
aload 0
putstatic com/handmark/pulltorefresh/library/OverscrollHelper/$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation [I
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

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method static isAndroidOverScrollEnabled(Landroid/view/View;)Z
aload 0
invokevirtual android/view/View/getOverScrollMode()I
iconst_2
if_icmpeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static overScrollBy(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;IIIIIIFZ)V
.signature "(Lcom/handmark/pulltorefresh/library/PullToRefreshBase<*>;IIIIIIFZ)V"
invokestatic com/handmark/pulltorefresh/library/OverscrollHelper/$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation()[I
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Orientation/ordinal()I
iaload
tableswitch 2
L0
default : L1
L1:
iload 4
istore 2
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/getScrollY()I
istore 1
L2:
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/isPullToRefreshOverScrollEnabled()Z
ifeq L3
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/isRefreshing()Z
ifne L3
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/getMode()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
astore 9
aload 9
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/permitsPullToRefresh()Z
ifeq L4
iload 8
ifne L4
iload 3
ifeq L4
iload 3
iload 2
iadd
istore 2
iload 2
iconst_0
iload 6
isub
if_icmpge L5
aload 9
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/showHeaderLoadingLayout()Z
ifeq L3
iload 1
ifne L6
aload 0
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$State/OVERSCROLLING Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
iconst_0
newarray boolean
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/setState(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;[Z)V
L6:
aload 0
iload 1
iload 2
iadd
i2f
fload 7
fmul
f2i
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/setHeaderScroll(I)V
L3:
return
L0:
iload 1
istore 3
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/getScrollX()I
istore 1
goto L2
L5:
iload 2
iload 5
iload 6
iadd
if_icmple L7
aload 9
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/showFooterLoadingLayout()Z
ifeq L3
iload 1
ifne L8
aload 0
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$State/OVERSCROLLING Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
iconst_0
newarray boolean
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/setState(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;[Z)V
L8:
aload 0
iload 1
iload 2
iadd
iload 5
isub
i2f
fload 7
fmul
f2i
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/setHeaderScroll(I)V
return
L7:
iload 2
invokestatic java/lang/Math/abs(I)I
iload 6
if_icmple L9
iload 2
iload 5
isub
invokestatic java/lang/Math/abs(I)I
iload 6
if_icmpgt L3
L9:
aload 0
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$State/RESET Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
iconst_0
newarray boolean
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/setState(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;[Z)V
return
L4:
iload 8
ifeq L3
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$State/OVERSCROLLING Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/getState()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
if_acmpne L3
aload 0
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$State/RESET Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
iconst_0
newarray boolean
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase/setState(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;[Z)V
return
.limit locals 10
.limit stack 3
.end method

.method public static overScrollBy(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;IIIIIZ)V
.signature "(Lcom/handmark/pulltorefresh/library/PullToRefreshBase<*>;IIIIIZ)V"
aload 0
iload 1
iload 2
iload 3
iload 4
iload 5
iconst_0
fconst_1
iload 6
invokestatic com/handmark/pulltorefresh/library/OverscrollHelper/overScrollBy(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;IIIIIIFZ)V
return
.limit locals 7
.limit stack 9
.end method

.method public static overScrollBy(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;IIIIZ)V
.signature "(Lcom/handmark/pulltorefresh/library/PullToRefreshBase<*>;IIIIZ)V"
aload 0
iload 1
iload 2
iload 3
iload 4
iconst_0
iload 5
invokestatic com/handmark/pulltorefresh/library/OverscrollHelper/overScrollBy(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;IIIIIZ)V
return
.limit locals 6
.limit stack 7
.end method
