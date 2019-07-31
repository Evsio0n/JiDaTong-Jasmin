.bytecode 50.0
.class public synchronized com/nd/schoollife/common/constant/ResultConst$ImageServer
.super java/lang/Object
.inner class public static ImageServer inner com/nd/schoollife/common/constant/ResultConst$ImageServer outer com/nd/schoollife/common/constant/ResultConst

.field public static 'imgServerResultMap' Ljava/util/Map; signature "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"

.method static <clinit>()V
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putstatic com/nd/schoollife/common/constant/ResultConst$ImageServer/imgServerResultMap Ljava/util/Map;
getstatic com/nd/schoollife/common/constant/ResultConst$ImageServer/imgServerResultMap Ljava/util/Map;
ldc_w 1040101
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
ldc "\u53c2\u6570md5\u503c\u9519\u8bef"
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
getstatic com/nd/schoollife/common/constant/ResultConst$ImageServer/imgServerResultMap Ljava/util/Map;
ldc_w 1040102
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
ldc "\u53c2\u6570filesize\u503c\u9519\u8bef"
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
getstatic com/nd/schoollife/common/constant/ResultConst$ImageServer/imgServerResultMap Ljava/util/Map;
ldc_w 1040103
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
ldc "\u53c2\u6570ticket\u503c\u9519\u8bef"
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
getstatic com/nd/schoollife/common/constant/ResultConst$ImageServer/imgServerResultMap Ljava/util/Map;
ldc_w 1040104
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
ldc "\u5206\u6bb5\u6570\u636e\u91cf\u4f4e\u4e8e\u670d\u52a1\u5668\u8bbe\u7f6e\u7684\u6700\u5c0f\u503c"
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
getstatic com/nd/schoollife/common/constant/ResultConst$ImageServer/imgServerResultMap Ljava/util/Map;
ldc_w 1040105
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
ldc "\u6587\u4ef6\u5927\u5c0f\u5927\u4e8e\u670d\u52a1\u5668\u8bbe\u7f6e\u7684\u6700\u5927\u503c"
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
getstatic com/nd/schoollife/common/constant/ResultConst$ImageServer/imgServerResultMap Ljava/util/Map;
ldc_w 1040106
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
ldc "\u56fe\u7247\u683c\u5f0f\u4e0d\u88ab\u652f\u6301"
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
getstatic com/nd/schoollife/common/constant/ResultConst$ImageServer/imgServerResultMap Ljava/util/Map;
ldc_w 1040107
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
ldc "\u6587\u4ef6\u4e0a\u4f20\u4e0d\u5b8c\u6574,\u8bf7\u91cd\u65b0\u4e0a\u4f20"
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
getstatic com/nd/schoollife/common/constant/ResultConst$ImageServer/imgServerResultMap Ljava/util/Map;
ldc_w 1040301
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
ldc "\u53c2\u6570key\u503c\u9519\u8bef"
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
getstatic com/nd/schoollife/common/constant/ResultConst$ImageServer/imgServerResultMap Ljava/util/Map;
ldc_w 1040302
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
ldc "\u56fe\u7247\u4e0d\u5b58\u5728"
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
getstatic com/nd/schoollife/common/constant/ResultConst$ImageServer/imgServerResultMap Ljava/util/Map;
ldc_w 1050101
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
ldc "\u6587\u4ef6\u5199\u5165\u5931\u8d25"
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
getstatic com/nd/schoollife/common/constant/ResultConst$ImageServer/imgServerResultMap Ljava/util/Map;
ldc_w 1050102
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
ldc "\u8bb0\u5f55\u5199\u5165\u5931\u8d25"
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
getstatic com/nd/schoollife/common/constant/ResultConst$ImageServer/imgServerResultMap Ljava/util/Map;
ldc_w 1050201
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
ldc "\u79d2\u4f20\u5931\u8d25\u3001\u670d\u52a1\u7aef\u6587\u4ef6\u4e0d\u5b58\u5728"
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
return
.limit locals 0
.limit stack 3
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method
