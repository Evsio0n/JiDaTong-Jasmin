.bytecode 50.0
.class public synchronized com/common/android/ui/LocalAlbum/LocalImageController
.super java/lang/Object
.inner class inner com/common/android/ui/LocalAlbum/LocalImageController$1

.field private static 'sInstance' Lcom/common/android/ui/LocalAlbum/LocalImageController;

.field private 'mObservers' Ljava/util/HashSet; signature "Ljava/util/HashSet<Ljava/util/Observer;>;"

.field private 'mPbq' Ljava/util/concurrent/PriorityBlockingQueue; signature "Ljava/util/concurrent/PriorityBlockingQueue<Lcom/common/android/ui/LocalAlbum/SortedMediaFiles;>;"

.method static <clinit>()V
new com/common/android/ui/LocalAlbum/LocalImageController
dup
invokespecial com/common/android/ui/LocalAlbum/LocalImageController/<init>()V
putstatic com/common/android/ui/LocalAlbum/LocalImageController/sInstance Lcom/common/android/ui/LocalAlbum/LocalImageController;
return
.limit locals 0
.limit stack 2
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/HashSet
dup
invokespecial java/util/HashSet/<init>()V
putfield com/common/android/ui/LocalAlbum/LocalImageController/mObservers Ljava/util/HashSet;
aload 0
new java/util/concurrent/PriorityBlockingQueue
dup
bipush 11
new com/common/android/ui/LocalAlbum/LocalImageController$1
dup
aload 0
invokespecial com/common/android/ui/LocalAlbum/LocalImageController$1/<init>(Lcom/common/android/ui/LocalAlbum/LocalImageController;)V
invokespecial java/util/concurrent/PriorityBlockingQueue/<init>(ILjava/util/Comparator;)V
putfield com/common/android/ui/LocalAlbum/LocalImageController/mPbq Ljava/util/concurrent/PriorityBlockingQueue;
return
.limit locals 1
.limit stack 7
.end method

.method public static getInstance()Lcom/common/android/ui/LocalAlbum/LocalImageController;
getstatic com/common/android/ui/LocalAlbum/LocalImageController/sInstance Lcom/common/android/ui/LocalAlbum/LocalImageController;
areturn
.limit locals 0
.limit stack 1
.end method

.method public addMediaFile(Lcom/common/android/ui/LocalAlbum/SortedMediaFiles;)V
aload 0
getfield com/common/android/ui/LocalAlbum/LocalImageController/mPbq Ljava/util/concurrent/PriorityBlockingQueue;
aload 1
invokevirtual java/util/concurrent/PriorityBlockingQueue/add(Ljava/lang/Object;)Z
pop
return
.limit locals 2
.limit stack 2
.end method

.method public addObserver(Ljava/util/Observer;)V
aload 0
getfield com/common/android/ui/LocalAlbum/LocalImageController/mObservers Ljava/util/HashSet;
aload 1
invokevirtual java/util/HashSet/add(Ljava/lang/Object;)Z
pop
return
.limit locals 2
.limit stack 2
.end method

.method public clearLocalMedia()V
aload 0
getfield com/common/android/ui/LocalAlbum/LocalImageController/mPbq Ljava/util/concurrent/PriorityBlockingQueue;
invokevirtual java/util/concurrent/PriorityBlockingQueue/clear()V
return
.limit locals 1
.limit stack 1
.end method

.method public delObserver(Ljava/util/Observer;)V
aload 0
getfield com/common/android/ui/LocalAlbum/LocalImageController/mObservers Ljava/util/HashSet;
aload 1
invokevirtual java/util/HashSet/remove(Ljava/lang/Object;)Z
pop
return
.limit locals 2
.limit stack 2
.end method

.method public getMediaFiles()Ljava/util/ArrayList;
.signature "()Ljava/util/ArrayList<Lcom/common/android/ui/LocalAlbum/SortedMediaFiles;>;"
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
aload 0
getfield com/common/android/ui/LocalAlbum/LocalImageController/mPbq Ljava/util/concurrent/PriorityBlockingQueue;
invokevirtual java/util/concurrent/PriorityBlockingQueue/poll()Ljava/lang/Object;
checkcast com/common/android/ui/LocalAlbum/SortedMediaFiles
astore 1
L0:
aload 1
ifnull L1
aload 2
aload 1
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
getfield com/common/android/ui/LocalAlbum/LocalImageController/mPbq Ljava/util/concurrent/PriorityBlockingQueue;
invokevirtual java/util/concurrent/PriorityBlockingQueue/poll()Ljava/lang/Object;
checkcast com/common/android/ui/LocalAlbum/SortedMediaFiles
astore 1
goto L0
L1:
aload 2
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 1
L2:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L3
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/common/android/ui/LocalAlbum/SortedMediaFiles
astore 3
aload 0
getfield com/common/android/ui/LocalAlbum/LocalImageController/mPbq Ljava/util/concurrent/PriorityBlockingQueue;
aload 3
invokevirtual java/util/concurrent/PriorityBlockingQueue/add(Ljava/lang/Object;)Z
pop
goto L2
L3:
aload 2
areturn
.limit locals 4
.limit stack 2
.end method

.method public getMediaFilesByCameraFirst()Ljava/util/ArrayList;
.signature "()Ljava/util/ArrayList<Lcom/common/android/ui/LocalAlbum/SortedMediaFiles;>;"
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
iconst_m1
istore 1
aload 0
getfield com/common/android/ui/LocalAlbum/LocalImageController/mPbq Ljava/util/concurrent/PriorityBlockingQueue;
invokevirtual java/util/concurrent/PriorityBlockingQueue/poll()Ljava/lang/Object;
checkcast com/common/android/ui/LocalAlbum/SortedMediaFiles
astore 2
L0:
aload 2
ifnull L1
aload 2
invokevirtual com/common/android/ui/LocalAlbum/SortedMediaFiles/isTheCameraPath()Z
ifeq L2
aload 3
invokevirtual java/util/ArrayList/size()I
istore 1
L2:
aload 3
aload 2
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
getfield com/common/android/ui/LocalAlbum/LocalImageController/mPbq Ljava/util/concurrent/PriorityBlockingQueue;
invokevirtual java/util/concurrent/PriorityBlockingQueue/poll()Ljava/lang/Object;
checkcast com/common/android/ui/LocalAlbum/SortedMediaFiles
astore 2
goto L0
L1:
aload 3
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 2
L3:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/common/android/ui/LocalAlbum/SortedMediaFiles
astore 4
aload 0
getfield com/common/android/ui/LocalAlbum/LocalImageController/mPbq Ljava/util/concurrent/PriorityBlockingQueue;
aload 4
invokevirtual java/util/concurrent/PriorityBlockingQueue/add(Ljava/lang/Object;)Z
pop
goto L3
L4:
iconst_m1
iload 1
if_icmpeq L5
aload 3
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/common/android/ui/LocalAlbum/SortedMediaFiles
astore 2
aload 3
iload 1
invokevirtual java/util/ArrayList/remove(I)Ljava/lang/Object;
pop
aload 3
iconst_0
aload 2
invokevirtual java/util/ArrayList/add(ILjava/lang/Object;)V
L5:
aload 3
areturn
.limit locals 5
.limit stack 3
.end method

.method public getPbq()Ljava/util/concurrent/PriorityBlockingQueue;
.signature "()Ljava/util/concurrent/PriorityBlockingQueue<Lcom/common/android/ui/LocalAlbum/SortedMediaFiles;>;"
aload 0
getfield com/common/android/ui/LocalAlbum/LocalImageController/mPbq Ljava/util/concurrent/PriorityBlockingQueue;
areturn
.limit locals 1
.limit stack 1
.end method

.method public notifyObservers()V
aload 0
getfield com/common/android/ui/LocalAlbum/LocalImageController/mObservers Ljava/util/HashSet;
invokevirtual java/util/HashSet/iterator()Ljava/util/Iterator;
astore 1
L0:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Observer
aconst_null
aconst_null
invokeinterface java/util/Observer/update(Ljava/util/Observable;Ljava/lang/Object;)V 2
goto L0
L1:
return
.limit locals 2
.limit stack 3
.end method
