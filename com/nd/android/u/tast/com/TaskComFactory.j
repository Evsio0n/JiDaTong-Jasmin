.bytecode 50.0
.class public final synchronized com/nd/android/u/tast/com/TaskComFactory
.super java/lang/Object

.field private static 'instance' Lcom/nd/android/u/tast/com/TaskComFactory;

.method static <clinit>()V
new com/nd/android/u/tast/com/TaskComFactory
dup
invokespecial com/nd/android/u/tast/com/TaskComFactory/<init>()V
putstatic com/nd/android/u/tast/com/TaskComFactory/instance Lcom/nd/android/u/tast/com/TaskComFactory;
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

.method public static appendSid2Url(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
aload 1
ifnull L0
ldc ""
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
aload 0
ifnonnull L1
L0:
aconst_null
areturn
L1:
aload 0
ldc "?"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&sid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L2:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "?NullPic=1&app="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/config/Configuration/ALBUMAPPNAME Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&sid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 2
.limit stack 2
.end method

.method public static getInstance()Lcom/nd/android/u/tast/com/TaskComFactory;
getstatic com/nd/android/u/tast/com/TaskComFactory/instance Lcom/nd/android/u/tast/com/TaskComFactory;
areturn
.limit locals 0
.limit stack 1
.end method

.method public getLotteryCom()Lcom/nd/android/u/tast/com/OapLotteryCom;
new com/nd/android/u/tast/com/OapLotteryCom
dup
invokespecial com/nd/android/u/tast/com/OapLotteryCom/<init>()V
areturn
.limit locals 1
.limit stack 2
.end method
