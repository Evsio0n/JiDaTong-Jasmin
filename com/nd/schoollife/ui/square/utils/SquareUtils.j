.bytecode 50.0
.class public final synchronized com/nd/schoollife/ui/square/utils/SquareUtils
.super java/lang/Object

.field private static 'task' Lcom/nd/schoollife/ui/square/task/GetSchoolLifeMsgNumTask;

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static apiLevelIsMore(I)Z
getstatic android/os/Build$VERSION/SDK_INT I
iload 0
if_icmplt L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static cutStringBySize(Ljava/lang/String;I)Ljava/lang/String;
aload 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
ldc ""
astore 2
L1:
aload 2
areturn
L0:
aload 0
iconst_1
iload 1
invokestatic com/nd/schoollife/ui/common/util/PostUtils/getWordLength(Ljava/lang/String;ZI)[F
astore 2
aload 2
arraylength
iconst_2
if_icmpne L2
aload 2
iconst_1
faload
f2i
istore 1
iload 1
aload 0
invokevirtual java/lang/String/length()I
if_icmpge L3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
iconst_0
iload 1
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\u2026"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L3:
aload 0
astore 2
iload 1
aload 0
invokevirtual java/lang/String/length()I
if_icmpeq L1
L2:
ldc ""
areturn
.limit locals 3
.limit stack 4
.end method

.method public static getMsgNum(Lcom/nd/schoollife/ui/square/listener/OnGetSchoolLifeMsgNum;)V
new com/nd/schoollife/ui/square/task/GetSchoolLifeMsgNumTask
dup
aload 0
invokespecial com/nd/schoollife/ui/square/task/GetSchoolLifeMsgNumTask/<init>(Lcom/nd/schoollife/ui/square/listener/OnGetSchoolLifeMsgNum;)V
putstatic com/nd/schoollife/ui/square/utils/SquareUtils/task Lcom/nd/schoollife/ui/square/task/GetSchoolLifeMsgNumTask;
getstatic com/nd/schoollife/ui/square/utils/SquareUtils/task Lcom/nd/schoollife/ui/square/task/GetSchoolLifeMsgNumTask;
iconst_0
anewarray java/lang/Integer
invokevirtual com/nd/schoollife/ui/square/task/GetSchoolLifeMsgNumTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 1
.limit stack 3
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
aload 0
ldc "window"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/WindowManager
astore 0
new android/util/DisplayMetrics
dup
invokespecial android/util/DisplayMetrics/<init>()V
astore 1
aload 0
invokeinterface android/view/WindowManager/getDefaultDisplay()Landroid/view/Display; 0
aload 1
invokevirtual android/view/Display/getMetrics(Landroid/util/DisplayMetrics;)V
aload 1
getfield android/util/DisplayMetrics/heightPixels I
ireturn
.limit locals 2
.limit stack 2
.end method

.method public static getStateBarHeight(Landroid/content/Context;)I
.catch java/lang/Exception from L0 to L1 using L2
L0:
ldc "com.android.internal.R$dimen"
invokestatic java/lang/Class/forName(Ljava/lang/String;)Ljava/lang/Class;
astore 2
aload 2
invokevirtual java/lang/Class/newInstance()Ljava/lang/Object;
astore 3
aload 2
ldc "status_bar_height"
invokevirtual java/lang/Class/getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
aload 3
invokevirtual java/lang/reflect/Field/get(Ljava/lang/Object;)Ljava/lang/Object;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 1
aload 0
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
iload 1
invokevirtual android/content/res/Resources/getDimensionPixelSize(I)I
istore 1
L1:
iload 1
ireturn
L2:
astore 0
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
iconst_0
ireturn
.limit locals 4
.limit stack 2
.end method

.method public static postMsgNum(J)V
getstatic com/nd/schoollife/ui/square/utils/SquareUtils/task Lcom/nd/schoollife/ui/square/task/GetSchoolLifeMsgNumTask;
ifnull L0
getstatic com/nd/schoollife/ui/square/utils/SquareUtils/task Lcom/nd/schoollife/ui/square/task/GetSchoolLifeMsgNumTask;
lload 0
invokevirtual com/nd/schoollife/ui/square/task/GetSchoolLifeMsgNumTask/showCount(J)V
L0:
return
.limit locals 2
.limit stack 3
.end method
