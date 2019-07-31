.bytecode 50.0
.class public synchronized com/nd/android/u/publicNumber/ui/widget/PspAudioPlayerManager
.super java/lang/Object
.inner class private AudioPlayListener inner com/nd/android/u/publicNumber/ui/widget/PspAudioPlayerManager$AudioPlayListener outer com/nd/android/u/publicNumber/ui/widget/PspAudioPlayerManager

.field private static 'audioManger' Lcom/nd/android/u/publicNumber/ui/widget/PspAudioPlayerManager;

.field private 'pspAudioViews' Ljava/util/Map; signature "Ljava/util/Map<Ljava/lang/Long;Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView;>;"

.method static <clinit>()V
aconst_null
putstatic com/nd/android/u/publicNumber/ui/widget/PspAudioPlayerManager/audioManger Lcom/nd/android/u/publicNumber/ui/widget/PspAudioPlayerManager;
return
.limit locals 0
.limit stack 1
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/nd/android/u/publicNumber/ui/widget/PspAudioPlayerManager/pspAudioViews Ljava/util/Map;
return
.limit locals 1
.limit stack 3
.end method

.method public static getInstance()Lcom/nd/android/u/publicNumber/ui/widget/PspAudioPlayerManager;
getstatic com/nd/android/u/publicNumber/ui/widget/PspAudioPlayerManager/audioManger Lcom/nd/android/u/publicNumber/ui/widget/PspAudioPlayerManager;
ifnonnull L0
new com/nd/android/u/publicNumber/ui/widget/PspAudioPlayerManager
dup
invokespecial com/nd/android/u/publicNumber/ui/widget/PspAudioPlayerManager/<init>()V
putstatic com/nd/android/u/publicNumber/ui/widget/PspAudioPlayerManager/audioManger Lcom/nd/android/u/publicNumber/ui/widget/PspAudioPlayerManager;
L0:
getstatic com/nd/android/u/publicNumber/ui/widget/PspAudioPlayerManager/audioManger Lcom/nd/android/u/publicNumber/ui/widget/PspAudioPlayerManager;
areturn
.limit locals 0
.limit stack 2
.end method

.method private setAudioViewData(Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView;Lcom/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public;)V
new com/nd/android/u/publicNumber/controller/PspMediaFileDownloader
dup
aload 2
invokespecial com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/<init>(Lcom/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public;)V
astore 3
aload 3
invokevirtual com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/targetFileExist()Z
ifeq L0
aload 1
aload 3
invokevirtual com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/getFilePath()Ljava/lang/String;
invokevirtual com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/setData(Ljava/lang/String;)V
return
L0:
aload 1
aload 2
iconst_1
invokevirtual com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/getResource(I)Ljava/lang/String;
invokevirtual com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/setData(Ljava/lang/String;)V
return
.limit locals 4
.limit stack 3
.end method

.method public cleanAllAudioView()V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspAudioPlayerManager/pspAudioViews Ljava/util/Map;
invokeinterface java/util/Map/entrySet()Ljava/util/Set; 0
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 1
L0:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
checkcast com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView
invokevirtual com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/stopAudio()V
goto L0
L1:
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspAudioPlayerManager/pspAudioViews Ljava/util/Map;
invokeinterface java/util/Map/clear()V 0
return
.limit locals 2
.limit stack 1
.end method

.method public getPspAudioView(Lcom/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public;Landroid/content/Context;)Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView;
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspAudioPlayerManager/pspAudioViews Ljava/util/Map;
aload 1
invokevirtual com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/getMsgId()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/Map/containsKey(Ljava/lang/Object;)Z 1
ifeq L0
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspAudioPlayerManager/pspAudioViews Ljava/util/Map;
aload 1
invokevirtual com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/getMsgId()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView
areturn
L0:
new com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView
dup
aload 2
invokespecial com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/<init>(Landroid/content/Context;)V
astore 2
aload 0
aload 2
aload 1
invokespecial com/nd/android/u/publicNumber/ui/widget/PspAudioPlayerManager/setAudioViewData(Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView;Lcom/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public;)V
aload 2
new com/nd/android/u/publicNumber/ui/widget/PspAudioPlayerManager$AudioPlayListener
dup
aload 0
aload 1
invokespecial com/nd/android/u/publicNumber/ui/widget/PspAudioPlayerManager$AudioPlayListener/<init>(Lcom/nd/android/u/publicNumber/ui/widget/PspAudioPlayerManager;Lcom/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public;)V
invokevirtual com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/setPlayListener(Lcom/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView$PlayListener;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspAudioPlayerManager/pspAudioViews Ljava/util/Map;
aload 1
invokevirtual com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/getMsgId()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aload 2
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 2
areturn
.limit locals 3
.limit stack 5
.end method

.method public pauseAllAudio()V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspAudioPlayerManager/pspAudioViews Ljava/util/Map;
invokeinterface java/util/Map/entrySet()Ljava/util/Set; 0
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 1
L0:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
checkcast com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView
invokevirtual com/nd/android/u/publicNumber/ui/widget/PublicNumberAudioView/pauseAudio()V
goto L0
L1:
return
.limit locals 2
.limit stack 1
.end method
