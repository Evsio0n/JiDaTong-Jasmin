.bytecode 50.0
.class public final synchronized com/nd/android/u/contact/util/ContactStatusUtils
.super java/lang/Object

.field public static final 'STATUS_AWAY' I = 2


.field public static final 'STATUS_BUSY' I = 4


.field public static final 'STATUS_INVISIBLE' I = 3


.field public static final 'STATUS_LOGINING' I = 6


.field public static final 'STATUS_OFFLINE' I = 0


.field public static final 'STATUS_ONLINE' I = 1


.field private static final 'TAG' Ljava/lang/String; = "StatusUtils"

.field public static 'descMap' Ljava/util/Map; signature "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"

.field public static 'imageMap' Ljava/util/Map; signature "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"

.field private static final 'statusArray' [Ljava/lang/String;

.field public static 'statusMap' Ljava/util/Map; signature "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"

.method static <clinit>()V
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putstatic com/nd/android/u/contact/util/ContactStatusUtils/statusMap Ljava/util/Map;
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putstatic com/nd/android/u/contact/util/ContactStatusUtils/imageMap Ljava/util/Map;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$array/user_status I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
putstatic com/nd/android/u/contact/util/ContactStatusUtils/statusArray [Ljava/lang/String;
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

.method public static getStatusArray()[Ljava/lang/String;
getstatic com/nd/android/u/contact/util/ContactStatusUtils/statusArray [Ljava/lang/String;
areturn
.limit locals 0
.limit stack 1
.end method

.method public static getStatusDes(I)Ljava/lang/String;
getstatic com/nd/android/u/contact/util/ContactStatusUtils/statusMap Ljava/util/Map;
invokeinterface java/util/Map/isEmpty()Z 0
ifeq L0
getstatic com/nd/android/u/contact/util/ContactStatusUtils/statusMap Ljava/util/Map;
iconst_1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
getstatic com/nd/android/u/contact/util/ContactStatusUtils/statusArray [Ljava/lang/String;
iconst_0
aaload
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
getstatic com/nd/android/u/contact/util/ContactStatusUtils/statusMap Ljava/util/Map;
iconst_2
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
getstatic com/nd/android/u/contact/util/ContactStatusUtils/statusArray [Ljava/lang/String;
iconst_1
aaload
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
getstatic com/nd/android/u/contact/util/ContactStatusUtils/statusMap Ljava/util/Map;
iconst_0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
getstatic com/nd/android/u/contact/util/ContactStatusUtils/statusArray [Ljava/lang/String;
iconst_2
aaload
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
getstatic com/nd/android/u/contact/util/ContactStatusUtils/statusMap Ljava/util/Map;
iconst_4
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
getstatic com/nd/android/u/contact/util/ContactStatusUtils/statusArray [Ljava/lang/String;
iconst_3
aaload
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
getstatic com/nd/android/u/contact/util/ContactStatusUtils/statusMap Ljava/util/Map;
iconst_3
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
getstatic com/nd/android/u/contact/util/ContactStatusUtils/statusArray [Ljava/lang/String;
iconst_4
aaload
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
getstatic com/nd/android/u/contact/util/ContactStatusUtils/statusMap Ljava/util/Map;
bipush 6
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
getstatic com/nd/android/u/contact/util/ContactStatusUtils/statusArray [Ljava/lang/String;
iconst_5
aaload
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L0:
getstatic com/nd/android/u/contact/util/ContactStatusUtils/statusMap Ljava/util/Map;
iload 0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface java/util/Map/containsKey(Ljava/lang/Object;)Z 1
ifeq L1
getstatic com/nd/android/u/contact/util/ContactStatusUtils/statusMap Ljava/util/Map;
iload 0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/String
areturn
L1:
ldc ""
areturn
.limit locals 1
.limit stack 4
.end method

.method public static getStatusImg(I)I
getstatic com/nd/android/u/contact/util/ContactStatusUtils/imageMap Ljava/util/Map;
iload 0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface java/util/Map/containsKey(Ljava/lang/Object;)Z 1
ifeq L0
getstatic com/nd/android/u/contact/util/ContactStatusUtils/imageMap Ljava/util/Map;
iload 0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static getStatusList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/Status;>;"
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 0
aload 0
new com/nd/android/u/contact/dataStructure/Status
dup
iconst_1
iconst_1
invokestatic com/nd/android/u/contact/util/ContactStatusUtils/getStatusImg(I)I
iconst_1
invokestatic com/nd/android/u/contact/util/ContactStatusUtils/getStatusDes(I)Ljava/lang/String;
invokespecial com/nd/android/u/contact/dataStructure/Status/<init>(IILjava/lang/String;)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 0
new com/nd/android/u/contact/dataStructure/Status
dup
iconst_2
iconst_2
invokestatic com/nd/android/u/contact/util/ContactStatusUtils/getStatusImg(I)I
iconst_2
invokestatic com/nd/android/u/contact/util/ContactStatusUtils/getStatusDes(I)Ljava/lang/String;
invokespecial com/nd/android/u/contact/dataStructure/Status/<init>(IILjava/lang/String;)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 0
new com/nd/android/u/contact/dataStructure/Status
dup
iconst_4
iconst_4
invokestatic com/nd/android/u/contact/util/ContactStatusUtils/getStatusImg(I)I
iconst_4
invokestatic com/nd/android/u/contact/util/ContactStatusUtils/getStatusDes(I)Ljava/lang/String;
invokespecial com/nd/android/u/contact/dataStructure/Status/<init>(IILjava/lang/String;)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 0
new com/nd/android/u/contact/dataStructure/Status
dup
iconst_3
iconst_3
invokestatic com/nd/android/u/contact/util/ContactStatusUtils/getStatusImg(I)I
iconst_3
invokestatic com/nd/android/u/contact/util/ContactStatusUtils/getStatusDes(I)Ljava/lang/String;
invokespecial com/nd/android/u/contact/dataStructure/Status/<init>(IILjava/lang/String;)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 0
new com/nd/android/u/contact/dataStructure/Status
dup
iconst_0
iconst_0
invokestatic com/nd/android/u/contact/util/ContactStatusUtils/getStatusImg(I)I
iconst_0
invokestatic com/nd/android/u/contact/util/ContactStatusUtils/getStatusDes(I)Ljava/lang/String;
invokespecial com/nd/android/u/contact/dataStructure/Status/<init>(IILjava/lang/String;)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 0
areturn
.limit locals 1
.limit stack 6
.end method

.method public static isOnLineIM()Z
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/IMSISOnline()Z
ifeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 0
.limit stack 1
.end method

.method public static toGrayByMy()Z
invokestatic com/nd/android/u/contact/util/ContactStatusUtils/isOnLineIM()Z
ifeq L0
iconst_0
ireturn
L0:
iconst_1
ireturn
.limit locals 0
.limit stack 1
.end method

.method public static toGrayByUser(I)Z
iconst_1
istore 1
iload 0
iconst_4
if_icmpeq L0
iload 0
iconst_2
if_icmpeq L0
iload 0
iconst_1
if_icmpne L1
L0:
iconst_0
istore 1
L1:
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method
