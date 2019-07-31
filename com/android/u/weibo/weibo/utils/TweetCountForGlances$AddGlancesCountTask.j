.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/utils/TweetCountForGlances$AddGlancesCountTask
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Boolean;>;"
.inner class private AddGlancesCountTask inner com/android/u/weibo/weibo/utils/TweetCountForGlances$AddGlancesCountTask outer com/android/u/weibo/weibo/utils/TweetCountForGlances

.field private 'mAddList' Ljava/util/List; signature "Ljava/util/List<Ljava/util/Set<Ljava/lang/Long;>;>;"

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/utils/TweetCountForGlances;

.method public <init>(Lcom/android/u/weibo/weibo/utils/TweetCountForGlances;Ljava/util/List;)V
.signature "(Ljava/util/List<Ljava/util/Set<Ljava/lang/Long;>;>;)V"
aload 0
aload 1
putfield com/android/u/weibo/weibo/utils/TweetCountForGlances$AddGlancesCountTask/this$0 Lcom/android/u/weibo/weibo/utils/TweetCountForGlances;
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
aload 0
aconst_null
putfield com/android/u/weibo/weibo/utils/TweetCountForGlances$AddGlancesCountTask/mAddList Ljava/util/List;
aload 0
aload 2
putfield com/android/u/weibo/weibo/utils/TweetCountForGlances$AddGlancesCountTask/mAddList Ljava/util/List;
return
.limit locals 3
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
.catch com/android/u/weibo/weibo/controller/WeiBoException from L0 to L1 using L2
.catch com/android/u/weibo/weibo/controller/WeiBoException from L1 to L3 using L2
aload 0
getfield com/android/u/weibo/weibo/utils/TweetCountForGlances$AddGlancesCountTask/this$0 Lcom/android/u/weibo/weibo/utils/TweetCountForGlances;
invokestatic com/android/u/weibo/weibo/utils/TweetCountForGlances/access$000(Lcom/android/u/weibo/weibo/utils/TweetCountForGlances;)Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/controller/NdWeiboManager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
astore 1
aload 0
getfield com/android/u/weibo/weibo/utils/TweetCountForGlances$AddGlancesCountTask/mAddList Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L4:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L5
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Set
astore 3
aload 3
invokeinterface java/util/Set/isEmpty()Z 0
ifne L4
L0:
aload 1
aload 3
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/addGlanceCount(Ljava/util/Set;)Z
ifne L1
ldc "AddGlancesCountTask"
ldc "fail!!!"
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
iconst_0
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
areturn
L1:
ldc "AddGlancesCountTask"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
invokeinterface java/util/Set/size()I 0
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
L3:
goto L4
L2:
astore 3
aload 3
invokevirtual com/android/u/weibo/weibo/controller/WeiBoException/printStackTrace()V
goto L4
L5:
iconst_1
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
areturn
.limit locals 4
.limit stack 3
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/android/u/weibo/weibo/utils/TweetCountForGlances$AddGlancesCountTask/doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
areturn
.limit locals 2
.limit stack 2
.end method
