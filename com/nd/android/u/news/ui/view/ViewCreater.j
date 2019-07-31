.bytecode 50.0
.class public synchronized com/nd/android/u/news/ui/view/ViewCreater
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public createNewsView(Ljava/lang/String;Landroid/content/Context;)Lcom/nd/android/u/news/ui/view/AbstractNewsView;
.signature "<T:Lcom/nd/android/u/news/ui/view/AbstractNewsView;>(Ljava/lang/String;Landroid/content/Context;)TT;"
.catch java/lang/ClassNotFoundException from L0 to L1 using L2
.catch java/lang/NoSuchMethodException from L0 to L1 using L3
.catch java/lang/IllegalArgumentException from L0 to L1 using L4
.catch java/lang/InstantiationException from L0 to L1 using L5
.catch java/lang/IllegalAccessException from L0 to L1 using L6
.catch java/lang/reflect/InvocationTargetException from L0 to L1 using L7
.catch java/lang/ClassNotFoundException from L1 to L8 using L2
.catch java/lang/NoSuchMethodException from L1 to L8 using L3
.catch java/lang/IllegalArgumentException from L1 to L8 using L4
.catch java/lang/InstantiationException from L1 to L8 using L5
.catch java/lang/IllegalAccessException from L1 to L8 using L6
.catch java/lang/reflect/InvocationTargetException from L1 to L8 using L7
.catch java/lang/ClassNotFoundException from L8 to L9 using L2
.catch java/lang/NoSuchMethodException from L8 to L9 using L3
.catch java/lang/IllegalArgumentException from L8 to L9 using L4
.catch java/lang/InstantiationException from L8 to L9 using L5
.catch java/lang/IllegalAccessException from L8 to L9 using L6
.catch java/lang/reflect/InvocationTargetException from L8 to L9 using L7
L0:
ldc "gallery"
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L8
ldc com/nd/android/u/news/ui/view/NewsView
invokevirtual java/lang/Class/getName()Ljava/lang/String;
invokestatic java/lang/Class/forName(Ljava/lang/String;)Ljava/lang/Class;
astore 1
L1:
aload 1
iconst_1
anewarray java/lang/Class
dup
iconst_0
ldc android/content/Context
aastore
invokevirtual java/lang/Class/getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 2
aastore
invokevirtual java/lang/reflect/Constructor/newInstance([Ljava/lang/Object;)Ljava/lang/Object;
checkcast com/nd/android/u/news/ui/view/AbstractNewsView
areturn
L8:
ldc com/nd/android/u/news/ui/view/ShowPicView
invokevirtual java/lang/Class/getName()Ljava/lang/String;
invokestatic java/lang/Class/forName(Ljava/lang/String;)Ljava/lang/Class;
astore 1
L9:
goto L1
L2:
astore 1
aload 1
invokevirtual java/lang/ClassNotFoundException/printStackTrace()V
aconst_null
areturn
L3:
astore 1
aload 1
invokevirtual java/lang/NoSuchMethodException/printStackTrace()V
aconst_null
areturn
L4:
astore 1
aload 1
invokevirtual java/lang/IllegalArgumentException/printStackTrace()V
aconst_null
areturn
L5:
astore 1
aload 1
invokevirtual java/lang/InstantiationException/printStackTrace()V
aconst_null
areturn
L6:
astore 1
aload 1
invokevirtual java/lang/IllegalAccessException/printStackTrace()V
aconst_null
areturn
L7:
astore 1
aload 1
invokevirtual java/lang/reflect/InvocationTargetException/printStackTrace()V
aconst_null
areturn
.limit locals 3
.limit stack 5
.end method
