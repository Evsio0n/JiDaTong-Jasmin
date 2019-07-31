.bytecode 50.0
.class public synchronized com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache
.super java/lang/Object
.inner class inner com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache$1
.inner class inner com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache$2
.inner class inner com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache$2$1
.inner class public static abstract interface OnGetDrawableSucess inner com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache$OnGetDrawableSucess outer com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache

.field private static 'instance' Lcom/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache;

.field private 'photoCache' Ljava/util/Map; signature "Ljava/util/Map<Ljava/lang/Long;Landroid/graphics/drawable/Drawable;>;"

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache/photoCache Ljava/util/Map;
return
.limit locals 1
.limit stack 3
.end method

.method static synthetic access$000(Lcom/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache;Landroid/os/Handler;Landroid/graphics/drawable/Drawable;Lcom/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache$OnGetDrawableSucess;)V
aload 0
aload 1
aload 2
aload 3
invokespecial com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache/callBack(Landroid/os/Handler;Landroid/graphics/drawable/Drawable;Lcom/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache$OnGetDrawableSucess;)V
return
.limit locals 4
.limit stack 4
.end method

.method private callBack(Landroid/os/Handler;Landroid/graphics/drawable/Drawable;Lcom/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache$OnGetDrawableSucess;)V
new com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache$2
dup
aload 0
aload 1
aload 3
aload 2
invokespecial com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache$2/<init>(Lcom/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache;Landroid/os/Handler;Lcom/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache$OnGetDrawableSucess;Landroid/graphics/drawable/Drawable;)V
invokestatic com/nd/android/u/ui/activity/chat_relative_image/util/ThreadUtil/execute(Ljava/lang/Runnable;)V
return
.limit locals 4
.limit stack 6
.end method

.method public static getInstance()Lcom/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache;
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
getstatic com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache/instance Lcom/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache;
ifnonnull L1
ldc com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache
monitorenter
L0:
new com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache
dup
invokespecial com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache/<init>()V
putstatic com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache/instance Lcom/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache;
ldc com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache
monitorexit
L1:
getstatic com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache/instance Lcom/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache;
areturn
L2:
astore 0
L3:
ldc com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache
monitorexit
L4:
aload 0
athrow
.limit locals 1
.limit stack 2
.end method

.method public clearCache()V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache/photoCache Ljava/util/Map;
invokeinterface java/util/Map/clear()V 0
return
.limit locals 1
.limit stack 1
.end method

.method public getDrawable(J)Landroid/graphics/drawable/Drawable;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache/photoCache Ljava/util/Map;
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast android/graphics/drawable/Drawable
areturn
.limit locals 3
.limit stack 3
.end method

.method public putCache(JLandroid/graphics/drawable/Drawable;)V
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache/photoCache Ljava/util/Map;
astore 4
aload 4
monitorenter
L0:
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache/photoCache Ljava/util/Map;
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aload 3
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 4
monitorexit
L1:
return
L2:
astore 3
L3:
aload 4
monitorexit
L4:
aload 3
athrow
.limit locals 5
.limit stack 3
.end method

.method public synchronizedSetDrawable(Landroid/content/Context;Landroid/os/Handler;JIILcom/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache$OnGetDrawableSucess;)V
new com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache$1
dup
aload 0
aload 1
lload 3
iload 5
iload 6
aload 2
aload 7
invokespecial com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache$1/<init>(Lcom/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache;Landroid/content/Context;JIILandroid/os/Handler;Lcom/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache$OnGetDrawableSucess;)V
invokestatic com/nd/android/u/ui/activity/chat_relative_image/util/ThreadUtil/executeFix(Ljava/lang/Runnable;)V
return
.limit locals 8
.limit stack 10
.end method
