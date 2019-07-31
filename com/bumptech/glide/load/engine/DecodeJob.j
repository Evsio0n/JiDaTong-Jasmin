.bytecode 50.0
.class synchronized com/bumptech/glide/load/engine/DecodeJob
.super java/lang/Object
.signature "<A:Ljava/lang/Object;T:Ljava/lang/Object;Z:Ljava/lang/Object;>Ljava/lang/Object;"
.inner class static abstract interface DiskCacheProvider inner com/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider outer com/bumptech/glide/load/engine/DecodeJob
.inner class static FileOpener inner com/bumptech/glide/load/engine/DecodeJob$FileOpener outer com/bumptech/glide/load/engine/DecodeJob
.inner class SourceWriter inner com/bumptech/glide/load/engine/DecodeJob$SourceWriter outer com/bumptech/glide/load/engine/DecodeJob

.field private static final 'DEFAULT_FILE_OPENER' Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;

.field private static final 'TAG' Ljava/lang/String; = "DecodeJob"

.field private final 'diskCacheProvider' Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

.field private final 'diskCacheStrategy' Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

.field private final 'fetcher' Lcom/bumptech/glide/load/data/DataFetcher; signature "Lcom/bumptech/glide/load/data/DataFetcher<TA;>;"

.field private final 'fileOpener' Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;

.field private final 'height' I

.field private volatile 'isCancelled' Z

.field private final 'loadProvider' Lcom/bumptech/glide/provider/DataLoadProvider; signature "Lcom/bumptech/glide/provider/DataLoadProvider<TA;TT;>;"

.field private final 'priority' Lcom/bumptech/glide/Priority;

.field private final 'resultKey' Lcom/bumptech/glide/load/engine/EngineKey;

.field private final 'transcoder' Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder; signature "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<TT;TZ;>;"

.field private final 'transformation' Lcom/bumptech/glide/load/Transformation; signature "Lcom/bumptech/glide/load/Transformation<TT;>;"

.field private final 'width' I

.method static <clinit>()V
new com/bumptech/glide/load/engine/DecodeJob$FileOpener
dup
invokespecial com/bumptech/glide/load/engine/DecodeJob$FileOpener/<init>()V
putstatic com/bumptech/glide/load/engine/DecodeJob/DEFAULT_FILE_OPENER Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>(Lcom/bumptech/glide/load/engine/EngineKey;IILcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/provider/DataLoadProvider;Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;Lcom/bumptech/glide/load/engine/DiskCacheStrategy;Lcom/bumptech/glide/Priority;)V
.signature "(Lcom/bumptech/glide/load/engine/EngineKey;IILcom/bumptech/glide/load/data/DataFetcher<TA;>;Lcom/bumptech/glide/provider/DataLoadProvider<TA;TT;>;Lcom/bumptech/glide/load/Transformation<TT;>;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<TT;TZ;>;Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;Lcom/bumptech/glide/load/engine/DiskCacheStrategy;Lcom/bumptech/glide/Priority;)V"
aload 0
aload 1
iload 2
iload 3
aload 4
aload 5
aload 6
aload 7
aload 8
aload 9
aload 10
getstatic com/bumptech/glide/load/engine/DecodeJob/DEFAULT_FILE_OPENER Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;
invokespecial com/bumptech/glide/load/engine/DecodeJob/<init>(Lcom/bumptech/glide/load/engine/EngineKey;IILcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/provider/DataLoadProvider;Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;Lcom/bumptech/glide/load/engine/DiskCacheStrategy;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;)V
return
.limit locals 11
.limit stack 12
.end method

.method <init>(Lcom/bumptech/glide/load/engine/EngineKey;IILcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/provider/DataLoadProvider;Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;Lcom/bumptech/glide/load/engine/DiskCacheStrategy;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;)V
.signature "(Lcom/bumptech/glide/load/engine/EngineKey;IILcom/bumptech/glide/load/data/DataFetcher<TA;>;Lcom/bumptech/glide/provider/DataLoadProvider<TA;TT;>;Lcom/bumptech/glide/load/Transformation<TT;>;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<TT;TZ;>;Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;Lcom/bumptech/glide/load/engine/DiskCacheStrategy;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/load/engine/DecodeJob/resultKey Lcom/bumptech/glide/load/engine/EngineKey;
aload 0
iload 2
putfield com/bumptech/glide/load/engine/DecodeJob/width I
aload 0
iload 3
putfield com/bumptech/glide/load/engine/DecodeJob/height I
aload 0
aload 4
putfield com/bumptech/glide/load/engine/DecodeJob/fetcher Lcom/bumptech/glide/load/data/DataFetcher;
aload 0
aload 5
putfield com/bumptech/glide/load/engine/DecodeJob/loadProvider Lcom/bumptech/glide/provider/DataLoadProvider;
aload 0
aload 6
putfield com/bumptech/glide/load/engine/DecodeJob/transformation Lcom/bumptech/glide/load/Transformation;
aload 0
aload 7
putfield com/bumptech/glide/load/engine/DecodeJob/transcoder Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
aload 0
aload 8
putfield com/bumptech/glide/load/engine/DecodeJob/diskCacheProvider Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;
aload 0
aload 9
putfield com/bumptech/glide/load/engine/DecodeJob/diskCacheStrategy Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
aload 0
aload 10
putfield com/bumptech/glide/load/engine/DecodeJob/priority Lcom/bumptech/glide/Priority;
aload 0
aload 11
putfield com/bumptech/glide/load/engine/DecodeJob/fileOpener Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;
return
.limit locals 12
.limit stack 2
.end method

.method static synthetic access$000(Lcom/bumptech/glide/load/engine/DecodeJob;)Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;
aload 0
getfield com/bumptech/glide/load/engine/DecodeJob/fileOpener Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;
areturn
.limit locals 1
.limit stack 1
.end method

.method private cacheAndDecodeSourceData(Ljava/lang/Object;)Lcom/bumptech/glide/load/engine/Resource;
.signature "(TA;)Lcom/bumptech/glide/load/engine/Resource<TT;>;"
.throws java/io/IOException
invokestatic com/bumptech/glide/util/LogTime/getLogTime()J
lstore 2
new com/bumptech/glide/load/engine/DecodeJob$SourceWriter
dup
aload 0
aload 0
getfield com/bumptech/glide/load/engine/DecodeJob/loadProvider Lcom/bumptech/glide/provider/DataLoadProvider;
invokeinterface com/bumptech/glide/provider/DataLoadProvider/getSourceEncoder()Lcom/bumptech/glide/load/Encoder; 0
aload 1
invokespecial com/bumptech/glide/load/engine/DecodeJob$SourceWriter/<init>(Lcom/bumptech/glide/load/engine/DecodeJob;Lcom/bumptech/glide/load/Encoder;Ljava/lang/Object;)V
astore 1
aload 0
getfield com/bumptech/glide/load/engine/DecodeJob/diskCacheProvider Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;
invokeinterface com/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider/getDiskCache()Lcom/bumptech/glide/load/engine/cache/DiskCache; 0
aload 0
getfield com/bumptech/glide/load/engine/DecodeJob/resultKey Lcom/bumptech/glide/load/engine/EngineKey;
invokevirtual com/bumptech/glide/load/engine/EngineKey/getOriginalKey()Lcom/bumptech/glide/load/Key;
aload 1
invokeinterface com/bumptech/glide/load/engine/cache/DiskCache/put(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/cache/DiskCache$Writer;)V 2
ldc "DecodeJob"
iconst_2
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L0
aload 0
ldc "Wrote source to cache"
lload 2
invokespecial com/bumptech/glide/load/engine/DecodeJob/logWithTimeAndKey(Ljava/lang/String;J)V
L0:
invokestatic com/bumptech/glide/util/LogTime/getLogTime()J
lstore 2
aload 0
aload 0
getfield com/bumptech/glide/load/engine/DecodeJob/resultKey Lcom/bumptech/glide/load/engine/EngineKey;
invokevirtual com/bumptech/glide/load/engine/EngineKey/getOriginalKey()Lcom/bumptech/glide/load/Key;
invokespecial com/bumptech/glide/load/engine/DecodeJob/loadFromCache(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/Resource;
astore 1
ldc "DecodeJob"
iconst_2
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L1
aload 1
ifnull L1
aload 0
ldc "Decoded source from cache"
lload 2
invokespecial com/bumptech/glide/load/engine/DecodeJob/logWithTimeAndKey(Ljava/lang/String;J)V
L1:
aload 1
areturn
.limit locals 4
.limit stack 5
.end method

.method private decodeFromSourceData(Ljava/lang/Object;)Lcom/bumptech/glide/load/engine/Resource;
.signature "(TA;)Lcom/bumptech/glide/load/engine/Resource<TT;>;"
.throws java/io/IOException
aload 0
getfield com/bumptech/glide/load/engine/DecodeJob/diskCacheStrategy Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
invokevirtual com/bumptech/glide/load/engine/DiskCacheStrategy/cacheSource()Z
ifeq L0
aload 0
aload 1
invokespecial com/bumptech/glide/load/engine/DecodeJob/cacheAndDecodeSourceData(Ljava/lang/Object;)Lcom/bumptech/glide/load/engine/Resource;
astore 1
L1:
aload 1
areturn
L0:
invokestatic com/bumptech/glide/util/LogTime/getLogTime()J
lstore 2
aload 0
getfield com/bumptech/glide/load/engine/DecodeJob/loadProvider Lcom/bumptech/glide/provider/DataLoadProvider;
invokeinterface com/bumptech/glide/provider/DataLoadProvider/getSourceDecoder()Lcom/bumptech/glide/load/ResourceDecoder; 0
aload 1
aload 0
getfield com/bumptech/glide/load/engine/DecodeJob/width I
aload 0
getfield com/bumptech/glide/load/engine/DecodeJob/height I
invokeinterface com/bumptech/glide/load/ResourceDecoder/decode(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource; 3
astore 4
aload 4
astore 1
ldc "DecodeJob"
iconst_2
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L1
aload 0
ldc "Decoded from source"
lload 2
invokespecial com/bumptech/glide/load/engine/DecodeJob/logWithTimeAndKey(Ljava/lang/String;J)V
aload 4
areturn
.limit locals 5
.limit stack 4
.end method

.method private decodeSource()Lcom/bumptech/glide/load/engine/Resource;
.signature "()Lcom/bumptech/glide/load/engine/Resource<TT;>;"
.throws java/lang/Exception
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L4 to L5 using L2
L0:
invokestatic com/bumptech/glide/util/LogTime/getLogTime()J
lstore 1
aload 0
getfield com/bumptech/glide/load/engine/DecodeJob/fetcher Lcom/bumptech/glide/load/data/DataFetcher;
aload 0
getfield com/bumptech/glide/load/engine/DecodeJob/priority Lcom/bumptech/glide/Priority;
invokeinterface com/bumptech/glide/load/data/DataFetcher/loadData(Lcom/bumptech/glide/Priority;)Ljava/lang/Object; 1
astore 4
ldc "DecodeJob"
iconst_2
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L1
aload 0
ldc "Fetched data"
lload 1
invokespecial com/bumptech/glide/load/engine/DecodeJob/logWithTimeAndKey(Ljava/lang/String;J)V
L1:
aload 0
getfield com/bumptech/glide/load/engine/DecodeJob/isCancelled Z
istore 3
L3:
iload 3
ifeq L4
aload 0
getfield com/bumptech/glide/load/engine/DecodeJob/fetcher Lcom/bumptech/glide/load/data/DataFetcher;
invokeinterface com/bumptech/glide/load/data/DataFetcher/cleanup()V 0
aconst_null
areturn
L4:
aload 0
aload 4
invokespecial com/bumptech/glide/load/engine/DecodeJob/decodeFromSourceData(Ljava/lang/Object;)Lcom/bumptech/glide/load/engine/Resource;
astore 4
L5:
aload 0
getfield com/bumptech/glide/load/engine/DecodeJob/fetcher Lcom/bumptech/glide/load/data/DataFetcher;
invokeinterface com/bumptech/glide/load/data/DataFetcher/cleanup()V 0
aload 4
areturn
L2:
astore 4
aload 0
getfield com/bumptech/glide/load/engine/DecodeJob/fetcher Lcom/bumptech/glide/load/data/DataFetcher;
invokeinterface com/bumptech/glide/load/data/DataFetcher/cleanup()V 0
aload 4
athrow
.limit locals 5
.limit stack 4
.end method

.method private loadFromCache(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/Resource;
.signature "(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/Resource<TT;>;"
.throws java/io/IOException
.catch all from L0 to L1 using L2
aload 0
getfield com/bumptech/glide/load/engine/DecodeJob/diskCacheProvider Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;
invokeinterface com/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider/getDiskCache()Lcom/bumptech/glide/load/engine/cache/DiskCache; 0
aload 1
invokeinterface com/bumptech/glide/load/engine/cache/DiskCache/get(Lcom/bumptech/glide/load/Key;)Ljava/io/File; 1
astore 2
aload 2
ifnonnull L0
aconst_null
astore 2
L3:
aload 2
areturn
L0:
aload 0
getfield com/bumptech/glide/load/engine/DecodeJob/loadProvider Lcom/bumptech/glide/provider/DataLoadProvider;
invokeinterface com/bumptech/glide/provider/DataLoadProvider/getCacheDecoder()Lcom/bumptech/glide/load/ResourceDecoder; 0
aload 2
aload 0
getfield com/bumptech/glide/load/engine/DecodeJob/width I
aload 0
getfield com/bumptech/glide/load/engine/DecodeJob/height I
invokeinterface com/bumptech/glide/load/ResourceDecoder/decode(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource; 3
astore 3
L1:
aload 3
astore 2
aload 3
ifnonnull L3
aload 0
getfield com/bumptech/glide/load/engine/DecodeJob/diskCacheProvider Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;
invokeinterface com/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider/getDiskCache()Lcom/bumptech/glide/load/engine/cache/DiskCache; 0
aload 1
invokeinterface com/bumptech/glide/load/engine/cache/DiskCache/delete(Lcom/bumptech/glide/load/Key;)V 1
aload 3
areturn
L2:
astore 2
iconst_0
ifne L4
aload 0
getfield com/bumptech/glide/load/engine/DecodeJob/diskCacheProvider Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;
invokeinterface com/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider/getDiskCache()Lcom/bumptech/glide/load/engine/cache/DiskCache; 0
aload 1
invokeinterface com/bumptech/glide/load/engine/cache/DiskCache/delete(Lcom/bumptech/glide/load/Key;)V 1
L4:
aload 2
athrow
.limit locals 4
.limit stack 4
.end method

.method private logWithTimeAndKey(Ljava/lang/String;J)V
ldc "DecodeJob"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " in "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 2
invokestatic com/bumptech/glide/util/LogTime/getElapsedMillis(J)D
invokevirtual java/lang/StringBuilder/append(D)Ljava/lang/StringBuilder;
ldc ", key: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/bumptech/glide/load/engine/DecodeJob/resultKey Lcom/bumptech/glide/load/engine/EngineKey;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
return
.limit locals 4
.limit stack 4
.end method

.method private transcode(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;
.signature "(Lcom/bumptech/glide/load/engine/Resource<TT;>;)Lcom/bumptech/glide/load/engine/Resource<TZ;>;"
aload 1
ifnonnull L0
aconst_null
areturn
L0:
aload 0
getfield com/bumptech/glide/load/engine/DecodeJob/transcoder Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
aload 1
invokeinterface com/bumptech/glide/load/resource/transcode/ResourceTranscoder/transcode(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource; 1
areturn
.limit locals 2
.limit stack 2
.end method

.method private transform(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;
.signature "(Lcom/bumptech/glide/load/engine/Resource<TT;>;)Lcom/bumptech/glide/load/engine/Resource<TT;>;"
aload 1
ifnonnull L0
aconst_null
astore 2
L1:
aload 2
areturn
L0:
aload 0
getfield com/bumptech/glide/load/engine/DecodeJob/transformation Lcom/bumptech/glide/load/Transformation;
aload 1
aload 0
getfield com/bumptech/glide/load/engine/DecodeJob/width I
aload 0
getfield com/bumptech/glide/load/engine/DecodeJob/height I
invokeinterface com/bumptech/glide/load/Transformation/transform(Lcom/bumptech/glide/load/engine/Resource;II)Lcom/bumptech/glide/load/engine/Resource; 3
astore 3
aload 3
astore 2
aload 1
aload 3
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifne L1
aload 1
invokeinterface com/bumptech/glide/load/engine/Resource/recycle()V 0
aload 3
areturn
.limit locals 4
.limit stack 4
.end method

.method private transformEncodeAndTranscode(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;
.signature "(Lcom/bumptech/glide/load/engine/Resource<TT;>;)Lcom/bumptech/glide/load/engine/Resource<TZ;>;"
invokestatic com/bumptech/glide/util/LogTime/getLogTime()J
lstore 2
aload 0
aload 1
invokespecial com/bumptech/glide/load/engine/DecodeJob/transform(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;
astore 1
ldc "DecodeJob"
iconst_2
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L0
aload 0
ldc "Transformed resource from source"
lload 2
invokespecial com/bumptech/glide/load/engine/DecodeJob/logWithTimeAndKey(Ljava/lang/String;J)V
L0:
aload 0
aload 1
invokespecial com/bumptech/glide/load/engine/DecodeJob/writeTransformedToCache(Lcom/bumptech/glide/load/engine/Resource;)V
invokestatic com/bumptech/glide/util/LogTime/getLogTime()J
lstore 2
aload 0
aload 1
invokespecial com/bumptech/glide/load/engine/DecodeJob/transcode(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;
astore 1
ldc "DecodeJob"
iconst_2
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L1
aload 0
ldc "Transcoded transformed from source"
lload 2
invokespecial com/bumptech/glide/load/engine/DecodeJob/logWithTimeAndKey(Ljava/lang/String;J)V
L1:
aload 1
areturn
.limit locals 4
.limit stack 4
.end method

.method private writeTransformedToCache(Lcom/bumptech/glide/load/engine/Resource;)V
.signature "(Lcom/bumptech/glide/load/engine/Resource<TT;>;)V"
aload 1
ifnull L0
aload 0
getfield com/bumptech/glide/load/engine/DecodeJob/diskCacheStrategy Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
invokevirtual com/bumptech/glide/load/engine/DiskCacheStrategy/cacheResult()Z
ifne L1
L0:
return
L1:
invokestatic com/bumptech/glide/util/LogTime/getLogTime()J
lstore 2
new com/bumptech/glide/load/engine/DecodeJob$SourceWriter
dup
aload 0
aload 0
getfield com/bumptech/glide/load/engine/DecodeJob/loadProvider Lcom/bumptech/glide/provider/DataLoadProvider;
invokeinterface com/bumptech/glide/provider/DataLoadProvider/getEncoder()Lcom/bumptech/glide/load/ResourceEncoder; 0
aload 1
invokespecial com/bumptech/glide/load/engine/DecodeJob$SourceWriter/<init>(Lcom/bumptech/glide/load/engine/DecodeJob;Lcom/bumptech/glide/load/Encoder;Ljava/lang/Object;)V
astore 1
aload 0
getfield com/bumptech/glide/load/engine/DecodeJob/diskCacheProvider Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;
invokeinterface com/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider/getDiskCache()Lcom/bumptech/glide/load/engine/cache/DiskCache; 0
aload 0
getfield com/bumptech/glide/load/engine/DecodeJob/resultKey Lcom/bumptech/glide/load/engine/EngineKey;
aload 1
invokeinterface com/bumptech/glide/load/engine/cache/DiskCache/put(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/cache/DiskCache$Writer;)V 2
ldc "DecodeJob"
iconst_2
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L0
aload 0
ldc "Wrote transformed from source to cache"
lload 2
invokespecial com/bumptech/glide/load/engine/DecodeJob/logWithTimeAndKey(Ljava/lang/String;J)V
return
.limit locals 4
.limit stack 5
.end method

.method public cancel()V
aload 0
iconst_1
putfield com/bumptech/glide/load/engine/DecodeJob/isCancelled Z
aload 0
getfield com/bumptech/glide/load/engine/DecodeJob/fetcher Lcom/bumptech/glide/load/data/DataFetcher;
invokeinterface com/bumptech/glide/load/data/DataFetcher/cancel()V 0
return
.limit locals 1
.limit stack 2
.end method

.method public decodeFromSource()Lcom/bumptech/glide/load/engine/Resource;
.signature "()Lcom/bumptech/glide/load/engine/Resource<TZ;>;"
.throws java/lang/Exception
aload 0
aload 0
invokespecial com/bumptech/glide/load/engine/DecodeJob/decodeSource()Lcom/bumptech/glide/load/engine/Resource;
invokespecial com/bumptech/glide/load/engine/DecodeJob/transformEncodeAndTranscode(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;
areturn
.limit locals 1
.limit stack 2
.end method

.method public decodeResultFromCache()Lcom/bumptech/glide/load/engine/Resource;
.signature "()Lcom/bumptech/glide/load/engine/Resource<TZ;>;"
.throws java/lang/Exception
aload 0
getfield com/bumptech/glide/load/engine/DecodeJob/diskCacheStrategy Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
invokevirtual com/bumptech/glide/load/engine/DiskCacheStrategy/cacheResult()Z
ifne L0
aconst_null
astore 3
L1:
aload 3
areturn
L0:
invokestatic com/bumptech/glide/util/LogTime/getLogTime()J
lstore 1
aload 0
aload 0
getfield com/bumptech/glide/load/engine/DecodeJob/resultKey Lcom/bumptech/glide/load/engine/EngineKey;
invokespecial com/bumptech/glide/load/engine/DecodeJob/loadFromCache(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/Resource;
astore 3
ldc "DecodeJob"
iconst_2
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L2
aload 0
ldc "Decoded transformed from cache"
lload 1
invokespecial com/bumptech/glide/load/engine/DecodeJob/logWithTimeAndKey(Ljava/lang/String;J)V
L2:
invokestatic com/bumptech/glide/util/LogTime/getLogTime()J
lstore 1
aload 0
aload 3
invokespecial com/bumptech/glide/load/engine/DecodeJob/transcode(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;
astore 4
aload 4
astore 3
ldc "DecodeJob"
iconst_2
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L1
aload 0
ldc "Transcoded transformed from cache"
lload 1
invokespecial com/bumptech/glide/load/engine/DecodeJob/logWithTimeAndKey(Ljava/lang/String;J)V
aload 4
areturn
.limit locals 5
.limit stack 4
.end method

.method public decodeSourceFromCache()Lcom/bumptech/glide/load/engine/Resource;
.signature "()Lcom/bumptech/glide/load/engine/Resource<TZ;>;"
.throws java/lang/Exception
aload 0
getfield com/bumptech/glide/load/engine/DecodeJob/diskCacheStrategy Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
invokevirtual com/bumptech/glide/load/engine/DiskCacheStrategy/cacheSource()Z
ifne L0
aconst_null
areturn
L0:
invokestatic com/bumptech/glide/util/LogTime/getLogTime()J
lstore 1
aload 0
aload 0
getfield com/bumptech/glide/load/engine/DecodeJob/resultKey Lcom/bumptech/glide/load/engine/EngineKey;
invokevirtual com/bumptech/glide/load/engine/EngineKey/getOriginalKey()Lcom/bumptech/glide/load/Key;
invokespecial com/bumptech/glide/load/engine/DecodeJob/loadFromCache(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/Resource;
astore 3
ldc "DecodeJob"
iconst_2
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L1
aload 0
ldc "Decoded source from cache"
lload 1
invokespecial com/bumptech/glide/load/engine/DecodeJob/logWithTimeAndKey(Ljava/lang/String;J)V
L1:
aload 0
aload 3
invokespecial com/bumptech/glide/load/engine/DecodeJob/transformEncodeAndTranscode(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;
areturn
.limit locals 4
.limit stack 4
.end method
