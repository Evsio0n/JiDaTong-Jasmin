.bytecode 50.0
.class public final synchronized com/nd/android/u/contact/cache/ClassRelationCache
.super java/lang/Object

.field private static 'instance' Lcom/nd/android/u/contact/cache/ClassRelationCache;

.field private static 'mCache' Ljava/util/Map; signature "Ljava/util/Map<Lcom/nd/android/u/contact/cache/Node;Ljava/lang/String;>;"

.method static <clinit>()V
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putstatic com/nd/android/u/contact/cache/ClassRelationCache/mCache Ljava/util/Map;
new com/nd/android/u/contact/cache/ClassRelationCache
dup
invokespecial com/nd/android/u/contact/cache/ClassRelationCache/<init>()V
putstatic com/nd/android/u/contact/cache/ClassRelationCache/instance Lcom/nd/android/u/contact/cache/ClassRelationCache;
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

.method public static getInstance()Lcom/nd/android/u/contact/cache/ClassRelationCache;
getstatic com/nd/android/u/contact/cache/ClassRelationCache/instance Lcom/nd/android/u/contact/cache/ClassRelationCache;
areturn
.limit locals 0
.limit stack 1
.end method

.method public clear()V
getstatic com/nd/android/u/contact/cache/ClassRelationCache/mCache Ljava/util/Map;
invokeinterface java/util/Map/clear()V 0
return
.limit locals 1
.limit stack 1
.end method

.method public get(JI)Ljava/lang/String;
new com/nd/android/u/contact/cache/Node
dup
lload 1
iload 3
invokespecial com/nd/android/u/contact/cache/Node/<init>(JI)V
astore 4
getstatic com/nd/android/u/contact/cache/ClassRelationCache/mCache Ljava/util/Map;
aload 4
invokeinterface java/util/Map/containsKey(Ljava/lang/Object;)Z 1
ifeq L0
getstatic com/nd/android/u/contact/cache/ClassRelationCache/mCache Ljava/util/Map;
aload 4
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/String
areturn
L0:
ldc com/nd/android/u/contact/dao/OapClassRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapClassRelationDao
lload 1
iload 3
invokeinterface com/nd/android/u/contact/dao/OapClassRelationDao/getClassRelationCourseName(JI)Ljava/lang/String; 3
astore 4
aload 4
ifnull L1
ldc ""
aload 4
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L1
getstatic com/nd/android/u/contact/cache/ClassRelationCache/mCache Ljava/util/Map;
new com/nd/android/u/contact/cache/Node
dup
lload 1
iload 3
invokespecial com/nd/android/u/contact/cache/Node/<init>(JI)V
aload 4
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 4
areturn
L1:
aconst_null
areturn
.limit locals 5
.limit stack 6
.end method

.method public put(JILjava/lang/String;)V
new com/nd/android/u/contact/cache/Node
dup
lload 1
iload 3
invokespecial com/nd/android/u/contact/cache/Node/<init>(JI)V
astore 5
getstatic com/nd/android/u/contact/cache/ClassRelationCache/mCache Ljava/util/Map;
aload 5
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/String
astore 6
aload 6
ifnull L0
ldc ""
aload 6
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 6
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
pop
L0:
getstatic com/nd/android/u/contact/cache/ClassRelationCache/mCache Ljava/util/Map;
aload 5
aload 4
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
return
.limit locals 7
.limit stack 5
.end method
