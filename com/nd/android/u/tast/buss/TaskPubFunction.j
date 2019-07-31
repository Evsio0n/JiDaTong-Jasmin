.bytecode 50.0
.class public final synchronized com/nd/android/u/tast/buss/TaskPubFunction
.super java/lang/Object

.field private static final 'TAG' Ljava/lang/String; = "TaskPubFunction"

.field protected static 'priseLevelNames' [Ljava/lang/String;

.method static <clinit>()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/tasklib/R$array/priselevel I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
putstatic com/nd/android/u/tast/buss/TaskPubFunction/priseLevelNames [Ljava/lang/String;
return
.limit locals 0
.limit stack 2
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static DateFormat(Ljava/util/Date;)Ljava/lang/String;
new java/text/SimpleDateFormat
dup
ldc "yyyy-MM-dd"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
aload 0
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 3
.end method

.method public static getLotRankString(I)Ljava/lang/String;
getstatic com/nd/android/u/tast/buss/TaskPubFunction/priseLevelNames [Ljava/lang/String;
ifnull L0
getstatic com/nd/android/u/tast/buss/TaskPubFunction/priseLevelNames [Ljava/lang/String;
arraylength
bipush 10
if_icmpge L1
L0:
ldc ""
areturn
L1:
iload 0
iconst_1
isub
istore 0
iload 0
iflt L2
iload 0
bipush 9
if_icmple L3
L2:
ldc ""
areturn
L3:
getstatic com/nd/android/u/tast/buss/TaskPubFunction/priseLevelNames [Ljava/lang/String;
iload 0
aaload
areturn
.limit locals 1
.limit stack 2
.end method

.method public static reLoginGetSid()Ljava/lang/String;
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 3
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
bipush 9
ldc_w 91002
aload 3
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
istore 0
ldc ""
astore 2
aload 2
astore 1
iload 0
ifne L0
aload 2
astore 1
aload 3
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
instanceof java/lang/String
ifeq L0
aload 3
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
checkcast java/lang/String
astore 1
L0:
aload 1
areturn
.limit locals 4
.limit stack 4
.end method
