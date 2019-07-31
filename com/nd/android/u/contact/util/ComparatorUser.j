.bytecode 50.0
.class public final synchronized com/nd/android/u/contact/util/ComparatorUser
.super java/lang/Object
.implements java/util/Comparator
.signature "Ljava/lang/Object;Ljava/util/Comparator<Ljava/lang/Long;>;"

.field private static final 'TAG' Ljava/lang/String; = "ComparatorUser"

.field private static 'instance' Lcom/nd/android/u/contact/util/ComparatorUser;

.method static <clinit>()V
new com/nd/android/u/contact/util/ComparatorUser
dup
invokespecial com/nd/android/u/contact/util/ComparatorUser/<init>()V
putstatic com/nd/android/u/contact/util/ComparatorUser/instance Lcom/nd/android/u/contact/util/ComparatorUser;
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

.method public static getInstance()Lcom/nd/android/u/contact/util/ComparatorUser;
getstatic com/nd/android/u/contact/util/ComparatorUser/instance Lcom/nd/android/u/contact/util/ComparatorUser;
areturn
.limit locals 0
.limit stack 1
.end method

.method public compare(Ljava/lang/Long;Ljava/lang/Long;)I
aload 1
invokevirtual java/lang/Long/longValue()J
aload 2
invokevirtual java/lang/Long/longValue()J
lsub
l2i
ireturn
.limit locals 3
.limit stack 4
.end method

.method public volatile synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
aload 0
aload 1
checkcast java/lang/Long
aload 2
checkcast java/lang/Long
invokevirtual com/nd/android/u/contact/util/ComparatorUser/compare(Ljava/lang/Long;Ljava/lang/Long;)I
ireturn
.limit locals 3
.limit stack 3
.end method
