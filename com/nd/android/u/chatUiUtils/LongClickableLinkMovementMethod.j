.bytecode 50.0
.class public synchronized com/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod
.super android/text/method/ScrollingMovementMethod
.inner class CheckForLongPress inner com/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod$CheckForLongPress outer com/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod

.field private static final 'CLICK' I = 1


.field private static final 'DOWN' I = 3


.field private static 'FROM_BELOW' Ljava/lang/Object;

.field private static final 'UP' I = 2


.field private 'handler' Landroid/os/Handler;

.field private 'lastEvent' [F

.field private 'longClickable' Z

.field private 'mHasPerformedLongPress' Z

.field private 'mPendingCheckForLongPress' Lcom/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod$CheckForLongPress;

.field public 'mlistener' Landroid/view/View$OnLongClickListener;

.field private 'pressed' Z

.method static <clinit>()V
new android/text/NoCopySpan$Concrete
dup
invokespecial android/text/NoCopySpan$Concrete/<init>()V
putstatic com/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod/FROM_BELOW Ljava/lang/Object;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>(Landroid/view/View$OnLongClickListener;)V
aload 0
invokespecial android/text/method/ScrollingMovementMethod/<init>()V
aload 0
new android/os/Handler
dup
invokespecial android/os/Handler/<init>()V
putfield com/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod/handler Landroid/os/Handler;
aload 0
iconst_1
putfield com/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod/longClickable Z
aload 0
iconst_2
newarray float
putfield com/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod/lastEvent [F
aload 0
aload 1
putfield com/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod/mlistener Landroid/view/View$OnLongClickListener;
return
.limit locals 2
.limit stack 3
.end method

.method static synthetic access$000(Lcom/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod;)Z
aload 0
getfield com/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod/longClickable Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod;Landroid/view/View;)V
aload 0
aload 1
invokespecial com/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod/performLongClick(Landroid/view/View;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$202(Lcom/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod;Z)Z
aload 0
iload 1
putfield com/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod/mHasPerformedLongPress Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method private action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z
aload 2
invokevirtual android/widget/TextView/getLayout()Landroid/text/Layout;
astore 11
aload 2
invokevirtual android/widget/TextView/getTotalPaddingTop()I
istore 5
aload 2
invokevirtual android/widget/TextView/getTotalPaddingBottom()I
istore 6
aload 2
invokevirtual android/widget/TextView/getScrollY()I
istore 7
aload 2
invokevirtual android/widget/TextView/getHeight()I
istore 8
aload 11
iload 7
invokevirtual android/text/Layout/getLineForVertical(I)I
istore 4
aload 11
iload 8
iload 7
iadd
iload 5
iload 6
iadd
isub
invokevirtual android/text/Layout/getLineForVertical(I)I
istore 5
aload 11
iload 4
invokevirtual android/text/Layout/getLineStart(I)I
istore 8
aload 11
iload 5
invokevirtual android/text/Layout/getLineEnd(I)I
istore 9
aload 3
iload 8
iload 9
ldc android/text/style/ClickableSpan
invokeinterface android/text/Spannable/getSpans(IILjava/lang/Class;)[Ljava/lang/Object; 3
checkcast [Landroid/text/style/ClickableSpan;
astore 11
aload 3
invokestatic android/text/Selection/getSelectionStart(Ljava/lang/CharSequence;)I
istore 4
aload 3
invokestatic android/text/Selection/getSelectionEnd(Ljava/lang/CharSequence;)I
istore 5
iload 4
iload 5
invokestatic java/lang/Math/min(II)I
istore 6
iload 4
iload 5
invokestatic java/lang/Math/max(II)I
istore 7
iload 7
istore 5
iload 6
istore 4
iload 6
ifge L0
iload 7
istore 5
iload 6
istore 4
aload 3
getstatic com/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod/FROM_BELOW Ljava/lang/Object;
invokeinterface android/text/Spannable/getSpanStart(Ljava/lang/Object;)I 1
iflt L0
aload 3
invokeinterface android/text/Spannable/length()I 0
istore 5
iload 5
istore 4
L0:
iload 4
istore 6
iload 4
iload 9
if_icmple L1
ldc_w 2147483647
istore 5
ldc_w 2147483647
istore 6
L1:
iload 5
istore 4
iload 5
iload 8
if_icmpge L2
iconst_m1
istore 4
iconst_m1
istore 6
L2:
iload 1
tableswitch 1
L3
L4
L5
default : L6
L6:
iconst_0
ireturn
L3:
iload 6
iload 4
if_icmpne L7
iconst_0
ireturn
L7:
aload 3
iload 6
iload 4
ldc android/text/style/ClickableSpan
invokeinterface android/text/Spannable/getSpans(IILjava/lang/Class;)[Ljava/lang/Object; 3
checkcast [Landroid/text/style/ClickableSpan;
astore 3
aload 3
arraylength
iconst_1
if_icmpeq L8
iconst_0
ireturn
L8:
aload 3
iconst_0
aaload
aload 2
invokevirtual android/text/style/ClickableSpan/onClick(Landroid/view/View;)V
goto L6
L4:
iconst_m1
istore 5
iconst_m1
istore 8
iconst_0
istore 1
L9:
iload 1
aload 11
arraylength
if_icmpge L10
aload 3
aload 11
iload 1
aaload
invokeinterface android/text/Spannable/getSpanEnd(Ljava/lang/Object;)I 1
istore 10
iload 10
iload 4
if_icmplt L11
iload 8
istore 9
iload 5
istore 7
iload 6
iload 4
if_icmpne L12
L11:
iload 8
istore 9
iload 5
istore 7
iload 10
iload 8
if_icmple L12
aload 3
aload 11
iload 1
aaload
invokeinterface android/text/Spannable/getSpanStart(Ljava/lang/Object;)I 1
istore 7
iload 10
istore 9
L12:
iload 1
iconst_1
iadd
istore 1
iload 9
istore 8
iload 7
istore 5
goto L9
L10:
iload 5
iflt L6
aload 3
iload 8
iload 5
invokestatic android/text/Selection/setSelection(Landroid/text/Spannable;II)V
iconst_1
ireturn
L5:
ldc_w 2147483647
istore 5
ldc_w 2147483647
istore 8
iconst_0
istore 1
L13:
iload 1
aload 11
arraylength
if_icmpge L14
aload 3
aload 11
iload 1
aaload
invokeinterface android/text/Spannable/getSpanStart(Ljava/lang/Object;)I 1
istore 10
iload 10
iload 6
if_icmpgt L15
iload 8
istore 9
iload 5
istore 7
iload 6
iload 4
if_icmpne L16
L15:
iload 8
istore 9
iload 5
istore 7
iload 10
iload 5
if_icmpge L16
iload 10
istore 7
aload 3
aload 11
iload 1
aaload
invokeinterface android/text/Spannable/getSpanEnd(Ljava/lang/Object;)I 1
istore 9
L16:
iload 1
iconst_1
iadd
istore 1
iload 9
istore 8
iload 7
istore 5
goto L13
L14:
iload 8
ldc_w 2147483647
if_icmpge L6
aload 3
iload 5
iload 8
invokestatic android/text/Selection/setSelection(Landroid/text/Spannable;II)V
iconst_1
ireturn
.limit locals 12
.limit stack 4
.end method

.method private checkForLongClick(Landroid/view/View;)V
aload 0
iconst_0
putfield com/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod/mHasPerformedLongPress Z
aload 0
new com/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod$CheckForLongPress
dup
aload 0
aload 1
invokespecial com/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod$CheckForLongPress/<init>(Lcom/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod;Landroid/view/View;)V
putfield com/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod/mPendingCheckForLongPress Lcom/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod$CheckForLongPress;
aload 0
getfield com/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod/handler Landroid/os/Handler;
aload 0
getfield com/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod/mPendingCheckForLongPress Lcom/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod$CheckForLongPress;
invokestatic android/view/ViewConfiguration/getLongPressTimeout()I
i2l
invokevirtual android/os/Handler/postDelayed(Ljava/lang/Runnable;J)Z
pop
return
.limit locals 2
.limit stack 5
.end method

.method private performLongClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod/mlistener Landroid/view/View$OnLongClickListener;
ifnull L0
aload 1
aload 0
getfield com/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod/mlistener Landroid/view/View$OnLongClickListener;
invokevirtual android/view/View/setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method protected down(Landroid/widget/TextView;Landroid/text/Spannable;)Z
aload 0
iconst_3
aload 1
aload 2
invokespecial com/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod/action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z
ifeq L0
iconst_1
ireturn
L0:
aload 0
aload 1
aload 2
invokespecial android/text/method/ScrollingMovementMethod/down(Landroid/widget/TextView;Landroid/text/Spannable;)Z
ireturn
.limit locals 3
.limit stack 4
.end method

.method protected handleMovementKey(Landroid/widget/TextView;Landroid/text/Spannable;IILandroid/view/KeyEvent;)Z
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "NewApi" 
.end annotation
iload 3
lookupswitch
23 : L0
66 : L0
default : L1
L1:
aload 0
aload 1
aload 2
iload 3
iload 4
aload 5
invokespecial android/text/method/ScrollingMovementMethod/handleMovementKey(Landroid/widget/TextView;Landroid/text/Spannable;IILandroid/view/KeyEvent;)Z
ireturn
L0:
iload 4
invokestatic android/view/KeyEvent/metaStateHasNoModifiers(I)Z
ifeq L1
aload 5
invokevirtual android/view/KeyEvent/getAction()I
ifne L1
aload 5
invokevirtual android/view/KeyEvent/getRepeatCount()I
ifne L1
aload 0
iconst_1
aload 1
aload 2
invokespecial com/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod/action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z
ifeq L1
iconst_1
ireturn
.limit locals 6
.limit stack 6
.end method

.method public initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V
aload 2
invokestatic android/text/Selection/removeSelection(Landroid/text/Spannable;)V
aload 2
getstatic com/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod/FROM_BELOW Ljava/lang/Object;
invokeinterface android/text/Spannable/removeSpan(Ljava/lang/Object;)V 1
return
.limit locals 3
.limit stack 2
.end method

.method public isPressed()Z
aload 0
getfield com/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod/pressed Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method protected left(Landroid/widget/TextView;Landroid/text/Spannable;)Z
aload 0
iconst_2
aload 1
aload 2
invokespecial com/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod/action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z
ifeq L0
iconst_1
ireturn
L0:
aload 0
aload 1
aload 2
invokespecial android/text/method/ScrollingMovementMethod/left(Landroid/widget/TextView;Landroid/text/Spannable;)Z
ireturn
.limit locals 3
.limit stack 4
.end method

.method public onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V
aload 2
invokestatic android/text/Selection/removeSelection(Landroid/text/Spannable;)V
iload 3
iconst_1
iand
ifeq L0
aload 2
getstatic com/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod/FROM_BELOW Ljava/lang/Object;
iconst_0
iconst_0
bipush 34
invokeinterface android/text/Spannable/setSpan(Ljava/lang/Object;III)V 4
return
L0:
aload 2
getstatic com/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod/FROM_BELOW Ljava/lang/Object;
invokeinterface android/text/Spannable/removeSpan(Ljava/lang/Object;)V 1
return
.limit locals 4
.limit stack 5
.end method

.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
aload 3
invokevirtual android/view/MotionEvent/getAction()I
istore 6
aload 0
aload 1
invokespecial com/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod/checkForLongClick(Landroid/view/View;)V
iload 6
iconst_1
if_icmpeq L0
iload 6
ifne L1
L0:
aload 3
invokevirtual android/view/MotionEvent/getX()F
f2i
istore 7
aload 3
invokevirtual android/view/MotionEvent/getY()F
f2i
istore 8
aload 1
invokevirtual android/widget/TextView/getTotalPaddingLeft()I
istore 9
aload 1
invokevirtual android/widget/TextView/getTotalPaddingTop()I
istore 10
aload 1
invokevirtual android/widget/TextView/getScrollX()I
istore 11
aload 1
invokevirtual android/widget/TextView/getScrollY()I
istore 12
aload 1
invokevirtual android/widget/TextView/getLayout()Landroid/text/Layout;
astore 13
aload 13
aload 13
iload 8
iload 10
isub
iload 12
iadd
invokevirtual android/text/Layout/getLineForVertical(I)I
iload 7
iload 9
isub
iload 11
iadd
i2f
invokevirtual android/text/Layout/getOffsetForHorizontal(IF)I
istore 7
aload 2
iload 7
iload 7
ldc android/text/style/ClickableSpan
invokeinterface android/text/Spannable/getSpans(IILjava/lang/Class;)[Ljava/lang/Object; 3
checkcast [Landroid/text/style/ClickableSpan;
astore 13
aload 13
arraylength
ifeq L2
iload 6
iconst_1
if_icmpne L3
aload 0
getfield com/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod/mHasPerformedLongPress Z
ifne L4
aload 13
iconst_0
aaload
aload 1
invokevirtual android/text/style/ClickableSpan/onClick(Landroid/view/View;)V
L4:
aload 0
iconst_0
putfield com/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod/pressed Z
aload 0
iconst_2
newarray float
putfield com/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod/lastEvent [F
L5:
iconst_1
ireturn
L3:
iload 6
ifne L5
aload 0
iconst_1
putfield com/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod/pressed Z
aload 0
getfield com/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod/lastEvent [F
iconst_0
aload 3
invokevirtual android/view/MotionEvent/getX()F
fastore
aload 0
getfield com/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod/lastEvent [F
iconst_1
aload 3
invokevirtual android/view/MotionEvent/getY()F
fastore
aload 2
aload 2
aload 13
iconst_0
aaload
invokeinterface android/text/Spannable/getSpanStart(Ljava/lang/Object;)I 1
aload 2
aload 13
iconst_0
aaload
invokeinterface android/text/Spannable/getSpanEnd(Ljava/lang/Object;)I 1
invokestatic android/text/Selection/setSelection(Landroid/text/Spannable;II)V
goto L5
L2:
aload 2
invokestatic android/text/Selection/removeSelection(Landroid/text/Spannable;)V
L6:
aload 0
aload 1
aload 2
aload 3
invokespecial android/text/method/ScrollingMovementMethod/onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
ireturn
L1:
iload 6
iconst_2
if_icmpne L7
iconst_2
newarray float
astore 13
aload 13
iconst_0
aload 3
invokevirtual android/view/MotionEvent/getX()F
fastore
aload 13
iconst_1
aload 3
invokevirtual android/view/MotionEvent/getY()F
fastore
aload 0
getfield com/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod/lastEvent [F
iconst_0
faload
aload 13
iconst_0
faload
fsub
invokestatic java/lang/Math/abs(F)F
fstore 4
aload 0
getfield com/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod/lastEvent [F
iconst_1
faload
aload 13
iconst_1
faload
fsub
invokestatic java/lang/Math/abs(F)F
fstore 5
fload 4
f2d
fload 5
f2d
invokestatic java/lang/Math/hypot(DD)D
invokestatic java/lang/Math/sqrt(D)D
bipush 6
i2d
dcmpl
ifle L6
aload 0
iconst_0
putfield com/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod/pressed Z
goto L6
L7:
iload 6
iconst_3
if_icmpne L8
aload 0
iconst_0
putfield com/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod/pressed Z
aload 0
iconst_2
newarray float
putfield com/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod/lastEvent [F
goto L6
L8:
aload 0
iconst_0
putfield com/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod/pressed Z
aload 0
iconst_2
newarray float
putfield com/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod/lastEvent [F
goto L6
.limit locals 14
.limit stack 5
.end method

.method public removeLongClickCallback()V
aload 0
getfield com/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod/mPendingCheckForLongPress Lcom/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod$CheckForLongPress;
ifnull L0
aload 0
getfield com/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod/handler Landroid/os/Handler;
aload 0
getfield com/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod/mPendingCheckForLongPress Lcom/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod$CheckForLongPress;
invokevirtual android/os/Handler/removeCallbacks(Ljava/lang/Runnable;)V
aload 0
aconst_null
putfield com/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod/mPendingCheckForLongPress Lcom/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod$CheckForLongPress;
L0:
return
.limit locals 1
.limit stack 2
.end method

.method protected right(Landroid/widget/TextView;Landroid/text/Spannable;)Z
aload 0
iconst_3
aload 1
aload 2
invokespecial com/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod/action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z
ifeq L0
iconst_1
ireturn
L0:
aload 0
aload 1
aload 2
invokespecial android/text/method/ScrollingMovementMethod/right(Landroid/widget/TextView;Landroid/text/Spannable;)Z
ireturn
.limit locals 3
.limit stack 4
.end method

.method public setLongClickable(Z)V
aload 0
iload 1
putfield com/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod/longClickable Z
return
.limit locals 2
.limit stack 2
.end method

.method protected up(Landroid/widget/TextView;Landroid/text/Spannable;)Z
aload 0
iconst_2
aload 1
aload 2
invokespecial com/nd/android/u/chatUiUtils/LongClickableLinkMovementMethod/action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z
ifeq L0
iconst_1
ireturn
L0:
aload 0
aload 1
aload 2
invokespecial android/text/method/ScrollingMovementMethod/up(Landroid/widget/TextView;Landroid/text/Spannable;)Z
ireturn
.limit locals 3
.limit stack 4
.end method
