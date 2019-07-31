.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/utils/PraiseUtils
.super java/lang/Object

.field private static final 'PRAISE_DIAMOND_COUNT' I = 90


.field private static final 'PRAISE_GOLDEN_COUNT' I = 50


.field private static final 'PRAISE_SILVER_COUNT' I = 20


.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private static getPraiseToastByPraiseCount(I)Ljava/lang/String;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
astore 3
ldc ""
astore 2
new java/util/Random
dup
invokestatic java/lang/System/currentTimeMillis()J
invokespecial java/util/Random/<init>(J)V
invokevirtual java/util/Random/nextBoolean()Z
istore 1
iload 0
bipush 20
if_icmplt L0
iload 0
bipush 50
if_icmpge L0
iload 1
ifeq L1
aload 3
getstatic com/android/u/weibo/R$string/xiaoyou_silver_standings I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
astore 2
L2:
aload 2
areturn
L1:
aload 3
getstatic com/android/u/weibo/R$string/xiaoyou_rise_standings I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 3
getstatic com/android/u/weibo/R$string/xiaoyou_silver I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
areturn
L0:
iload 0
bipush 50
if_icmplt L3
iload 0
bipush 90
if_icmpge L3
iload 1
ifeq L4
aload 3
getstatic com/android/u/weibo/R$string/xiaoyou_golden_standings I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
areturn
L4:
aload 3
getstatic com/android/u/weibo/R$string/xiaoyou_rise_standings I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 3
getstatic com/android/u/weibo/R$string/xiaoyou_golden I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
areturn
L3:
iload 0
bipush 90
if_icmplt L2
iload 1
ifeq L5
aload 3
getstatic com/android/u/weibo/R$string/xiaoyou_diamond_standings I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
areturn
L5:
aload 3
getstatic com/android/u/weibo/R$string/xiaoyou_rise_standings I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 3
getstatic com/android/u/weibo/R$string/xiaoyou_diamond I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
areturn
.limit locals 4
.limit stack 6
.end method

.method public static setTwBgAndIconByPraiseCount(ILandroid/view/View;Landroid/view/View;)V
iconst_0
istore 3
iconst_0
istore 4
iload 0
bipush 20
if_icmplt L0
iload 0
bipush 50
if_icmpge L0
getstatic com/android/u/weibo/R$drawable/xiaoyou_icon_silver I
istore 3
iconst_1
istore 4
L1:
iload 4
ifeq L2
aload 1
iconst_0
invokevirtual android/view/View/setVisibility(I)V
L3:
iconst_0
istore 0
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
ifnull L4
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
istore 0
L4:
iload 3
ifne L5
aload 2
bipush 8
invokevirtual android/view/View/setVisibility(I)V
return
L0:
iload 0
bipush 50
if_icmplt L6
iload 0
bipush 90
if_icmpge L6
getstatic com/android/u/weibo/R$drawable/xiaoyou_icon_golden I
istore 3
iconst_1
istore 4
goto L1
L6:
iload 0
bipush 90
if_icmplt L1
getstatic com/android/u/weibo/R$drawable/xiaoyou_icon_diamond I
istore 3
iconst_1
istore 4
goto L1
L2:
aload 1
bipush 8
invokevirtual android/view/View/setVisibility(I)V
goto L3
L5:
iload 0
iload 3
if_icmpeq L7
aload 2
iload 3
invokevirtual android/view/View/setBackgroundResource(I)V
L7:
aload 2
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 2
iload 3
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
return
.limit locals 5
.limit stack 2
.end method

.method public static showToastAfterPraise(Landroid/content/Context;II)V
iload 2
iload 1
if_icmpgt L0
L1:
return
L0:
iconst_0
istore 4
iload 1
bipush 20
if_icmpge L2
iload 4
istore 3
iload 2
bipush 20
if_icmplt L3
iconst_1
istore 3
L3:
iload 3
ifeq L1
aload 0
iload 2
invokestatic com/android/u/weibo/weibo/utils/PraiseUtils/getPraiseToastByPraiseCount(I)Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
return
L2:
iload 1
bipush 50
if_icmpge L4
iload 4
istore 3
iload 2
bipush 50
if_icmplt L3
iconst_1
istore 3
goto L3
L4:
iload 4
istore 3
iload 1
bipush 90
if_icmpge L3
iload 4
istore 3
iload 2
bipush 90
if_icmplt L3
iconst_1
istore 3
goto L3
.limit locals 5
.limit stack 2
.end method
