.bytecode 50.0
.class public synchronized com/nd/teamfile/Env
.super java/lang/Object

.field public static 'LOGIN_TYPE' I

.field public static 'category' I

.field public static 'founderUids' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/lang/Long;>;"

.field public static 'gid' J

.field public static 'qid' J

.method static <clinit>()V
getstatic com/product/android/business/config/Configuration/LOGIN_TYPE I
putstatic com/nd/teamfile/Env/LOGIN_TYPE I
return
.limit locals 0
.limit stack 1
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method
