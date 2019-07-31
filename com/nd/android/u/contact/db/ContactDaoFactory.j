.bytecode 50.0
.class public synchronized com/nd/android/u/contact/db/ContactDaoFactory
.super java/lang/Object
.inner class static final inner com/nd/android/u/contact/db/ContactDaoFactory$1
.inner class static final inner com/nd/android/u/contact/db/ContactDaoFactory$2

.field private static 'daoProperties' Ljava/util/Map; signature "Ljava/util/Map<Ljava/lang/Class;Ljava/lang/String;>;"

.field private static 'modleDBNameProperties' Ljava/util/Map; signature "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"

.method static <clinit>()V
new com/nd/android/u/contact/db/ContactDaoFactory$1
dup
invokespecial com/nd/android/u/contact/db/ContactDaoFactory$1/<init>()V
putstatic com/nd/android/u/contact/db/ContactDaoFactory/daoProperties Ljava/util/Map;
new com/nd/android/u/contact/db/ContactDaoFactory$2
dup
invokespecial com/nd/android/u/contact/db/ContactDaoFactory$2/<init>()V
putstatic com/nd/android/u/contact/db/ContactDaoFactory/modleDBNameProperties Ljava/util/Map;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getImpl(Ljava/lang/Class;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)TT;"
.catch java/lang/Exception from L0 to L1 using L2
getstatic com/nd/android/u/contact/db/ContactDaoFactory/daoProperties Ljava/util/Map;
aload 0
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/String
astore 0
L0:
aload 0
invokestatic java/lang/Class/forName(Ljava/lang/String;)Ljava/lang/Class;
invokevirtual java/lang/Class/newInstance()Ljava/lang/Object;
astore 0
L1:
aload 0
areturn
L2:
astore 0
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
aconst_null
areturn
.limit locals 1
.limit stack 2
.end method

.method public static getModleDBName(Ljava/lang/String;)Ljava/lang/String;
getstatic com/nd/android/u/contact/db/ContactDaoFactory/modleDBNameProperties Ljava/util/Map;
aload 0
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/String
areturn
.limit locals 1
.limit stack 2
.end method
