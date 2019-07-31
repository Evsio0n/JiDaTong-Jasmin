.bytecode 50.0
.class public synchronized com/nd/android/u/tast/experience/calendar/DateWidgetDayHeader
.super android/view/View

.field private static 'fTextSize' I

.field private 'iWeekDay' I

.field private 'isPopview' Z

.field private 'pt' Landroid/graphics/Paint;

.field private 'rect' Landroid/graphics/RectF;

.method static <clinit>()V
bipush 20
putstatic com/nd/android/u/tast/experience/calendar/DateWidgetDayHeader/fTextSize I
return
.limit locals 0
.limit stack 1
.end method

.method public <init>(Landroid/content/Context;IIZ)V
aload 0
aload 1
invokespecial android/view/View/<init>(Landroid/content/Context;)V
aload 0
new android/graphics/Paint
dup
invokespecial android/graphics/Paint/<init>()V
putfield com/nd/android/u/tast/experience/calendar/DateWidgetDayHeader/pt Landroid/graphics/Paint;
aload 0
new android/graphics/RectF
dup
invokespecial android/graphics/RectF/<init>()V
putfield com/nd/android/u/tast/experience/calendar/DateWidgetDayHeader/rect Landroid/graphics/RectF;
aload 0
iconst_m1
putfield com/nd/android/u/tast/experience/calendar/DateWidgetDayHeader/iWeekDay I
aload 0
iconst_0
putfield com/nd/android/u/tast/experience/calendar/DateWidgetDayHeader/isPopview Z
aload 0
invokevirtual com/nd/android/u/tast/experience/calendar/DateWidgetDayHeader/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/tasklib/R$dimen/number_text_size I
invokevirtual android/content/res/Resources/getDimension(I)F
f2i
putstatic com/nd/android/u/tast/experience/calendar/DateWidgetDayHeader/fTextSize I
aload 0
iload 4
putfield com/nd/android/u/tast/experience/calendar/DateWidgetDayHeader/isPopview Z
aload 0
new android/widget/LinearLayout$LayoutParams
dup
iload 2
iload 3
invokespecial android/widget/LinearLayout$LayoutParams/<init>(II)V
invokevirtual com/nd/android/u/tast/experience/calendar/DateWidgetDayHeader/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
return
.limit locals 5
.limit stack 5
.end method

.method private drawDayHeader(Landroid/graphics/Canvas;)V
aload 0
getfield com/nd/android/u/tast/experience/calendar/DateWidgetDayHeader/pt Landroid/graphics/Paint;
iconst_m1
invokevirtual android/graphics/Paint/setColor(I)V
aload 1
aload 0
getfield com/nd/android/u/tast/experience/calendar/DateWidgetDayHeader/rect Landroid/graphics/RectF;
aload 0
getfield com/nd/android/u/tast/experience/calendar/DateWidgetDayHeader/pt Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
aload 0
getfield com/nd/android/u/tast/experience/calendar/DateWidgetDayHeader/pt Landroid/graphics/Paint;
aconst_null
invokevirtual android/graphics/Paint/setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
pop
aload 0
getfield com/nd/android/u/tast/experience/calendar/DateWidgetDayHeader/pt Landroid/graphics/Paint;
getstatic com/nd/android/u/tast/experience/calendar/DateWidgetDayHeader/fTextSize I
i2f
invokevirtual android/graphics/Paint/setTextSize(F)V
aload 0
getfield com/nd/android/u/tast/experience/calendar/DateWidgetDayHeader/pt Landroid/graphics/Paint;
iconst_1
invokevirtual android/graphics/Paint/setAntiAlias(Z)V
aload 0
getfield com/nd/android/u/tast/experience/calendar/DateWidgetDayHeader/pt Landroid/graphics/Paint;
iconst_1
invokevirtual android/graphics/Paint/setFakeBoldText(Z)V
aload 0
getfield com/nd/android/u/tast/experience/calendar/DateWidgetDayHeader/pt Landroid/graphics/Paint;
aload 0
invokevirtual com/nd/android/u/tast/experience/calendar/DateWidgetDayHeader/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/tasklib/R$color/calendar_weekend_color I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/graphics/Paint/setColor(I)V
aload 0
getfield com/nd/android/u/tast/experience/calendar/DateWidgetDayHeader/iWeekDay I
aload 0
getfield com/nd/android/u/tast/experience/calendar/DateWidgetDayHeader/isPopview Z
invokestatic com/nd/android/u/tast/experience/calendar/DayStyle/getWeekDayName(IZ)Ljava/lang/String;
astore 6
aload 0
getfield com/nd/android/u/tast/experience/calendar/DateWidgetDayHeader/rect Landroid/graphics/RectF;
getfield android/graphics/RectF/left F
f2i
istore 2
aload 0
getfield com/nd/android/u/tast/experience/calendar/DateWidgetDayHeader/rect Landroid/graphics/RectF;
invokevirtual android/graphics/RectF/width()F
f2i
istore 3
aload 0
getfield com/nd/android/u/tast/experience/calendar/DateWidgetDayHeader/pt Landroid/graphics/Paint;
aload 6
invokevirtual android/graphics/Paint/measureText(Ljava/lang/String;)F
f2i
istore 4
aload 0
invokevirtual com/nd/android/u/tast/experience/calendar/DateWidgetDayHeader/getHeight()I
aload 0
invokevirtual com/nd/android/u/tast/experience/calendar/DateWidgetDayHeader/getHeight()I
aload 0
invokespecial com/nd/android/u/tast/experience/calendar/DateWidgetDayHeader/getTextHeight()I
isub
iconst_2
idiv
isub
i2f
aload 0
getfield com/nd/android/u/tast/experience/calendar/DateWidgetDayHeader/pt Landroid/graphics/Paint;
invokevirtual android/graphics/Paint/getFontMetrics()Landroid/graphics/Paint$FontMetrics;
getfield android/graphics/Paint$FontMetrics/bottom F
fsub
f2i
istore 5
aload 1
aload 6
iload 2
iload 3
iconst_1
ishr
iadd
iload 4
iconst_1
ishr
isub
i2f
iload 5
i2f
aload 0
getfield com/nd/android/u/tast/experience/calendar/DateWidgetDayHeader/pt Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
return
.limit locals 7
.limit stack 5
.end method

.method private getTextHeight()I
aload 0
getfield com/nd/android/u/tast/experience/calendar/DateWidgetDayHeader/pt Landroid/graphics/Paint;
invokevirtual android/graphics/Paint/ascent()F
fneg
aload 0
getfield com/nd/android/u/tast/experience/calendar/DateWidgetDayHeader/pt Landroid/graphics/Paint;
invokevirtual android/graphics/Paint/descent()F
fadd
f2i
ireturn
.limit locals 1
.limit stack 2
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
aload 0
aload 1
invokespecial android/view/View/onDraw(Landroid/graphics/Canvas;)V
aload 0
getfield com/nd/android/u/tast/experience/calendar/DateWidgetDayHeader/rect Landroid/graphics/RectF;
fconst_0
fconst_0
aload 0
invokevirtual com/nd/android/u/tast/experience/calendar/DateWidgetDayHeader/getWidth()I
i2f
aload 0
invokevirtual com/nd/android/u/tast/experience/calendar/DateWidgetDayHeader/getHeight()I
i2f
invokevirtual android/graphics/RectF/set(FFFF)V
aload 0
aload 1
invokespecial com/nd/android/u/tast/experience/calendar/DateWidgetDayHeader/drawDayHeader(Landroid/graphics/Canvas;)V
return
.limit locals 2
.limit stack 5
.end method

.method public setData(I)V
aload 0
iload 1
putfield com/nd/android/u/tast/experience/calendar/DateWidgetDayHeader/iWeekDay I
return
.limit locals 2
.limit stack 2
.end method
